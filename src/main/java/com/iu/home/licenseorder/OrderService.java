package com.iu.home.licenseorder;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class OrderService {

	@Autowired
	private OrderDAO orderDAO;
	
	public int insert_pay(OrderDTO orderDTO) throws Exception{
		
		return orderDAO.insert_pay(orderDTO);
	}
	
}
