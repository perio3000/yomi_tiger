package edu.global.ex.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class TestController {

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

	
	
	// 1:1 문의하기
	@GetMapping("/qna")
	public String qna() {
		log.info("/qna");
		
		return "qna";

	}

	// 자주 묻는 질문
	@GetMapping("/FAQ")
	public String FAQ() {
		log.info("/FAQ");
			
		return "FAQ";
	}
	
	// 고객센터
	@GetMapping("/customercenter")
	public String custmoercenter() {
		log.info("/customercenter");
				
		return "customercenter";
	}
	
	// 공지사항
	@GetMapping("/announcement")
	public String announcement() {
		log.info("/announcement");
				
		return "announcement";
	}
	
	// 오프라인 매장 위치
	@GetMapping("/location")
	public String location() {
		log.info("/location");
				
		return "location";
	}
	
	// 이벤트 페이지
	@GetMapping("/events")
	public String events() {
		log.info("/events");
				
		return "events";
	}
	
	// 푸터 (굉장히 간단한데 이래도 되나요)
	@GetMapping("/footer")
	public String footer() {
		log.info("/footer");
		
		return "footer";
	}
	
	// 공지사항 조회
	@GetMapping("/announceread")
	public String announceread() {
		log.info("/announceread");
		
		return "announceread";
	}
	
	// 회원가입
	@GetMapping("/signup")
	public String signup() {
		log.info("/signup");
		
		return "signup";
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
	//결제하기
	@GetMapping("/pay")
	public String pay() {
		log.info("/pay()...");

		return "pay";
	}
	
	//메인
	@GetMapping("/")
	public String main() {
		log.info("/main()...");

		return "main";
	}
}
	
