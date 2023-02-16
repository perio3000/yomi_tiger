package edu.global.ex.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import edu.global.ex.mapper.OrderMapper;
import edu.global.ex.vo.OrderVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class OrderServiceImpl implements OrderService{
	
	@Autowired
	private OrderMapper orderMapper;
	
	@Autowired
    private PasswordEncoder passwordEncoder;
	
	@Override
	@Transactional
	public int insertOrder(OrderVO orderVO) {
		log.info("insertOrder()..");
		
		String[] orderList = orderVO.getOrderList().split("/");
		String username = orderVO.getUsername();
		
		orderMapper.deletePaidCart(username, orderList);
		
		return orderMapper.insertOrder(orderVO);
	}

	@Override
	public int insertOrderNotMember(OrderVO orderVO) {
		log.info("insertOrderNotMember()..");
		
		String encodedPassword = passwordEncoder.encode(orderVO.getPassword());
		orderVO.setPassword(encodedPassword);
		
		return orderMapper.insertOrderNotMember(orderVO);
	}
	
}
