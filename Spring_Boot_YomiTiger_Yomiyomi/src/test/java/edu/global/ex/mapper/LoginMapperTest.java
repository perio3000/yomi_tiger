package edu.global.ex.mapper;

import static org.junit.jupiter.api.Assertions.*;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import edu.global.ex.vo.MemberVO;

@SpringBootTest
class LoginMapperTest {
	
	@Autowired
	private LoginMapper loginMapper;

	@Test
	void test() {
		
		MemberVO user = loginMapper.getUser("user@naver.com");
		
		System.out.println(user);
		
	}

}
