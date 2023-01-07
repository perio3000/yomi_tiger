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
	
	// 1:1 문의내역 확인
	@GetMapping("/test3")
	public String home3() {
		log.info("/test3");
		
		return "test_jh2";
	}
}
