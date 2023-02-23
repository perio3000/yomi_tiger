package edu.global.ex.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import edu.global.ex.mapper.MypageMapper;
import edu.global.ex.vo.BoardVO;
import edu.global.ex.vo.MemberVO;
import edu.global.ex.vo.OrderVO;
import edu.global.ex.vo.PointVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class MypageServiceImpl implements MypageService{
	
	@Autowired
	private MypageMapper mypageMapper;
	
	@Autowired
    private PasswordEncoder passwordEncoder;
	
	@Override
	public MemberVO getUser(String username) {
		log.info("getUser()..");
		
		return mypageMapper.getUser(username);
	}

	@Override
	public List<OrderVO> getOrder(String username) {
		log.info("getOrder()..");
		
		return mypageMapper.getOrder(username);
	}

	@Override
	public List<OrderVO> getOrderSearch(String username, String startdate, String enddate) {
		log.info("getOrderSearch()..");
		
		return mypageMapper.getOrderSearch(username, startdate, enddate);
	}

	@Override
	public List<PointVO> getPointList(String username) {
		log.info("getOrder()..");
		
		return mypageMapper.getPointList(username);
	}

	@Override
	public List<PointVO> getPointSearch(String username, String startdate, String enddate) {
		log.info("getOrderSearch()..");
		
		return mypageMapper.getPointSearch(username, startdate, enddate);
	}

	@Override
	public List<BoardVO> getInquiryList(String username) {
		log.info("getInquiryList()..");
		
		return mypageMapper.getInquiryList(username);
	}

	@Override
	public List<BoardVO> getInquiry(String username, int reply_group) {
		log.info("getInquiry()..");
		
		return mypageMapper.getInquiry(username, reply_group);
	}

	@Override
	public List<BoardVO> getReviewList(String username) {
		log.info("getReviewList()..");
		
		return mypageMapper.getReviewList(username);
	}

	@Override
	public List<BoardVO> getReplyList(String username) {
		log.info("getReplyList()..");
		
		return mypageMapper.getReplyList(username);
	}

	@Override
	public int userUpdate(MemberVO memberVO) {
		log.info("userUpdate()..");
		
//		String encodedPassword = passwordEncoder.encode(memberVO.getPassword());
//		memberVO.setPassword(encodedPassword);
		
		return mypageMapper.userUpdate(memberVO);
	}

	@Override
	public List<OrderVO> getOrderDeliveryDetail(Long id, String username) {
		
		return mypageMapper.getOrderDeliveryDetail(id, username);
	}



}
