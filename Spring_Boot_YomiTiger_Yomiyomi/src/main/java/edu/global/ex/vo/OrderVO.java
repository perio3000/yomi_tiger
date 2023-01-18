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
	
	private int id;
	private Date order_date;
	private int user_id;
	private String price;
	private String thumbnail;
	private String title;
	private int amount;
	private String delivery_state;
	
	private List<PayVO> payList;
	private List<OrderdetailVO> orderdetailList;
	private List<DeliveryVO> deliveryList;
}
