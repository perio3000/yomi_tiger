package edu.global.ex.controller;

import lombok.extern.slf4j.Slf4j;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import edu.global.ex.service.LoginService;

@Slf4j
@RestController
public class RestfulLoginController {
	
	@Autowired
	private LoginService loginService;
	
	@GetMapping("/idcheck/{username}")
	public int idCheck(@PathVariable(name = "username") String username) {
		log.info("idCheck() .." + username);
		
		int rn = loginService.idCheck(username);
		System.out.println(rn);
		
		return rn;
	}

}
