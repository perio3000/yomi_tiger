package edu.global.ex.controller;

import lombok.extern.slf4j.Slf4j;

import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.mail.MessagingException;
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
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.client.RestTemplate;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;

import edu.global.ex.security.GoogleProfile;
import edu.global.ex.security.KakaoProfile;
import edu.global.ex.security.NaverProfile;
import edu.global.ex.security.OAuthToken;
import edu.global.ex.service.EmailService;
import edu.global.ex.service.LoginService;
import edu.global.ex.vo.MemberVO;

@Slf4j
@RestController
public class RestfulLoginController {
	
	@Autowired
	private LoginService loginService;
	
	@Autowired
	private AuthenticationManager authenticationManager;
	
	@Autowired
	private PasswordEncoder passwordEncoder;
	
	@Autowired
	private EmailService emailService;

	
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
	
	@PostMapping("/findId")
	public List<MemberVO> findId(@RequestBody MemberVO memberVO) {
		log.info("findId() ..");
		
		return loginService.findId(memberVO);
	}
	
	@GetMapping("/mailConfirm/{email}")
	public String mailConfirm(@PathVariable(name = "email") String email) throws UnsupportedEncodingException, MessagingException {
		log.info("mailConfirm() ..");
		
		String code = emailService.sendEmail(email);
		String encodedCode = passwordEncoder.encode(code);

		return encodedCode;
	}
	
	@PostMapping("/confirmMail")
	public String confirm(@RequestBody MemberVO memberVO ) {
		log.info("confirm() ..");
		
		System.out.println(memberVO.getVeriNum());
		System.out.println(memberVO.getEncodedCode());
		
		if(passwordEncoder.matches(memberVO.getVeriNum(), memberVO.getEncodedCode()) == true) {
			return "true";
		}
		else {
			return "false";
		}
	}
	
	@PostMapping("/pwCheck")
	public String pwCheck(@RequestBody MemberVO memberVO) {
		log.info("pwCheck() ..");
		
		if(passwordEncoder.matches(memberVO.getPassword(), loginService.pwCheck(memberVO).getPassword()) == true) {
			return "true";
		}
		else {
			return "false";
		}
	}
	
