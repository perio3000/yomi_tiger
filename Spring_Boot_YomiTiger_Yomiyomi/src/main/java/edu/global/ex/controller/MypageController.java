package edu.global.ex.controller;

import lombok.extern.slf4j.Slf4j;

import java.security.Principal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import edu.global.ex.service.MypageService;
import edu.global.ex.vo.BoardVO;
import edu.global.ex.vo.MemberVO;

@Slf4j
@Controller
@RequestMapping("/mypage")
public class MypageController {

	@Autowired
	private MypageService mypageService;
	
	//메인
	@GetMapping("/main")
	public String main(Model model, MemberVO memberVO, Authentication authentication, Principal principal) {
		log.info("main..");
		
		model.addAttribute("member", mypageService.getUser(authentication.getName()));
		
		return "mypage";
	}
	
	//주문배송목록
	//http://localhost:8282/mypage/orderdeliverylist?username=user@naver.com
	@GetMapping("/orderdeliverylist")
	public String orderdeliverylist(Model model, MemberVO memberVO, Authentication authentication, Principal principal) {
		log.info("orderdeliverylist..");
		
		model.addAttribute("member", mypageService.getUser(authentication.getName()));
		model.addAttribute("order", mypageService.getOrder(authentication.getName()));
		
		return "orderdeliverylist";
	}
	
	@GetMapping("/orderlistsearch")
	public String orderlistsearch(Model model, MemberVO memberVO, String username, String startdate, String enddate, Authentication authentication, Principal principal) {
		log.info("orderlistsearch..");
		
		model.addAttribute("member", mypageService.getUser(authentication.getName()));
		model.addAttribute("order", mypageService.getOrderSearch(authentication.getName(), startdate, enddate));
		
		return "orderdeliverylist";
	}
	
	//포인트페이지
	@GetMapping("/point")
	public String point(Model model, MemberVO memberVO, Authentication authentication, Principal principal) {
		log.info("point..");
		
		model.addAttribute("member", mypageService.getUser(authentication.getName()));
		model.addAttribute("point", mypageService.getPointList(authentication.getName()));
		
		return "point";
	}
	
	@GetMapping("/pointsearch")
	public String pointsearch(Model model, MemberVO memberVO, String username, String startdate, String enddate, Authentication authentication, Principal principal) {
		log.info("pointsearch..");
		
		model.addAttribute("member", mypageService.getUser(authentication.getName()));
		model.addAttribute("point", mypageService.getPointSearch(authentication.getName(), startdate, enddate));
		
		return "point";
	}
	
	//활동내역
	@GetMapping("/activitylist")
	public String activitylist(Model model, MemberVO memberVO, Authentication authentication, Principal principal, BoardVO boardVO) {
		log.info("activitylist..");
		
		model.addAttribute("member", mypageService.getUser(authentication.getName()));
		model.addAttribute("review", mypageService.getReviewList(authentication.getName()));
		model.addAttribute("reply", mypageService.getReplyList(authentication.getName()));
		
		return "activitylist";
	}
	
	//문의내역
	@GetMapping("/inquirylist")
	public String inquirylist(Model model, MemberVO memberVO, Authentication authentication, Principal principal) {
		log.info("inquirylist..");
		
		model.addAttribute("member", mypageService.getUser(authentication.getName()));
		model.addAttribute("inquiry", mypageService.getInquiryList(authentication.getName()));
		
		return "inquirylist";
	}
	
	//회원정보
	@GetMapping("/userupdate")
	public String userupdate(Model model, MemberVO memberVO, Authentication authentication, Principal principal) {
		log.info("userupdate..");
		
		model.addAttribute("member", mypageService.getUser(authentication.getName()));
		
		return "userupdate";
	}
	
	//서재
	@GetMapping("/library")
	public String library(Model model, MemberVO memberVO, Authentication authentication, Principal principal) {
		log.info("library..");
		
		
		
		return "library";
	}
	
	
}
