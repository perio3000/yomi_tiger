package edu.global.ex.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.global.ex.mapper.MypageMapper;
import edu.global.ex.vo.MemberVO;
import edu.global.ex.vo.OrderVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class MypageServiceImpl implements MypageService{
	
	@Autowired
	private MypageMapper mypageMapper;
	
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

	
	

}
