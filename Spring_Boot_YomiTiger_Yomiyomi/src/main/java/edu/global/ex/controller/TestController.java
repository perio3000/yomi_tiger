package edu.global.ex.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import edu.global.ex.page.Criteria;
import edu.global.ex.page.PageVO;
import edu.global.ex.service.ListService;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class TestController {
	
	@Autowired
	private ListService listService;

	//헤더
	@GetMapping("/header")
	public String header() {
		log.info("/header()...");

		return "header";
	}
	//로그인
	@GetMapping("/login")
	public String login() {
		log.info("/login()...");

		return "login";
	}
	
	
	// 1:1 문의하기
	@GetMapping("/qna")
	public String qna() {
		log.info("/qna");
		
		return "qna";

	}

	// 자주 묻는 질문 //NoticeController 로 이동
/*	@GetMapping("/FAQ")
	public String FAQ() {
		log.info("/FAQ");
			
		return "FAQ";
	}*/
	
	// 고객센터
	@GetMapping("/customercenter")
	public String custmoercenter() {
		log.info("/customercenter");
				
		return "customercenter";
	}
	
	// 공지사항
	@GetMapping("/announcementtest")
	public String announcement() {
		log.info("/announcement");
				
		return "announcement";
	}
	
	// 오프라인 매장 위치
	@GetMapping("/location")
	public String location() {
		log.info("/location");
				
		return "location";
	}
	
	// 이벤트 페이지
	@GetMapping("/events")
	public String events() {
		log.info("/events");
				
		return "events";
	}
	
	// 푸터 (굉장히 간단한데 이래도 되나요)
	@GetMapping("/footer")
	public String footer() {
		log.info("/footer");
		
		return "footer";
	}
	
	// 공지사항 조회
	@GetMapping("/announcereadtest")
	public String announceread() {
		log.info("/announceread");
		
		return "announceread";
	}

	// 회원가입
	@GetMapping("/signup")
	public String signup() {
		log.info("/signup");
		
		return "signup";
	}
	
	// 책리스트
	@GetMapping("/booklist")
	public String booklist() {
		log.info("/booklist");
		
		return "booklist";
	}
	
	// 비밀번호 변경
	@GetMapping("/pwchange")
	public String pwchange() {
		log.info("/pwchange");
		
		return "pwchange";
	}
	
	// 상세페이지
	@GetMapping("/productdetail")
	public String productdetail() {
		log.info("/productdetail");
		
		return "productdetail";
	}
	
	// 비회원 주문조회
	@GetMapping("/nonmemberorder")
	public String nonmemberorder() {
		log.info("/nonmemberorder");
		
		return "nonmemberorder";
	}
	
		
	//아이디 비번 찾기
	@GetMapping("/findIDPW")
	public String findIDPW() {
		log.info("/findIDPW()...");

		return "findIDPW";
	}
	
	//장바구니
	@GetMapping("/cart")
	public String cart() {
		log.info("/cart()...");

		return "cart";
	}
	//결제하기
	@GetMapping("/pay")
	public String pay() {
		log.info("/pay()...");

		return "pay";
	}
	
	//상품검색
	@GetMapping("/search")
	public String search() {
		log.info("/search()...");

		return "search";
	}
	
	//메인
	@GetMapping("/")
	public String main(Criteria criteria, Model model) {
		log.info("/main()...");
		
		log.info("list_new_Criteria " + criteria);
		
		criteria.setAmount(5);
		model.addAttribute("list", listService.getNewProductList(criteria));
		model.addAttribute("best", listService.getBestProductList(criteria));
		
		int total = listService.getNewProductListCount(criteria);
		log.info("total " + total);
		
		model.addAttribute("pageMaker", new PageVO(criteria, total));

		return "main";
	}
}
	
