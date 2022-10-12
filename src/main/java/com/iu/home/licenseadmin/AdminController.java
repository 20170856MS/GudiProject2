package com.iu.home.licenseadmin;


import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.iu.home.licensemembers.LicenseMembersDTO;
import com.iu.home.licensemembers.LicenseMembersService;
import com.iu.home.licenseorder.OrderDTO;
import com.iu.home.licenseorder.OrderService;
import com.iu.home.licenseorder.PayDTO;
import com.iu.home.util.UserCriteria;
import com.iu.home.util.UserPageMaker;

@Controller
@RequestMapping(value = "/admin/")
public class AdminController {
	
	@Autowired
	private AdminService adminService;
	
	@Autowired
	private OrderService orderService;
	
	@Autowired
	private LicenseMembersService licenseMembersService;
	
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
		
		int result1 = adminService.payMentCancle(payDTO);
		System.out.println("rrr");
		
		int result = adminService.orderCancle(orderList);

		if(result>0) {
			System.out.println("DB 삭제성공");
		}
		if(result1>0) {
			System.out.println("Pay DB 삭제성공");
		}
		
		return result;
	}
	
	@GetMapping(value = "adminDetail")
	public ModelAndView getMemberList(LicenseMembersDTO licenseMembersDTO) throws Exception{
		List<LicenseMembersDTO> ds = licenseMembersService.getMemberList(licenseMembersDTO);
		
		ModelAndView mv = new ModelAndView();
		System.out.println(licenseMembersDTO);
		mv.addObject("userList", ds);
		mv.setViewName("/admin/adminDetail");
		
		return mv;
	}
	
	@PostMapping(value = "adminDetail")
	@ResponseBody
	public int getMemberList(AdminRolesDTO adminRoleDTO) throws Exception{
		
	
		System.out.println(adminRoleDTO.getRoleNum());
		System.out.println(adminRoleDTO.getUserName());
		
		int result = adminService.setUpdateRole(adminRoleDTO);
		System.out.println(result);
		if(result>0) {
			System.out.println("성공");
		}
		
		
		return result;
	}
	
	@GetMapping(value = "adminOrderInfo")
	public void myOrder(OrderDTO orderDTO,HttpSession session, Model model,
			@RequestParam(value = "pagingNum", required = false, defaultValue = "1") String pagingNum) throws Exception{

		System.out.println("myorderList");
		
		List<Long> codeList = orderService.MyOrderAdminCount(); 
		
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
		Map<Long, List> orderMap = orderService.getAdminOrderList(limitList);
		
		UserPageMaker pm = new UserPageMaker();
		pm.setCri(cri);
		pm.setTotalCount(codeList.size());

		model.addAttribute("orderMap", orderMap);
		model.addAttribute("pagingNum", pagingNum);
		model.addAttribute("pm", pm);
	}
	
	
	
//    private final PaymentService paymentService;

//    @PostMapping("/record")
//    public ResponseEntity<?> paymentRecordGenerateBeforePg(@Valid @RequestBody PaymentRequest paymentRequest, @CurrentUser User user) {
//        PaymentResponse paymentResponse = paymentService.paymentRecordGenerateBeforePg(paymentRequest, user);
//
//        return ResponseEntity.ok(paymentResponse);
//    }



	
	
	
	
}
