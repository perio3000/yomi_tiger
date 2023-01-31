package edu.global.ex.vo;

import java.sql.Date;
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
public class ItemVO {
	private int id;
	private String title;
	private String price;
	private String publisher;
	private String datetime;
	private double star;
	private int stock;
	private String contents;
	private String authors;
	private String translators;
	private String status;
	private String thumbnail;
	private int event_id;
	
	private List<EventVO> eventList;
	private List<ImageVO> imageList;
}
