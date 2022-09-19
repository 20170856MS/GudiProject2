package com.iu.home.licenseorder;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(("/order/*"))
public class OrderController {

	@Autowired
	private OrderService orderService;
	
	
	
	@RequestMapping(value ="complete", method = RequestMethod.POST)
	public int paymentComplete(@RequestBody OrderDTO pvo) throws Exception {

		System.out.println("pvo.getMerchant_uid : " + pvo.getScNum());
		int res = orderService.insert_pay(pvo);
		if(res == 1) {
			if(res == 1)
				System.out.println("biz_member pay coupon insert complete");
		}
		return res;
	}
	
}
