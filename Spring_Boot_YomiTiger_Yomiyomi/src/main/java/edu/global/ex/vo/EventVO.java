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
public class EventVO {
	
	private int id;
	private String event_name;
	private Date event_start;
	private Date event_end;
	private double discount;
	private String title;
	private String file_path;
}
