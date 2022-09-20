package com.iu.home.licenseAdmin;

import java.net.http.HttpHeaders;

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

@Controller
@RequestMapping(value = "/admin/")
public class adminController {

	
	@RequestMapping(value = "adminTest", method = RequestMethod.GET)
	public void setadmin() throws Exception{
		
		System.out.println("admintest");
		
	}
	
	@RequestMapping(value = "order", method = RequestMethod.GET)
	public void setorder() throws Exception{
		
		System.out.println("order");
		
	}
	
	
	
//    private final PaymentService paymentService;

//    @PostMapping("/record")
//    public ResponseEntity<?> paymentRecordGenerateBeforePg(@Valid @RequestBody PaymentRequest paymentRequest, @CurrentUser User user) {
//        PaymentResponse paymentResponse = paymentService.paymentRecordGenerateBeforePg(paymentRequest, user);
//
//        return ResponseEntity.ok(paymentResponse);
//    }



	
	
	
	
}
