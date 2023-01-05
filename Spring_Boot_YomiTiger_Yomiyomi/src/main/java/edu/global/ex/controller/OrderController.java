package edu.global.ex.controller;

import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Slf4j
@Controller
public class OrderController {
	
	@GetMapping("/test")
	public String home() {
		log.info("/test");
		
		return "test";
	}

}
