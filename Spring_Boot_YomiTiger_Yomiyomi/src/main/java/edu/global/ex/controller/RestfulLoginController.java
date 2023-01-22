package edu.global.ex.controller;

import lombok.extern.slf4j.Slf4j;

import java.io.IOException;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.client.RestTemplate;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;

import edu.global.ex.security.KakaoProfile;
import edu.global.ex.security.OAuthToken;
import edu.global.ex.service.LoginService;
import edu.global.ex.vo.MemberVO;

@Slf4j
@RestController
public class RestfulLoginController {
	
	@Autowired
	private LoginService loginService;
	
	@Autowired
	private AuthenticationManager authenticationManager;
	
	@GetMapping("/idcheck/{username}")
	public int idCheck(@PathVariable(name = "username") String username) {
		log.info("idCheck() .." + username);
		
		int rn = loginService.idCheck(username);
		System.out.println(rn);
		
		return rn;
	}
	
	//회원가입
	@PostMapping("/signupMember")
	public ResponseEntity<String> signupMember(@RequestBody MemberVO memberVO) {
		log.info("signupMember() ..");
		ResponseEntity<String> entity = null;
		System.out.println(memberVO);
		try {
			loginService.signupMember(memberVO);

			entity = new ResponseEntity<String>("SUCCESS", HttpStatus.OK);

		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<String>(e.getMessage(), HttpStatus.BAD_REQUEST);
		}

		return entity;
	}
	
	//카카오 인증
	@GetMapping("/auth/kakao/callback")
	public @ResponseBody void authKakaoCallback(String code, HttpServletResponse httpServletResponse) { // data를 리턴해주는 컨트롤러 함수
		log.info("authKakaoCallback() ..");
		
		//post방식으로 key=value 데이터 요청(카카오 쪽으로)
		RestTemplate rt = new RestTemplate();
		
		//HttpHeader 오브젝트 생성
		HttpHeaders headers = new HttpHeaders();
		headers.add("Content-type", "application/x-www-form-urlencoded;charset=utf-8");
		
		//HttpBody 오브젝트 생성
		MultiValueMap<String, String> params = new LinkedMultiValueMap<>();
		params.add("grant_type", "authorization_code");
		params.add("client_id", "bc4cda6f8f7a42949e52b295bbbaca0f");
		params.add("redirect_uri", "http://localhost:8282/auth/kakao/callback");
		params.add("code", code);
		
		//HttpHeader와 body를 하나의 오브젝트에 담기
		HttpEntity<MultiValueMap<String, String>> kakaoTokenRequest = new HttpEntity<>(params, headers);
		
		//Http 요청하기 - Post방식으로 - 그리고 response 변수의 응답 받음
		ResponseEntity<String> response = rt.exchange(
					"https://kauth.kakao.com/oauth/token",
					HttpMethod.POST,
					kakaoTokenRequest,
					String.class
				);
		
		//ObjectMapper
		ObjectMapper objectMapper = new ObjectMapper();
		OAuthToken oAuthToken = null;
		try {
			oAuthToken = objectMapper.readValue(response.getBody(), OAuthToken.class);
		} catch (JsonMappingException e) {
			e.printStackTrace();
		} catch (JsonProcessingException e) {
			e.printStackTrace();
		}
		
		System.out.println("카카오 엑세스 토큰 : " + oAuthToken.getAccess_token());
		
		//post방식으로 key=value 데이터 요청(카카오 쪽으로)
		RestTemplate rt2 = new RestTemplate();
		
		//HttpHeader 오브젝트 생성
		HttpHeaders headers2 = new HttpHeaders();
		headers2.add("Authorization", "Bearer " + oAuthToken.getAccess_token());
		headers2.add("Content-type", "application/x-www-form-urlencoded;charset=utf-8");
		
		HttpEntity<MultiValueMap<String, String>> kakaoProfileRequest = new HttpEntity<>(headers2);
		
		//Http 요청하기 - Post방식으로 - 그리고 response 변수의 응답 받음
		ResponseEntity<String> response2 = rt2.exchange(
					"https://kapi.kakao.com/v2/user/me",
					HttpMethod.POST,
					kakaoProfileRequest,
					String.class
				);

		//ObjectMapper
		ObjectMapper objectMapper2 = new ObjectMapper();
		KakaoProfile kakaoProfile = null;
		try {
			kakaoProfile = objectMapper2.readValue(response2.getBody(), KakaoProfile.class);
		} catch (JsonMappingException e) {
			e.printStackTrace();
		} catch (JsonProcessingException e) {
			e.printStackTrace();
		}
		
		String username = kakaoProfile.getKakao_account().getEmail();
		String password = String.valueOf(kakaoProfile.getId());
		String name = kakaoProfile.getProperties().getNickname();
		
		System.out.println("username : " + username);
		System.out.println("password " + password);
		System.out.println("name : " + name);
		
		MemberVO memberVO = new MemberVO();
		
		memberVO.setUsername(username);
		memberVO.setPassword(password);
		memberVO.setName(name);
		
		//회원가입
		if(loginService.findMember(username) == 0) {
			loginService.signupSocialLogin(memberVO);
		}
		
		//로그인
		Authentication authentication = authenticationManager.authenticate(new UsernamePasswordAuthenticationToken(memberVO.getUsername(), memberVO.getPassword()));
		SecurityContextHolder.getContext().setAuthentication(authentication);
		
		String redirect_uri="/";
		try {
			httpServletResponse.sendRedirect(redirect_uri);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

}
