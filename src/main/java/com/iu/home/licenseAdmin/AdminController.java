package com.iu.home.licenseAdmin;

import java.net.http.HttpHeaders;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PatchMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.client.RestTemplate;

import com.iu.home.licenseorder.OrderDTO;
import com.iu.home.licenseorder.PayDTO;

@Controller
@RequestMapping(value = "/admin/")
public class AdminController {
	
	@Autowired
	private AdminService adminService;
	
	@RequestMapping(value = "adminTest", method = RequestMethod.GET)
	public void setadmin() throws Exception{
		
		System.out.println("admintest");
		
	}
	
	@RequestMapping(value = "order", method = RequestMethod.GET)
	public void setorder() throws Exception{
		
		System.out.println("order");
		
	}
	
	@PostMapping("orderCancle")
	@ResponseBody
	public int orderCancle(AdminDTO orderList, PayDTO payDTO) throws Exception {
//		userId == 0 비회원
		System.out.println("1 : "+orderList);
		System.out.println("1 : "+orderList.getImp_uid());
		System.out.println("1 : "+orderList.getOrderNum());
		
		orderList = adminService.adminList(orderList); 
		
		System.out.println("2 : "+orderList);
		System.out.println("2 : "+orderList.getImp_uid());
		System.out.println("2 : "+orderList.getOrderNum());
		
		int result = adminService.orderCancle(orderList);
		
		int result1 = adminService.payMentCancle(payDTO);
		
		if(result>0) {
			System.out.println("DB 삭제성공");
		}
		
		if(result1>0) {
			System.out.println("Pay DB 삭제성공");
		}
		
		return result;
	}
	
	
	
//    private final PaymentService paymentService;

//    @PostMapping("/record")
//    public ResponseEntity<?> paymentRecordGenerateBeforePg(@Valid @RequestBody PaymentRequest paymentRequest, @CurrentUser User user) {
//        PaymentResponse paymentResponse = paymentService.paymentRecordGenerateBeforePg(paymentRequest, user);
//
//        return ResponseEntity.ok(paymentResponse);
//    }



	
	
	
	
}
