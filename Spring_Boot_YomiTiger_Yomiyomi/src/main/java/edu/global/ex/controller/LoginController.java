package edu.global.ex.controller;

import lombok.extern.slf4j.Slf4j;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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


}
