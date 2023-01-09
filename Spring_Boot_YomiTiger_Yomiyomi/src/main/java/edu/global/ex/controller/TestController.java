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
	
	@GetMapping("/login")
	public String login() {
		log.info("/login()...");
		
		return "login";
	}

}
