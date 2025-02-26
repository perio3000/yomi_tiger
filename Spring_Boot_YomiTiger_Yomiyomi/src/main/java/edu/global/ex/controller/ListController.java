package edu.global.ex.controller;

import lombok.extern.slf4j.Slf4j;
import net.minidev.json.JSONObject;
import net.minidev.json.parser.JSONParser;
import net.minidev.json.parser.ParseException;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.jsoup.Connection;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.AuthenticatedPrincipal;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

import edu.global.ex.page.Criteria;
import edu.global.ex.page.PageVO;
import edu.global.ex.service.ListService;
import edu.global.ex.service.MypageService;
import edu.global.ex.vo.ItemVO;

@Slf4j
@Controller
@RequestMapping("/store")
public class ListController {
	
	@Autowired
	private ListService listService;
	
	@Autowired
	private MypageService mypageService;
	
	@GetMapping({"/listnew", "/searchnew"})
	public String List(Criteria criteria, Model model) {
		log.info("/List..");
		
		log.info("list_new_Criteria " + criteria);
		model.addAttribute("list", listService.getNewProductList(criteria));
		
		int total = listService.getNewProductListCount(criteria);
		log.info("total " + total);
		
		model.addAttribute("pageMaker", new PageVO(criteria, total));
		
		return "booklist";
	}
	
	@GetMapping({"/listbest", "/searchbest"})
	public String bestList(Criteria criteria, Model model) {
		log.info("/bestList..");
		
		log.info("list_best_Criteria " + criteria);
		model.addAttribute("list", listService.getBestProductList(criteria));
		
		int total = listService.getBestProductListCount(criteria);
		log.info("total " + total);
		
		model.addAttribute("pageMaker", new PageVO(criteria, total));
		
		return "bestbooklist";
	}
	
	@GetMapping({"/listall", "/searchall"})
	public String allList(Criteria criteria, Model model) {
		log.info("/allList..");
		
		log.info("list_all_Criteria " + criteria);
		model.addAttribute("list", listService.getAllProductList(criteria));
		
		int total = listService.getAllProductListCount(criteria);
		log.info("total " + total);

		model.addAttribute("pageMaker", new PageVO(criteria, total));
		
		return "allbooklist";
	}
	
	@GetMapping({"/listevent", "/searchevent"})
	public String eventList(Criteria criteria, Model model) {
		log.info("/allList..");
		
		log.info("list_event_Criteria " + criteria);
		model.addAttribute("list", listService.getEventProductList(criteria));
		
		int total = listService.getEventProductListCount(criteria);
		log.info("total " + total);
		
		model.addAttribute("pageMaker", new PageVO(criteria, total));
		
		return "eventbooklist";
	}
	
	@GetMapping({"/listpicks", "/searchpicks"})
	public String picksList(Criteria criteria, Model model) {
		log.info("/picksList..");
		
		log.info("list_picks_Criteria " + criteria);
		model.addAttribute("list", listService.getPicksProductList(criteria));
		
		int total = listService.getPicksProductListCount(criteria);
		log.info("total " + total);
		
		model.addAttribute("pageMaker", new PageVO(criteria, total));
		
		return "picksbooklist";
	}
	
	@GetMapping({"/listnatio", "/searchnatio"})
	public String natioList(Criteria criteria, Model model) {
		log.info("/natioList..");
		
		log.info("list_natio_Criteria " + criteria);
		model.addAttribute("list", listService.getNatioProductList(criteria));
		
		int total = listService.getNatioProductListCount(criteria);
		log.info("total " + total);
		
		model.addAttribute("pageMaker", new PageVO(criteria, total));
		
		return "natiobooklist";
	}
	
	@GetMapping({"/listinter", "/searchinter"})
	public String interList(Criteria criteria, Model model) {
		log.info("/natioList..");
		
		log.info("list_inter_Criteria " + criteria);
		model.addAttribute("list", listService.getInterProductList(criteria));
		
		int total = listService.getInterProductListCount(criteria);
		log.info("total " + total);
		
		model.addAttribute("pageMaker", new PageVO(criteria, total));
		
		return "interbooklist";
	}
	
	@GetMapping({"/listebook", "/searchebook"})
	public String ebookList(Criteria criteria, Model model) {
		log.info("/ebookList..");
		
		log.info("list_ebook_Criteria " + criteria);
		model.addAttribute("list", listService.getEbookProductList(criteria));
		
		int total = listService.getEbookProductListCount(criteria);
		log.info("total " + total);
		
		model.addAttribute("pageMaker", new PageVO(criteria, total));
		
		return "ebookbooklist";
	}
	
	@GetMapping("/detail")
	public String detail(Model model, ItemVO itemVO, Authentication authentication) {
		log.info("/allList..");
		
		model.addAttribute("item", listService.getProductDetail(itemVO));
		if(authentication != null) {
			model.addAttribute("user", authentication.getName());
			System.out.println(authentication.getName());
		}
		int item_id = itemVO.getId();
		
		model.addAttribute("review", listService.getReviewList(item_id));
		
		return "productdetail";
	}
	
