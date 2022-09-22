package com.iu.home.licenseorder;

import java.io.IOException;
import java.net.http.HttpHeaders;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

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
import com.iu.home.util.UserCriteria;
import com.iu.home.util.UserPageMaker;
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
	public String getOrderComplete(@RequestParam int payNum, OrderDTO orderDTO, Model model) throws Exception {
		PayDTO payDTO = orderService.getPay(payNum);
		model.addAttribute("payDTO", payDTO);
		
		return "order/complete";
	}
	
	
	@ResponseBody
	@RequestMapping(value = "/verify_iamport/{imp_uid}", method = RequestMethod.POST)
	public IamportResponse<Payment> verifyIamportPOST(@PathVariable(value = "imp_uid") String imp_uid) throws IamportResponseException, IOException {
	    
	   System.out.println(client.paymentByImpUid(imp_uid));
		
		return client.paymentByImpUid(imp_uid);
	}
	
	@RequestMapping(value ="complete", method = RequestMethod.POST)
	@ResponseBody
	public int paymentComplete(@RequestBody OrderDTO orderDTO) throws Exception {
		System.out.println("0 : " + orderDTO.getNum());
		System.out.println("1" + orderDTO.getProductNum());
		System.out.println("2 : " + orderDTO.getNum());
		System.out.println("3 : " + orderDTO.getOrderDate());
		System.out.println("4 : " + orderDTO.getTotalPrice());
		System.out.println("5 : " + orderDTO.getImp_uid());
//		System.out.println(client.getBillingCustomer(pvo.getOrderNum()));
//		System.out.println(client.getAuth());
		int res = orderService.insert_pay(orderDTO);
		if(res == 1) {
				System.out.println("biz_member pay coupon insert complete");
		}
		return res;
	}
	
	@RequestMapping(value = "/pay_info", method = RequestMethod.GET)
	@ResponseBody
	public ResponseEntity<Long> payInfoPOST(Model model,
	        HttpServletRequest request, HttpServletResponse response,
	        @RequestParam String imp_uid,HttpSession session) throws Exception {
		IamportResponse<Payment> result = client.paymentByImpUid(imp_uid);
		
		PayDTO payDTO = new PayDTO();
		payDTO.setNum((Long)session.getAttribute("saveNum"));
		payDTO.setOrderNum(Long.parseLong(result.getResponse().getMerchantUid()));
		payDTO.setPayMethod(result.getResponse().getPayMethod());
		payDTO.setPayName(result.getResponse().getName());
		payDTO.setPayAmount(result.getResponse().getAmount().longValue());
		
		orderService.insert_payinfo(payDTO);
		
		payDTO = orderService.getLastPay(payDTO);
		System.out.println(payDTO);
		model.addAttribute("payDTO", payDTO);
		
		
		
		
		return new ResponseEntity<Long>(payDTO.getPayNum(), HttpStatus.OK);
	}
	
	

	// 마이페이지 - 주문 목록
		@GetMapping(value = "myOrderList")
		public String myOrder(OrderDTO orderDTO,HttpSession session, Model model,
				@RequestParam(value = "pagingNum", required = false, defaultValue = "1") String pagingNum) throws Exception{

			System.out.println("myorderList");
			Long saveNUM = (Long)(session.getAttribute("saveNUM"));
			List<Integer> codeList = orderService.MyOrderCount(saveNUM); 
			
			System.out.println("saveNum : " + saveNUM);
			System.out.println("codeList : " +codeList);
			UserCriteria cri = new UserCriteria();
			cri.setPage(Integer.parseInt(pagingNum));
			cri.setPerPageNum(3);
			
			System.out.println("cri : " + cri);
			
			List<Integer> limitList = new ArrayList<Integer>();
			try {
				limitList = codeList.subList(cri.getPageStart(), cri.getPageStart()+3);
			} catch (Exception e) {
				limitList = codeList.subList(cri.getPageStart(), codeList.size());
			}
			Map<Long, List> orderMap = orderService.getMyOrderList(saveNUM, limitList);

			UserPageMaker pm = new UserPageMaker();
			pm.setCri(cri);
			pm.setTotalCount(codeList.size());

			model.addAttribute("orderMap", orderMap);
			model.addAttribute("pagingNum", pagingNum);
			model.addAttribute("pm", pm);

			return "order/myOrderList";
		}

}
