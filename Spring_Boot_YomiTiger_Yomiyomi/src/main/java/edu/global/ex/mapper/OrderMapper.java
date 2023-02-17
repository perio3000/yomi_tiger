package edu.global.ex.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import edu.global.ex.vo.OrderVO;

@Mapper
public interface OrderMapper {
	
	int insertOrder(OrderVO orderVO);
	void deletePaidCart(String username, String[] orderList);
	
	int insertOrderNotMember(OrderVO orderVO);
	void updatePoint(OrderVO orderVO);
	
	List<OrderVO> getNonmemberOrderList(OrderVO orderVO);
}
