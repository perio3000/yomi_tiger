package edu.global.ex.controller;

import lombok.extern.slf4j.Slf4j;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import edu.global.ex.service.MypageService;
import edu.global.ex.vo.BoardVO;
import edu.global.ex.vo.MemberVO;

@Slf4j
@RestController
public class RestfulMypageController {
	
	@Autowired
	private MypageService mypageService;
	
	@GetMapping("/inquiry/{group}")
	public List<BoardVO> list(Authentication authentication, @PathVariable(name = "group") int reply_group) {
		log.info("list() ..");
		System.out.println(reply_group);
		System.out.println(authentication.getName());

		return mypageService.getInquiry(authentication.getName(), reply_group);
	}

	@PutMapping("/userUpdate/{id}")
	public int userUpdate(@RequestBody MemberVO memberVO) {
		log.info("userUpdate() ..");
		log.info("userUpdate() .." + memberVO);
		
		int rn = mypageService.userUpdate(memberVO);
		
		return rn;
	}
	

}
