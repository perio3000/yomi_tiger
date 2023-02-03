package edu.global.ex.controller;

import lombok.extern.slf4j.Slf4j;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import edu.global.ex.page.Criteria;
import edu.global.ex.service.ListService;
import edu.global.ex.vo.ItemVO;

@Slf4j
@RestController
public class RestfulListController {
	
	@Autowired
	private ListService listService;
	
	@GetMapping("/searchpre/{keyword}/{type}/{pageNum}/{amount}")
	public List<ItemVO> searchPre(@PathVariable(name = "keyword") String keyword, 
			@PathVariable(name = "type") String type, 
			@PathVariable(name = "pageNum") int pageNum,
			@PathVariable(name = "amount") int amount, Criteria criteria){
		log.info("searchPre()..");
		
		criteria.setType(type);
		criteria.setKeyword(keyword);
		criteria.setPageNum(pageNum);;
		criteria.setAmount(amount);;
		
		return listService.getAllProductList(criteria);
	}
	
}