	@GetMapping("/cart")
	public String Cart() {
		log.info("/Cart..");
		
		return "cart";
	}
	
	@GetMapping("/cart2")
	public String Cart2(Model model, ItemVO itemVO, Authentication authentication) {
		log.info("/Cart2..");
		
		if(authentication != null) {
			model.addAttribute("user", authentication.getName());
			System.out.println(authentication.getName());
		}
		
		return "cart2";
	}
	
	@GetMapping("/pay")
	public String Pay(Model model, ItemVO itemVO, Authentication authentication, String orderList) {
		log.info("/Pay..");
		String[] item_id = orderList.split("/");
		
		if(authentication != null) {
			model.addAttribute("user", mypageService.getUser(authentication.getName()));
			model.addAttribute("items", listService.getOrderList(authentication.getName(), item_id));
		}
		else {
			model.addAttribute("items", listService.getOrderListNotMember(item_id));
		}
		
		return "pay";
	}
	

	
	//크롤링
//	@GetMapping("/insertbooklist")
//	public String insertBookList() {
//		log.info("/insertbooklist..");
//		
//		final int FIRST_PAGE_INDEX = 40817151;
//		final int LAST_PAGE_INDEX = 40817200;
//
//		for (int i = FIRST_PAGE_INDEX; i <= LAST_PAGE_INDEX; i++) {
//			
//			final String inflearnUrl = "https://www.aladin.co.kr/shop/wproduct.aspx?ItemId=" + i;
//			Connection conn = Jsoup.connect(inflearnUrl);
//			Document document;
//
//			try {
//				document = conn.get();
//
//				// 크롤링 항목 필요 리스트
//				// - 썸네일 링크, 강의 제목, 가격(할인가격), 평점, 강의자, 강의 링크, 수강자 수, 플랫폼, 강의 세션 개수 + 시간
//				Elements imageUrlElements = document.select("#CoverMainImage");
//				String[] Thumbnail = new String[imageUrlElements.size()];
//				Elements titleElements = document.select(".Ere_bo_title");
//				Elements writterElements = document.select("li.Ere_sub2_title a:first-child");
//				Elements dateElements = document.select("li.Ere_sub2_title");
//				Elements priceElements = document.select(".info_list>ul>li:first-child>.Ritem");
//				Elements publisherElements = document.select("li.Ere_sub2_title a[href*=publisher]");
//				Elements readElements = document.select("#Ere_prod_allwrap");
//
//				int setIndex = 0;
//
//				for (Element e : imageUrlElements) {
//
//					Thumbnail[setIndex++] = e.attr("abs:src");
//				}
//
//				for (int j = 0; j < titleElements.size(); j++) {
//					final String title = titleElements.get(j).text();
//					final String authors = writterElements.get(j).text();
//					final String dateBefore = dateElements.get(j).text();
//					final String datetime = toDate(dateBefore);
//					final String priceNumberic = priceElements.get(j).text();
//					final String price = String.valueOf(toInt(removeNotNumeric(priceNumberic)));
//					final String publisher = publisherElements.get(j).text();	
//					final String contents = readElements.get(j).text();
//					final String thumbnail =  Thumbnail[j];
//
//					System.out.println("썸네일: " + thumbnail);
//					System.out.println("책제목: " + title);
//					System.out.println("지은이: " + authors);
//					System.out.println("출간일: " + datetime);
//					System.out.println("가격: " + price);
//					System.out.println("출판사: " + publisher);
//					System.out.println("소개: " + contents);
//
//					System.out.println("");
//					
//					ItemVO itemVO = new ItemVO();
//					
//					itemVO.setTitle(title);
//					itemVO.setAuthors(authors);
//					itemVO.setDatetime(datetime);
//					itemVO.setPrice(price);
//					itemVO.setPublisher(publisher);
//					itemVO.setContents(contents);
//					itemVO.setThumbnail(thumbnail);
//					
//					listService.insertBookList(itemVO);
//				}
//			} catch (IOException e) {
//				e.printStackTrace();
//			}
//
//		}
//		
//		return null;
//
//	}
//	
//	private static String removeNotNumeric(final String str) {
//		String priceBefore = str.substring(0,7);
//		String price = priceBefore.replaceAll("\\W", "");
//		String priceAfter = price.replace(" ", "");
//		
//		return priceAfter.replace("원", "");
//	}
//
//	private static int toInt(final String str) {
//		return Integer.parseInt(str);
//	}
//
//	private static String toDate(final String str) {
//		String regEx = "(19|20)\\d{2}\\-((11|12)|(0?(\\d)))\\-(30|31|((0|1|2)?\\d))";
//		Matcher date = Pattern.compile(regEx).matcher(str);
//		String dateResult = null;
//		
//		while(date.find()) {
//			dateResult = date.group();
//		};
//
//		return dateResult;
//	}

}
