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
public class PointVO {
	
	private int point;
	private Date point_date;
	private int total_point;
	private String point_state;
	private String thumbnail;
	private String price;
	
}
