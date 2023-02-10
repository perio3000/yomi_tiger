package edu.global.ex.controller;

import lombok.extern.slf4j.Slf4j;
import net.minidev.json.JSONObject;
import net.minidev.json.parser.JSONParser;
import net.minidev.json.parser.ParseException;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import org.jsoup.Connection;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.select.Elements;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import edu.global.ex.page.Criteria;
import edu.global.ex.service.ListService;
import edu.global.ex.vo.CartVO;
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
	
	@PostMapping("/detailtext")
	public String detailText(@RequestBody String detailUrl, Model model) throws UnsupportedEncodingException {
		log.info("detailText()..");

		
		String decodeUrl = URLDecoder.decode(detailUrl, "UTF-8");
		
		final String inflearnUrl = decodeUrl;
		Connection conn = Jsoup.connect(inflearnUrl);
		Document document;
		
		try {
			document = conn.get();

			Elements infoText = document.select(".info_section > .desc");
			
			System.out.println(infoText);
			
			return String.valueOf(infoText);
			
		} catch (IOException e) {
			return "이 책은 소개글이 없습니다.";
		}
	}
	
	@PostMapping("/insertCart")
	public void insertCart(@RequestBody CartVO cartVO) {
		log.info("insertCart()..");
		
		listService.cartInsert(cartVO);
	}
	
	@GetMapping("/getCartList/{username}")
	public List<ItemVO> getCartList(@PathVariable(name = "username") String username) {
		log.info("getCartList()..");
		
		return listService.getCartList(username);
	}
	
	@GetMapping("/getCartListSS/{item_id}")
	public ItemVO getCartListSS(@PathVariable(name = "item_id") String item_id) {
		log.info("getCartListSS()..");
		
		return listService.getCartListSS(item_id);
	}
	
	@GetMapping("/insertCartSS/{item_id}/{username}/{amount}")
	public int insertCartSS(@PathVariable(name = "item_id") String item_id, @PathVariable(name = "username") String username, @PathVariable(name = "amount") int amount) {
		log.info("insertCartSS()..");
		
		return listService.insertCartSS(username, item_id, amount);
	}
	
	@GetMapping("/cartDelCh/{username}/{item_id}")
	public int cartDelCh(@PathVariable(name = "username") String username, @PathVariable(name = "item_id") String item_id) {
		log.info("cartDelCh()..");
		
		return listService.cartDelCh(username, item_id);
	}
	
	@GetMapping("/cartDelAll/{username}")
	public int cartDelAll(@PathVariable(name = "username") String username) {
		log.info("cartDelAll()..");
		
		return listService.cartDelAll(username);
	}
	
	@PutMapping("/updateAmount")
	public int updateAmount(@RequestBody CartVO cartVO) {
		log.info("updateAmount()..");
		
		return listService.updateAmount(cartVO);
	}
	
	@PostMapping("/orderFromCart")
	public JSONObject orderFromCart(@RequestBody String item_id_list) throws ParseException{
		log.info("orderFromCart()..");

        @SuppressWarnings("deprecation")
		JSONParser jsonParser = new JSONParser();

        Object obj = jsonParser.parse(item_id_list);

        JSONObject jsonObj = (JSONObject) obj;
		
		return jsonObj;
	}
	
}
