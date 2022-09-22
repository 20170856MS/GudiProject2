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

import com.google.gson.Gson;
import com.google.gson.JsonObject;

@Service
public class OrderService {
	
	@Value("${imp_key}")
	private String impKey;

	@Value("${imp_secret}")
	private String impSecret;

	public String getToken() throws Exception {

		HttpsURLConnection conn = null;

		URL url = new URL("https://api.iamport.kr/users/getToken");

		conn = (HttpsURLConnection) url.openConnection();

		conn.setRequestMethod("POST");
		conn.setRequestProperty("Content-type", "application/json");
		conn.setRequestProperty("Accept", "application/json");
		conn.setDoOutput(true);
		JsonObject json = new JsonObject();

		json.addProperty("imp_key", impKey);
		json.addProperty("imp_secret", impSecret);
		
		BufferedWriter bw = new BufferedWriter(new OutputStreamWriter(conn.getOutputStream()));
		
		bw.write(json.toString());
		bw.flush();
		bw.close();

		BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream(), "utf-8"));

		Gson gson = new Gson();

		String response = gson.fromJson(br.readLine(), Map.class).get("response").toString();
		
		System.out.println(response);

		String token = gson.fromJson(response, Map.class).get("access_token").toString();

		br.close();
		conn.disconnect();

		return token;
	}
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
