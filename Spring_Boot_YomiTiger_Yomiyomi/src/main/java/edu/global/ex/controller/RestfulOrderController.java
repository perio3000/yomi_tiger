package edu.global.ex.controller;

import lombok.extern.slf4j.Slf4j;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import edu.global.ex.service.OrderService;
import edu.global.ex.vo.OrderVO;

@Slf4j
@RestController
public class RestfulOrderController {
	
	@Autowired
	private OrderService orderService;
	
	@PostMapping("/successPayment")
	public int successPayment(@RequestBody OrderVO orderVO) {
		log.info("successPayment()..");
		
		return orderService.insertOrder(orderVO);
	}
	
	@PostMapping("/successPaymentNotMember")
	public int successPaymentNotMember(@RequestBody OrderVO orderVO) {
		log.info("successPaymentNotMember()..");
		
		return orderService.insertOrderNotMember(orderVO);
	}

}
