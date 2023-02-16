package edu.global.ex.service;

import java.util.List;

import edu.global.ex.vo.OrderVO;

public interface OrderService {
	
	int insertOrder(OrderVO orderVO);
	
	int insertOrderNotMember(OrderVO orderVO);
	
	List<OrderVO> getNonmemberOrderList(OrderVO orderVO);
}
