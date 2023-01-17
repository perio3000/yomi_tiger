package edu.global.ex.vo;

import java.sql.Date;

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
public class DeliveryVO {
	
	private int id;
	private String delivery_name;
	private Date delivery_date;
	private String delivery_number;
	private String delivery_state;
	private int order_id;
}
