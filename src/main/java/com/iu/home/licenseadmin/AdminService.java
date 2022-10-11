package com.iu.home.licenseadmin;

import java.text.ParseException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.iu.home.licensemembers.AdminRoleDTO;
import com.iu.home.licenseorder.OrderDTO;
import com.iu.home.licenseorder.OrderService;
import com.iu.home.licenseorder.PayDTO;
import com.iu.home.licenseorder.PayService;

@Service
public class AdminService {

	@Autowired
	private AdminDAO adminDAO;
	
	@Autowired
	private PayService payService;
	
	

	public int orderCancle(OrderDTO orderList) throws Exception {
		System.out.println("1 : " + orderList);
		System.out.println("2 : " + orderList.getOrderNum());
		System.out.println("3 : " + orderList.getImp_uid());
		if(!orderList.getImp_uid().equals("")) {
			String token = payService.getToken(); 
			Long price = orderList.getTotalPrice();
			Long refundPrice = price ;
			System.out.println("Test ss");
			payService.payMentCancle(token, orderList.getImp_uid(), refundPrice+"", "환불");
			System.out.println("Test ss2222");
		}
		
		return adminDAO.orderCancle((orderList.getOrderNum()));
	}
	
	public int setUpdateRole(AdminRolesDTO adminRolesDTO) throws Exception {
		
		return adminDAO.setUpdateRole(adminRolesDTO);
	}

	public AdminDTO adminList(AdminDTO adminDTO) throws Exception {
		
		return adminDAO.adminList(adminDTO);
	}
	
	public int payMentCancle(PayDTO payDTO) throws Exception{
		
		
		return adminDAO.payMentCancle(payDTO.getOrderNum());
	}
	

}