	@PutMapping("/pwChange")
	public int pwChange(@RequestBody MemberVO memberVO) {
		log.info("pwChange() ..");
		
		System.out.println(memberVO.getUsername());
		
		return loginService.pwChange(memberVO);
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
		
		String username = kakaoProfile.getKakao_account().getEmail() + "_kakao";
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
			
			httpServletResponse.setContentType("text/html; charset=UTF-8");
			try {
				PrintWriter out = httpServletResponse.getWriter();
				
				out.println("<script>alert('카카오톡 계정으로 회원가입이 되었습니다.'); window.location.href='/login'</script>");
				out.flush();
			} catch (IOException e1) {
				e1.printStackTrace();
			}
		}else {
			//로그인			
			Authentication authentication = authenticationManager.authenticate(new UsernamePasswordAuthenticationToken(memberVO.getUsername(), memberVO.getPassword()));
			SecurityContextHolder.getContext().setAuthentication(authentication);
			
			httpServletResponse.setContentType("text/html; charset=UTF-8");
			try {
				PrintWriter out = httpServletResponse.getWriter();
				
				out.println("<script>alert('카카오톡 계정으로 로그인했습니다.'); window.location.href='/'</script>");
				out.flush();
			} catch (IOException e1) {
				e1.printStackTrace();
			}
		}
		
	}
	
	//네이버 인증
	@GetMapping("/auth/naver/callback")
	public @ResponseBody void authNaverCallback(String code, String state, HttpServletResponse httpServletResponse) {
		log.info("authNaverCallback() ..");
		
		RestTemplate rt = new RestTemplate();
		
		//HttpHeader 오브젝트 생성
		HttpHeaders headers = new HttpHeaders();
		headers.add("Content-type", "application/x-www-form-urlencoded;charset=utf-8");
		
		//HttpBody 오브젝트 생성
		MultiValueMap<String, String> params = new LinkedMultiValueMap<>();
		params.add("grant_type", "authorization_code");
		params.add("client_id", "f12Ftt_0n5ohdIkldJsh");
		params.add("client_secret", "I6JoPPRbqf");
		params.add("code", code);
		params.add("state", state);
		
		//HttpHeader와 body를 하나의 오브젝트에 담기
		HttpEntity<MultiValueMap<String, String>> naverTokenRequest = new HttpEntity<>(params, headers);
		
		//Http 요청하기 - Post방식으로 - 그리고 response 변수의 응답 받음
		ResponseEntity<String> response = rt.exchange(
					"https://nid.naver.com/oauth2.0/token",
					HttpMethod.POST,
					naverTokenRequest,
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
		
		System.out.println("네이버 엑세스 토큰 : " + oAuthToken.getAccess_token());
		
		//post방식으로 key=value 데이터 요청(카카오 쪽으로)
		RestTemplate rt2 = new RestTemplate();
		
		//HttpHeader 오브젝트 생성
		HttpHeaders headers2 = new HttpHeaders();
		headers2.add("Authorization", "Bearer " + oAuthToken.getAccess_token());
		headers2.add("Content-type", "application/x-www-form-urlencoded;charset=utf-8");
		
		HttpEntity<MultiValueMap<String, String>> naverProfileRequest = new HttpEntity<>(headers2);
		
		//Http 요청하기 - Post방식으로 - 그리고 response 변수의 응답 받음
		ResponseEntity<String> response2 = rt2.exchange(
					"https://openapi.naver.com/v1/nid/me",
					HttpMethod.POST,
					naverProfileRequest,
					String.class
				);

		System.out.println(response2);
		//ObjectMapper
		ObjectMapper objectMapper2 = new ObjectMapper();
		NaverProfile naverProfile = null;
		try {
			naverProfile = objectMapper2.readValue(response2.getBody(), NaverProfile.class);
		} catch (JsonMappingException e) {
			e.printStackTrace();
		} catch (JsonProcessingException e) {
			e.printStackTrace();
		}
		
		String username = naverProfile.getResponse().getEmail() + "_naver";
		String password = naverProfile.getResponse().getId();
		String name = naverProfile.getResponse().getName();
		
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
			
			httpServletResponse.setContentType("text/html; charset=UTF-8");
			try {
				PrintWriter out = httpServletResponse.getWriter();
				
				out.println("<script>alert('네이버 계정으로 회원가입이 되었습니다.'); window.location.href='/login'</script>");
				out.flush();
			} catch (IOException e1) {
				e1.printStackTrace();
			}
		}else {
			//로그인			
			Authentication authentication = authenticationManager.authenticate(new UsernamePasswordAuthenticationToken(memberVO.getUsername(), memberVO.getPassword()));
			SecurityContextHolder.getContext().setAuthentication(authentication);
			
			httpServletResponse.setContentType("text/html; charset=UTF-8");
			try {
				PrintWriter out = httpServletResponse.getWriter();
				
				out.println("<script>alert('네이버 계정으로 로그인했습니다.'); window.location.href='/'</script>");
				out.flush();
			} catch (IOException e1) {
				e1.printStackTrace();
			}
		}

	}

	//구글 인증
	@GetMapping("login/oauth2/code/google")
	public @ResponseBody void authGoogleCallback(String code, HttpServletResponse httpServletResponse) {
		log.info("authGoogleCallback() ..");
		
		RestTemplate rt = new RestTemplate();
		
		//HttpHeader 오브젝트 생성
		HttpHeaders headers = new HttpHeaders();
		headers.add("Content-type", "application/x-www-form-urlencoded;charset=utf-8");
		
		//HttpBody 오브젝트 생성
		MultiValueMap<String, String> params = new LinkedMultiValueMap<>();
		params.add("code", code);
		params.add("client_id", "305589923343-id0m33jrcjjgfv985bbj9rtgc0qc8vul.apps.googleusercontent.com");
		params.add("client_secret", "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");
		params.add("redirect_uri", "http://localhost:8282/login/oauth2/code/google");
		params.add("grant_type", "authorization_code");
		
		//HttpHeader와 body를 하나의 오브젝트에 담기
		HttpEntity<MultiValueMap<String, String>> googleTokenRequest = new HttpEntity<>(params, headers);
		
		//Http 요청하기 - Post방식으로 - 그리고 response 변수의 응답 받음
		ResponseEntity<String> response = rt.exchange(
					"https://www.googleapis.com/oauth2/v4/token",
					HttpMethod.POST,
					googleTokenRequest,
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
		
		System.out.println("구글 엑세스 토큰 : " + oAuthToken.getAccess_token());
		
		RestTemplate rt2 = new RestTemplate();
		
		//HttpHeader 오브젝트 생성
		HttpHeaders headers2 = new HttpHeaders();
		headers2.add("Authorization", "Bearer " + oAuthToken.getAccess_token());
//		headers2.add("Content-type", "application/x-www-form-urlencoded;charset=utf-8");
		
		HttpEntity<MultiValueMap<String, String>> googleProfileRequest = new HttpEntity<>(headers2);
		
		//Http 요청하기 - Post방식으로 - 그리고 response 변수의 응답 받음
		ResponseEntity<String> response2 = rt2.exchange(
					"https://www.googleapis.com/oauth2/v1/userinfo?access_token="+oAuthToken.getAccess_token(),
					HttpMethod.GET,
					googleProfileRequest,
					String.class
				);
		
		System.out.println(response2);
		
		//ObjectMapper
		ObjectMapper objectMapper2 = new ObjectMapper();
		GoogleProfile googleProfile = null;
		try {
			googleProfile = objectMapper2.readValue(response2.getBody(), GoogleProfile.class);
			System.out.println(googleProfile);
		} catch (JsonMappingException e) {
			e.printStackTrace();
		} catch (JsonProcessingException e) {
			e.printStackTrace();
		}
		
		String username = googleProfile.getEmail()+"_google";
		String password = googleProfile.getId();
		String name = googleProfile.getName();
		
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
			
			httpServletResponse.setContentType("text/html; charset=UTF-8");
			try {
				PrintWriter out = httpServletResponse.getWriter();
				
				out.println("<script>alert('구글 계정으로 회원가입이 되었습니다.'); window.location.href='/login'</script>");
				out.flush();
			} catch (IOException e1) {
				e1.printStackTrace();
			}
		}else {
			//로그인
			
			Authentication authentication = authenticationManager.authenticate(new UsernamePasswordAuthenticationToken(memberVO.getUsername(), memberVO.getPassword()));
			SecurityContextHolder.getContext().setAuthentication(authentication);
			
			httpServletResponse.setContentType("text/html; charset=UTF-8");
			try {
				PrintWriter out = httpServletResponse.getWriter();
				
				out.println("<script>alert('구글 계정으로 로그인했습니다.'); window.location.href='/'</script>");
				out.flush();
			} catch (IOException e1) {
				e1.printStackTrace();
			}
		}

	}

}
