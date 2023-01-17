package edu.global.ex.vo;

import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class OrderdetailVO {

	private int amount;
	private String recipient_name;
	private String recipient_postnumber;
	private String recipient_city;
	private String recipient_street;
	private String recipient_location;
	private String please;
	private int item_id;
	private int order_id;
	
	private List<ItemVO> itemList;
}
