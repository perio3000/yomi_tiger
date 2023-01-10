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


	// 1:1 문의하기
	@GetMapping("/test2")
	public String home2() {
		log.info("/test2");

		return "test_jh";
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
	
	// 1:1 문의하기
	@GetMapping("/1by1qna")
	public String onebyoneqna() {
		log.info("/1by1qna");
		
		return "1by1qna";

	}

	// 1:1 문의내역 확인
	@GetMapping("/test3")
	public String home3() {
		log.info("/test3");

		return "test_jh2";
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
}
