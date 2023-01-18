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
	
	//메인
	@GetMapping("/mypage_main")
	public String mypage_main(Model model, MemberVO memberVO) {
		log.info("mypage_main..");
		
		model.addAttribute("member", mypageService.getUser(memberVO.getUsername()));
		
		return "mypage";
	}
	
	//주문배송목록
	//http://localhost:8282/mypage_orderdeliverylist?username=user@naver.com
	@GetMapping("/mypage_orderdeliverylist")
	public String mypage_orderdeliverylist(Model model, MemberVO memberVO) {
		log.info("mypage_orderdeliverylist..");
		
		model.addAttribute("member", mypageService.getUser(memberVO.getUsername()));
		model.addAttribute("order", mypageService.getOrder(memberVO.getUsername()));
		
		System.out.println(mypageService.getOrder(memberVO.getUsername()));
		
		return "orderdeliverylist";
	}
	
	@GetMapping("/mypage_orderlistsearch")
	public String mypage_orderlistsearch(Model model, MemberVO memberVO, String username, String startdate, String enddate) {
		log.info("mypage_orderlistsearch..");
		
		model.addAttribute("member", mypageService.getUser(memberVO.getUsername()));
		model.addAttribute("order", mypageService.getOrderSearch(memberVO.getUsername(), startdate, enddate));
		
		System.out.println(mypageService.getOrder(memberVO.getUsername()));
		
		return "orderdeliverylist";
	}
	
	//포인트페이지
	@GetMapping("/mypage_point")
	public String mypage_point(Model model, MemberVO memberVO) {
		log.info("mypage_point..");
		
		
		
		return "point";
	}
	
	//활동내역
	@GetMapping("/mypage_activitylist")
	public String mypage_activitylist(Model model, MemberVO memberVO) {
		log.info("mypage_activitylist..");
		
		
		
		return "activitylist";
	}
	
	//활동내역
	@GetMapping("/mypage_inquirylist")
	public String mypage_inquirylist(Model model, MemberVO memberVO) {
		log.info("mypage_inquirylist..");
		
		
		
		return "inquirylist";
	}
	
	//회원정보
	@GetMapping("/mypage_userupdate")
	public String mypage_userupdate(Model model, MemberVO memberVO) {
		log.info("mypage_userupdate..");
		
		model.addAttribute("member", mypageService.getUser(memberVO.getUsername()));
		
		return "userupdate";
	}
	
	//서재
	@GetMapping("/mypage_library")
	public String mypage_library(Model model, MemberVO memberVO) {
		log.info("mypage_library..");
		
		
		
		return "library";
	}
	
	
}
