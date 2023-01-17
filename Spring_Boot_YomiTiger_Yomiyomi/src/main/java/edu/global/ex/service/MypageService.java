package edu.global.ex.service;

import java.util.List;

import edu.global.ex.vo.MemberVO;
import edu.global.ex.vo.OrderVO;

public interface MypageService {
	
	MemberVO getUser(String username);
	
	List<OrderVO> getOrder(String username);
	
	List<OrderVO> getOrderSearch(String username, String startdate, String enddate);
}
