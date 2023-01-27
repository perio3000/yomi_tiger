package edu.global.ex.controller;

import lombok.extern.slf4j.Slf4j;

import java.io.IOException;

import org.jsoup.Connection;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import edu.global.ex.service.ListService;
import edu.global.ex.vo.ItemVO;

@Slf4j
@Controller
public class ListController {
	
	@Autowired
	private ListService listService;
	
	@GetMapping("/insertbooklist")
	public String insertBookList() {
		log.info("/insertbooklist..");
		
		return null;

	}

}
