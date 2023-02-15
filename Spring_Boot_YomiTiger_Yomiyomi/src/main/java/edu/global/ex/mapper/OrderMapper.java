package edu.global.ex.mapper;

import org.apache.ibatis.annotations.Mapper;

import edu.global.ex.vo.OrderVO;

@Mapper
public interface OrderMapper {
	
	int insertOrder(OrderVO orderVO);
	void deletePaidCart(String username, String[] orderList);
}
