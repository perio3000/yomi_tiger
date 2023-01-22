package edu.global.ex.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import edu.global.ex.vo.BoardVO;
import edu.global.ex.vo.MemberVO;
import edu.global.ex.vo.OrderVO;
import edu.global.ex.vo.PointVO;

@Mapper
public interface MypageMapper {
	
	MemberVO getUser(String username);
	
	List<OrderVO> getOrder(String username);
	
	List<OrderVO> getOrderSearch(String username, String startdate, String enddate);
	
	List<PointVO> getPointList(String username);
	
	List<PointVO> getPointSearch(String username, String startdate, String enddate);
	
	List<BoardVO> getInquiryList(String username);
	
	List<BoardVO> getInquiry(String username, int reply_group);
	
	List<BoardVO> getReviewList(String username);
	
	List<BoardVO> getReplyList(String username);
	
	int userUpdate(MemberVO memberVO);
}
