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
import org.springframework.beans.factory.annotation.Value;
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
import com.iu.home.studyCafe.cafeService;
import com.iu.home.studyCafe.ReListDTO;
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
	
	@Autowired
	private PayService payService;
	
	@Autowired
	private cafeService cafeService;
	
	
	
	private IamportClient client = new IamportClient("7017488345532835", "r0p7EfkrcMnSmuoEyspvckZJ4fhZhuPizl5sbCYonZWDUovs728pTqMwSfJmaDRqs6P7RYU0Z2Eh4xYM");
	
	@RequestMapping(value = "reList")
	public String reList(Model model,HttpSession session) throws Exception{
		System.out.println("cafeReList");
		Long reserNum = (Long)session.getAttribute("reserNum");
		List<ReListDTO> ar = cafeService.getReList(reserNum);
		System.out.println(ar.get(0).getCdPay());
		model.addAttribute("list", ar);
		
		return "studyCafe/reList";
	}
	
	@GetMapping("order")
	public String orderGET(OrderDTO orderDTO,Model model,HttpSession session) throws Exception {
		System.out.println("order");
		Long reserNum = (Long)session.getAttribute("reserNum");
		List<ReListDTO> ar = cafeService.getReList(reserNum);
		System.out.println(ar.get(0).getCdPay());
		model.addAttribute("list", ar);
		
//		List<reListDTO> ar = cafeService.getReList();
		
////		mv.addObject("list", ar);
//		mv.setViewName("order/order");
		
		return "order/order";
	}
	
	@PostMapping("order")
	public String orderPost(HttpServletRequest requset, HttpSession session, Model model) throws Exception{
		
		//주문정보를 넘기기위함(orderNum)
		System.out.println("orderPost");
		model.addAttribute("orderNum", orderService.getLastOrderNum());
		
		return "order/order";
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
	
//	@RequestMapping(value ="complete", method = RequestMethod.POST)
//	@ResponseBody
//	public int paymentComplete(@RequestBody OrderDTO orderDTO) throws Exception {
//
//		
//		System.out.println(orderDTO.getProductName());
////		System.out.println(client.getBillingCustomer(pvo.getOrderNum()));
////		System.out.println(client.getAuth());
//		int res = orderService.insert_pay(orderDTO);
//		String token = payService.getToken();
//		System.out.println("토큰 : " + token);
////		int amount = orderService.paymentInfo(orderDTO.getImp_uid(), token);
//
//		
//		if(res == 1) {
//				System.out.println("biz_member pay coupon insert complete");
//		} else {
//			System.out.println("not");
//		}
//		return res;
//	}
	
	@RequestMapping(value ="complete", method = RequestMethod.POST)
	@ResponseBody
	public int paymentComplete(String imp_uid, String merchant_uid,String totalPrice,HttpSession session,@RequestBody OrderDTO orderDTO) throws Exception {
	    
	    String token = payService.getToken();
	    
	    // 결제 완료된 금액
	    String amount = payService.paymentInfo(orderDTO.getImp_uid(), token);
	    
	    System.out.println("확인"+orderDTO.getTotalPrice());
	    System.out.println(amount);
	    
	    int res = 1;
	    
	    if (orderDTO.getTotalPrice() != Long.parseLong(amount)) {
			res = 0;
			// 결제 취소
			payService.payMentCancle(token, orderDTO.getImp_uid(), amount,"결제 금액 오류");
			return res;
		}
	    System.out.println("check44 : " + orderDTO.getImp_uid());
		orderService.insert_pay(orderDTO);
		

		return res;
	 
	}
	    
	    
	
	
	@RequestMapping(value = "pay_info", method = RequestMethod.GET)
	@ResponseBody
	public ResponseEntity<Long> payInfoPOST(Model model,
	        HttpServletRequest request, HttpServletResponse response,
	        @RequestParam String imp_uid,HttpSession session) throws Exception {
		System.out.println("payDTO rr");
		IamportResponse<Payment> result = client.paymentByImpUid(imp_uid);
		PayDTO payDTO = new PayDTO();
		System.out.println((Long) session.getAttribute("saveNum"));
		payDTO.setNum((Long) session.getAttribute("saveNum"));
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
			Long svNum = (Long)(session.getAttribute("saveNum"));
		
			String saveNUM = String.valueOf(svNum);
			List<Long> codeList = orderService.MyOrderCount(saveNUM); 
			
			System.out.println("saveNum : " + saveNUM);
			System.out.println("codeList : " +codeList);
			UserCriteria cri = new UserCriteria();
			cri.setPage(Integer.parseInt(pagingNum));
			cri.setPerPageNum(3);
			
			
			List<Long> limitList = new ArrayList<Long>();
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
		
		@PostMapping("payMentCancel")
		@ResponseBody
		public int payMentCancle(OrderDTO orderDTO) throws Exception{
			int result = 0;
			
			System.out.println("1 : " + orderDTO.getOrderNum());
			if(orderDTO.getOrderNum() != null) {
				result = 1;
			}
			return result;
		}
		
		

}
