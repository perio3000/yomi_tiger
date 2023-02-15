package edu.global.ex.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.global.ex.mapper.OrderMapper;
import edu.global.ex.vo.OrderVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class OrderServiceImpl implements OrderService{
	
	@Autowired
	private OrderMapper orderMapper;
	
	@Override
	public int insertOrder(OrderVO orderVO) {
		log.info("insertOrder()..");
		
		return orderMapper.insertOrder(orderVO);
	}
	
}
