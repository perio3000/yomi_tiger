package edu.global.ex.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import edu.global.ex.service.ListService;
import edu.global.ex.vo.ItemVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/admin")
public class AdminController {
	
	@Autowired
	private ListService listService;

	@GetMapping("/home")
	public String adminHome() {
		log.info("/adminHome..");
		
		return "adminHome";
	}
	
	@GetMapping("bookregister")
	public String adminBookRegister() {
		log.info("/adminBookRegister..");
		
		return "adminBookRegister";
	}
	
	@PostMapping("/bookinsert")
	public String adminBookInsert(ItemVO itemVO) {
		log.info("/adminBookInsert..");
		
		int rn = listService.insertBook(itemVO);
		
		System.out.println(rn);
		
		return "adminBookRegister";
	}
}
