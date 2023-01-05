package edu.global.ex.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class TestController {
	
	@GetMapping("/test")
	public String home() {
		log.info("/test");
		
		return "test";
	}
	@GetMapping("/test2")
	public String home2() {
		log.info("/test2");
		
		return "test_jh";
	}

}
