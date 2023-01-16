package edu.global.ex.controller;

import lombok.extern.slf4j.Slf4j;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import edu.global.ex.service.MypageService;
import edu.global.ex.vo.MemberVO;

@Slf4j
@Controller
public class MypageController {

	@Autowired
	private MypageService mypageService;
	
	@GetMapping("/mypagemain")
	public String mypagemain(Model model, MemberVO memberVO) {
		log.info("mypagemain..");
		
		model.addAttribute("member", mypageService.getUser(memberVO.getUsername()));
		
		return "mypage";
	}
	
	@GetMapping("/mypageuserupdate")
	public String mypageuserupdate(Model model, MemberVO memberVO) {
		log.info("mypageuserupdate..");
		
		model.addAttribute("member", mypageService.getUser(memberVO.getUsername()));
		
		return "userupdate";
	}
}
