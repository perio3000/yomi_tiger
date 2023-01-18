package edu.global.ex.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import edu.global.ex.vo.MemberVO;
import edu.global.ex.vo.OrderVO;

@Mapper
public interface MypageMapper {
	
	MemberVO getUser(String username);
	
	List<OrderVO> getOrder(String username);
	
	List<OrderVO> getOrderSearch(String username, String startdate, String enddate);
	
}
