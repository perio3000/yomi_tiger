package edu.global.ex.controller;

import lombok.extern.slf4j.Slf4j;

import java.security.Principal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import edu.global.ex.page.Criteria;
import edu.global.ex.page.PageVO;
import edu.global.ex.service.ListService;
import edu.global.ex.service.MypageService;
import edu.global.ex.vo.BoardVO;
import edu.global.ex.vo.ItemVO;
import edu.global.ex.vo.MemberVO;
import edu.global.ex.vo.OrderVO;

@Slf4j
@Controller
@RequestMapping("/mypage")
public class MypageController {

	@Autowired
	private MypageService mypageService;
	
	@Autowired
	private ListService listService;
	
	//메인
	@GetMapping("/main")
	public String main(Model model, MemberVO memberVO, Authentication authentication, Principal principal) {
		log.info("main..");
		
		model.addAttribute("member", mypageService.getUser(authentication.getName()));
		
		return "mypage";
	}
	
	//주문배송목록
	@GetMapping("/orderdeliverylist")
	public String orderdeliverylist(Model model, MemberVO memberVO, Authentication authentication, Principal principal) {
		log.info("orderdeliverylist..");
		
		model.addAttribute("member", mypageService.getUser(authentication.getName()));
		model.addAttribute("order", mypageService.getOrder(authentication.getName()));
		
		return "orderdeliverylist";
	}
	
	@GetMapping("/orderlistsearch")
	public String orderlistsearch(Model model, MemberVO memberVO, String username, String startdate, String enddate, Authentication authentication, Principal principal) {
		log.info("orderlistsearch..");
		
		model.addAttribute("member", mypageService.getUser(authentication.getName()));
		model.addAttribute("order", mypageService.getOrderSearch(authentication.getName(), startdate, enddate));
		
		return "orderdeliverylist";
	}
	
	@GetMapping("/orderdeliverydetail")
	public String orderdeliverydetail(Model model, Long id, Principal principal) {
		log.info("orderdeliverydetail..");
		
		model.addAttribute("orderID", id);
		model.addAttribute("member", mypageService.getUser(principal.getName()));
		model.addAttribute("orderDetail", mypageService.getOrderDeliveryDetail(id, principal.getName()));
		
		return "orderdeliverydetail";
	}
	
	@GetMapping("/writereview")
	public String writereview(Model model, Long order_id, int id, String username, ItemVO itemVO, Principal principal) {
		log.info("writereview..");
		itemVO.setId(id);
		model.addAttribute("orderID", order_id);
		model.addAttribute("member", mypageService.getUser(principal.getName()));
		model.addAttribute("item", listService.getProductDetail(itemVO));
		
		return "writereview";
	}
	
	//포인트페이지
	@GetMapping("/point")
	public String point(Model model, MemberVO memberVO, Authentication authentication, Principal principal) {
		log.info("point..");
		
		model.addAttribute("member", mypageService.getUser(authentication.getName()));
		model.addAttribute("point", mypageService.getPointList(authentication.getName()));
		
		return "point";
	}
	
	@GetMapping("/pointsearch")
	public String pointsearch(Model model, MemberVO memberVO, String username, String startdate, String enddate, Authentication authentication, Principal principal) {
		log.info("pointsearch..");
		
		model.addAttribute("member", mypageService.getUser(authentication.getName()));
		model.addAttribute("point", mypageService.getPointSearch(authentication.getName(), startdate, enddate));
		
		return "point";
	}
	
	//활동내역
	@GetMapping("/activitylist")
	public String activitylist(Model model, MemberVO memberVO, Authentication authentication, Principal principal, BoardVO boardVO) {
		log.info("activitylist..");
		
		model.addAttribute("member", mypageService.getUser(authentication.getName()));
		model.addAttribute("review", mypageService.getReviewList(authentication.getName()));
		model.addAttribute("reply", mypageService.getReplyList(authentication.getName()));
		
		return "activitylist";
	}
	
	//문의내역
	@GetMapping("/inquirylist")
	public String inquirylist(Model model, MemberVO memberVO, Authentication authentication, Principal principal) {
		log.info("inquirylist..");
		
		model.addAttribute("member", mypageService.getUser(authentication.getName()));
		model.addAttribute("inquiry", mypageService.getInquiryList(authentication.getName()));
		
		return "inquirylist";
	}
	
	//회원정보
	@GetMapping("/userupdate")
	public String userupdate(Model model, MemberVO memberVO, Authentication authentication, Principal principal) {
		log.info("userupdate..");
		
		model.addAttribute("member", mypageService.getUser(authentication.getName()));
		
		return "userupdate";
	}
	
	//서재
	@GetMapping({"/library", "/searchlibrary"})
	public String library(Model model, MemberVO memberVO, Authentication authentication, Principal principal, Criteria criteria) {
		log.info("library..");
		
		model.addAttribute("member", mypageService.getUser(authentication.getName()));
	
		criteria.setUsername(authentication.getName());
		
		log.info("list_new_Criteria " + criteria);
		model.addAttribute("list", listService.getLibraryList(criteria));
		
		int total = listService.getLibraryListCount(criteria);
		log.info("total " + total);
		
		model.addAttribute("pageMaker", new PageVO(criteria, total));
		
		return "library";
	}
	
	
}
