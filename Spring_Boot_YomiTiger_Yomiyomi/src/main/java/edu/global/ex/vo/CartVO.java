package edu.global.ex.vo;

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
public class CartVO {
	
	private int id;
	private int item_id;
	private int user_id;
	private int amount;
	private String username;
}
