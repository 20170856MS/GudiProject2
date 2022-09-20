package com.iu.home.licenseorder;

import java.net.http.HttpHeaders;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.client.RestTemplate;

import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonObjectFormatVisitor;
import com.fasterxml.jackson.databind.util.JSONPObject;
import com.fasterxml.jackson.databind.util.JSONWrappedObject;
import com.siot.IamportRestClient.IamportClient;


@Controller
@RequestMapping(("/order/*"))
public class OrderController {

	@Autowired
	private OrderService orderService;
	
//	private IamportClient client = new IamportClient("", "");
	
	
	@GetMapping("order")
	public void setPayment(OrderDTO orderDTO) throws Exception {
		System.out.println("order");
	}
	
	@GetMapping("complete")
	public void getOrderComplete(OrderDTO orderDTO) throws Exception {
		System.out.println("complete");
	}
	
	@RequestMapping(value ="complete", method = RequestMethod.POST)
	@ResponseBody
	public int paymentComplete(@RequestBody OrderDTO pvo) throws Exception {
		System.out.println("pvo.getMerchant_uid : " + pvo.getOrderNum());
		System.out.println("2" + pvo.getScNum());
		System.out.println("3 : " + pvo.getNum());
		System.out.println("4 : " + pvo.getOrderDate());
		System.out.println("5 : " + pvo.getPayMethod());
		System.out.println("6 : " + pvo.getTotalPrice());
		System.out.println("7 : " + pvo.getImp_uid());
//		System.out.println(client.getBillingCustomer(pvo.getOrderNum()));
//		System.out.println(client.getAuth());
		int res = orderService.insert_pay(pvo);
		if(res == 1) {
			if(res == 1)
				System.out.println("biz_member pay coupon insert complete");
		}
		return res;
	}
	
	
//	@PostMapping("complete")
//	@ResponseBody
//	public ResponseEntity<String> paymentComplete(@RequestBody OrderDTO pvo,HttpSession session, long totalPrice) throws Exception {
//
//		System.out.println("pvo.getMerchant_uid : " + pvo.getOrderNum());
//		System.out.println("2" + pvo.getScNum());
//		System.out.println("3 : " + pvo.getNum());
//		System.out.println("4 : " + pvo.getOrderDate());
//		System.out.println("5 : " + pvo.getPayMethod());
//		System.out.println("6 : " + pvo.getTotalPrice());
//		System.out.println("7 : " + pvo.getImp_uid());
//		int res = orderService.insert_pay(pvo);
//		if(res == 1) {
//			if(res == 1)
//				System.out.println("biz_member pay coupon insert complete");
//		}
//		
//		
//		
//		return new ResponseEntity<String>(HttpStatus.OK);
//	}

}
