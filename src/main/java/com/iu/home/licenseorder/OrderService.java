package com.iu.home.licenseorder;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.URL;
import java.util.List;
import java.util.Map;

import javax.net.ssl.HttpsURLConnection;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import com.fasterxml.jackson.annotation.JsonGetter;
import com.google.gson.Gson;
import com.google.gson.JsonObject;

import lombok.Getter;
import lombok.ToString;
import okhttp3.Response;

@Service
public class OrderService {
	

	
	//------------------------------------------------iamport 주문 
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
	
	public List<Long> MyOrderAdminCount() throws Exception {
		
		return orderDAO.myOrderAdminCount();
	}
		

	// 내 주문 목록
	public Map<Long, List> getMyOrderList(String num, List limitList) throws Exception {
		
		return orderDAO.getMyOrderList(num, limitList);
	}
	
	
	public Map<Long, List> getAdminOrderList(List limitList) throws Exception {
		
		return orderDAO.getAdminOrderList(limitList);
	}
	
	public int getLastOrderNum() throws Exception{
		
		return orderDAO.getLastOrderNum();
	}
	
	
}
