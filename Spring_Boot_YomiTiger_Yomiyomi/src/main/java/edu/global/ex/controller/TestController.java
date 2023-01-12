package edu.global.ex.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class TestController {

	@GetMapping("/mypagetest")
	public String mypagetest() {
		log.info("/mypagetest");

		return "mypage";
	}
	//헤더
	@GetMapping("/header")
	public String header() {
		log.info("/header()...");

		return "header";
	}
	//로그인
	@GetMapping("/login")
	public String login() {
		log.info("/login()...");

		return "login";
	}

	@GetMapping("/pointtest")
	public String pointtest() {
		log.info("/pointtest");

		return "point";
	}
	
	@GetMapping("/orderdeliverylisttest")
	public String orderdeliverylisttest() {
		log.info("/orderdeliverylisttest");
		
		return "orderdeliverylist";
	}
	
	@GetMapping("/activitylisttest")
	public String activitylisttest() {
		log.info("/activitylisttest");
		
		return "activitylist";
	}
	
	@GetMapping("/inquirylisttest")
	public String inquirylisttest() {
		log.info("/inquirylisttest");
		
		return "inquirylist";
	}
	
	@GetMapping("/userupdatetest")
	public String userupdatetest() {
		log.info("/userupdatetest");
		
		return "userupdate";
	}
	
	@GetMapping("/librarytest")
	public String librarytest() {
		log.info("/librarytest");
		
		return "library";
	}
	
	// 1:1 문의하기
	@GetMapping("/1by1qna")
	public String onebyoneqna() {
		log.info("/1by1qna");
		
		return "1by1qna";

	}

	@GetMapping("/qnalist")
	public String qnalist() {
		log.info("/qnalist");
		
		return "qnalist";

	}

	// 자주 묻는 질문
	@GetMapping("/FAQ")
	public String FAQ() {
		log.info("/FAQ");
			
		return "FAQ";
	}
	
	//아이디 비번 찾기
	@GetMapping("/findIDPW")
	public String findIDPW() {
		log.info("/findIDPW()...");

		return "findIDPW";
	}
	
	//장바구니
	@GetMapping("/cart")
	public String cart() {
		log.info("/cart()...");

		return "cart";
	}
}
