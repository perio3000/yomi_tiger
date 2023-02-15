package edu.global.ex.vo;

import java.sql.Date;
import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Setter
@Getter
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class OrderVO {
	
	private Long id;
	private Date order_date;
	private int user_id;
	private String price;
	private String thumbnail;
	private String title;
	private int amountList;
	private String delivery_state;
	private int amount;
	
	private String name;
	private String account;
	private String bank;
	private Long orderNum;
	
	private String status;

	private String delivery_name;
	private Date delivery_date;
	private String delivery_number;
	
	private String buyer_name;
	private String postcode;
	private String address;
	private String extraAddress;
	private String detailAddress;
	private String please;
	private int itemIdList;
	
	private String username;
	private String email;
	private String payMethod;
	private String phone;
	private int point;
	private String orderName;
	private String orderList;
	
	private List<PayVO> payList;
	private List<OrderdetailVO> orderdetailList;
	private List<DeliveryVO> deliveryList;
}
