package edu.global.ex.mapper;

import static org.junit.jupiter.api.Assertions.*;

import java.util.List;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import edu.global.ex.vo.MemberVO;
import edu.global.ex.vo.OrderVO;

@SpringBootTest
class MypageMapperTest {
	
	@Autowired
	private MypageMapper mypageMapper;

	@Test
	void test() {
		
		List<OrderVO> order = mypageMapper.getOrder("user@naver.com");
		
		System.out.println(order);
	}

}
