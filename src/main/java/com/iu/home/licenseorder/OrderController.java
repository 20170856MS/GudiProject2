package com.iu.home.licenseorder;

import java.io.IOException;
import java.net.http.HttpHeaders;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.ModelAndView;

import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonObjectFormatVisitor;
import com.fasterxml.jackson.databind.util.JSONPObject;
import com.fasterxml.jackson.databind.util.JSONWrappedObject;
import com.siot.IamportRestClient.IamportClient;
import com.siot.IamportRestClient.exception.IamportResponseException;
import com.siot.IamportRestClient.response.IamportResponse;
import com.siot.IamportRestClient.response.Payment;


@Controller
@RequestMapping(("/order/*"))
public class OrderController {

	@Autowired
	private OrderService orderService;
	
	private IamportClient client = new IamportClient("7017488345532835", "r0p7EfkrcMnSmuoEyspvckZJ4fhZhuPizl5sbCYonZWDUovs728pTqMwSfJmaDRqs6P7RYU0Z2Eh4xYM");
	
	
	@GetMapping("order")
	public void setPayment(OrderDTO orderDTO) throws Exception {
		System.out.println("order");
	}
	
	@GetMapping("complete")
	public String getOrderComplete(OrderDTO orderDTO) throws Exception {
		System.out.println("complete");
		
		return "order/complete";
	}
	
	@GetMapping("myOrderList")
	public void getOrderList(OrderDTO orderDTO) throws Exception {
		System.out.println("myOrderList");
		
	}
	
	@ResponseBody
	@RequestMapping(value = "/verify_iamport/{imp_uid}", method = RequestMethod.POST)
	public IamportResponse<Payment> verifyIamportPOST(@PathVariable(value = "imp_uid") String imp_uid) throws IamportResponseException, IOException {
	    
	   System.out.println(client.paymentByImpUid(imp_uid));
		
		return client.paymentByImpUid(imp_uid);
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
				System.out.println("biz_member pay coupon insert complete");
		}
		return res;
	}
	
	@RequestMapping(value = "/pay_info", method = RequestMethod.GET)
	@ResponseBody
	public ResponseEntity<Integer> payInfoPOST(Model model,
	        HttpServletRequest request, HttpServletResponse response,
	        @RequestParam String imp_uid) throws Exception {
		System.out.println("");
		IamportResponse<Payment> result = client.paymentByImpUid(imp_uid);
		System.out.println(result);
		System.out.println(Integer.parseInt(result.getResponse().getMerchantUid()));
		System.out.println(result.getResponse().getCardName());
		System.out.println(result.getResponse().getCardNumber());
		System.out.println(result.getResponse().getCardQuota());
		System.out.println(result.getResponse().getPayMethod());
		System.out.println(Integer.parseInt(result.getResponse().getMerchantUid()));
		
		System.out.println(result.getResponse().getAmount().intValue());
		

	    
	    return new ResponseEntity<Integer>(1, HttpStatus.OK);
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
