package edu.global.ex.controller;

import lombok.extern.slf4j.Slf4j;

import java.security.Principal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import edu.global.ex.service.LoginService;
import edu.global.ex.vo.MemberVO;

@Slf4j
@Controller
@RequestMapping("/member")
public class LoginController {
	
	@Autowired
	private LoginService loginService;
	
	@PostMapping("/user")
	public String getUser(Model model, MemberVO memberVO) {
		log.info("/member/user..");
		
		model.addAttribute("member", loginService.getUser(memberVO.getUsername()));
		
		System.out.println(loginService.getUser(memberVO.getUsername()));
		
		return "redirect:/mypagetest";
	}

	//회원가입
	@GetMapping("/signup")
	public String signup() {
		log.info("signup..");
		
		return "signup";
	}
	
	//아이디 비번 찾기
	@GetMapping("/findIDPW")
	public String findIDPW() {
		log.info("/findIDPW()...");

		return "findIDPW";
	}
	
	//아이디 비번 찾기
	@GetMapping("/pwChange")
	public String pwChange() {
		log.info("/pwChange()...");

		return "pwchange";
	}
	
	//아이디 비번 찾기
	@GetMapping("/pwCheck")
	public String pwCheck() {
		log.info("/pwCheck()...");

		return "pwcheck";
	}

}
