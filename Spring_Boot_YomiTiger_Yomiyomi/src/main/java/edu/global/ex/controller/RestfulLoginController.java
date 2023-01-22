package edu.global.ex.controller;

import lombok.extern.slf4j.Slf4j;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import edu.global.ex.service.LoginService;
import edu.global.ex.vo.BoardVO;
import edu.global.ex.vo.MemberVO;

@Slf4j
@RestController
public class RestfulLoginController {
	
	@Autowired
	private LoginService loginService;
	
	@GetMapping("/idcheck/{username}")
	public int idCheck(@PathVariable(name = "username") String username) {
		log.info("idCheck() .." + username);
		
		int rn = loginService.idCheck(username);
		System.out.println(rn);
		
		return rn;
	}
	
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

}
