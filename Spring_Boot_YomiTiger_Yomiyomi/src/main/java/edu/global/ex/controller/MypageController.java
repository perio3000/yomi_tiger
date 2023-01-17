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
	
	//http://localhost:8282/mypageorderdeliverylist?username=user@naver.com
	@GetMapping("/mypageorderdeliverylist")
	public String mypageorderdeliverylist(Model model, MemberVO memberVO) {
		log.info("mypageorderdeliverylist..");
		
		model.addAttribute("member", mypageService.getUser(memberVO.getUsername()));
		model.addAttribute("order", mypageService.getOrder(memberVO.getUsername()));
		
		System.out.println(mypageService.getOrder(memberVO.getUsername()));
		
		return "orderdeliverylist";
	}
	
	@GetMapping("/mypagerorderlistsearch")
	public String mypagerorderlistsearch(Model model, MemberVO memberVO, String username, String startdate, String enddate) {
		log.info("mypagerorderlistsearch..");
		
		model.addAttribute("member", mypageService.getUser(memberVO.getUsername()));
		model.addAttribute("order", mypageService.getOrderSearch(memberVO.getUsername(), startdate, enddate));
		
		System.out.println(mypageService.getOrder(memberVO.getUsername()));
		
		return "orderdeliverylist";
	}
	
	@GetMapping("/mypageuserupdate")
	public String mypageuserupdate(Model model, MemberVO memberVO) {
		log.info("mypageuserupdate..");
		
		model.addAttribute("member", mypageService.getUser(memberVO.getUsername()));
		
		return "userupdate";
	}
}
