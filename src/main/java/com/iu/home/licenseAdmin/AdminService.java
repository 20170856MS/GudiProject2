package com.iu.home.licenseAdmin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.iu.home.licenseorder.OrderDTO;
import com.iu.home.licenseorder.OrderService;

@Service
public class AdminService {

	@Autowired
	private AdminDAO adminDAO;
	
	@Autowired
	private OrderService payment;
	
	public int orderCancle(OrderDTO orderDTO, String cancleReason) throws Exception {
		if(!orderDTO.getImp_uid().equals("")) {
			String token = payment.getToken(); 
			Long price = orderDTO.getTotalPrice();
			Long refundPrice = price ;
			
			payment.payMentCancle(token, orderDTO.getImp_uid(), refundPrice);
		}
		
		return adminDAO.orderCancle(orderDTO.getOrderNum());
	}
	

}
