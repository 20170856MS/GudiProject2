package com.iu.home.licenseorder;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class OrderService {

	@Autowired
	private OrderDAO orderDAO;
	
	public int insert_pay(OrderDTO orderDTO) throws Exception{
		
		return orderDAO.insert_pay(orderDTO);
	}
	
	public int insert_payinfo(PayDTO payDTO) throws Exception{
		
		return orderDAO.insert_payinfo(payDTO);
	}
	
	public PayDTO getLastPay(PayDTO payDTO) throws Exception{
		
		return orderDAO.getLastPay(payDTO);
	}
	
	//주문정보 가져오기
	public PayDTO getPay(int payNum) throws Exception{
		
		return orderDAO.getPay(payNum);
	}
	
	// 총 주문 개수
	public List<Long> MyOrderCount(String num) throws Exception {
		
		return orderDAO.myOrderCount(num);
	}
		

	// 내 주문 목록
	public Map<Long, List> getMyOrderList(String num, List limitList) throws Exception {
		
		return orderDAO.getMyOrderList(num, limitList);
	}
	
	public int getLastOrderNum() throws Exception{
		
		return orderDAO.getLastOrderNum();
	}
	
	
}
