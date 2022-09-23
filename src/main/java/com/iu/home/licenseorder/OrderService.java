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

import okhttp3.Response;

@Service
public class OrderService {
	
	//---------------------환불, 결제 토큰생성
	@Value("7017488345532835")
	private String impKey;

	@Value("r0p7EfkrcMnSmuoEyspvckZJ4fhZhuPizl5sbCYonZWDUovs728pTqMwSfJmaDRqs6P7RYU0Z2Eh4xYM")
	private String impSecret;
	
	
//	private class Response {
//		private PayDTO response;
//	}
	
	
	
	

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
	
//	public int paymentInfo(PayDTO payDTO, String imp_uid, String access_token) throws Exception {
//	    HttpsURLConnection conn = null;
//	 
//	    URL url = new URL("https://api.iamport.kr/payments/" + imp_uid);
//	 
//	    conn = (HttpsURLConnection) url.openConnection();
//	 
//	    conn.setRequestMethod("GET");
//	    conn.setRequestProperty("Authorization", access_token);
//	    conn.setDoOutput(true);
//	 
//	    BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream(), "utf-8"));
//	    
//	    Gson gson = new Gson();
//	    
//	    Response response = gson.fromJson(br.readLine(), Response.class);
//	    
//	    br.close();
//	    conn.disconnect();
//	    
//	    return response.(payDTO.getPayAmount());
//	}
	
	public void payMentCancle(String access_token, String imp_uid, int amount, String reason) throws Exception  {
		System.out.println("결제 취소");
		
		System.out.println(access_token);
		
		System.out.println(imp_uid);
		
		HttpsURLConnection conn = null;
		URL url = new URL("https://api.iamport.kr/payments/cancel");
 
		conn = (HttpsURLConnection) url.openConnection();
 
		conn.setRequestMethod("POST");
 
		conn.setRequestProperty("Content-type", "application/json");
		conn.setRequestProperty("Accept", "application/json");
		conn.setRequestProperty("Authorization", access_token);
 
		conn.setDoOutput(true);
		
		JsonObject json = new JsonObject();
 
		json.addProperty("reason", reason);
		json.addProperty("imp_uid", imp_uid);
		json.addProperty("amount", amount);
		json.addProperty("checksum", amount);
 
		BufferedWriter bw = new BufferedWriter(new OutputStreamWriter(conn.getOutputStream()));
 
		bw.write(json.toString());
		bw.flush();
		bw.close();
		
		BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream(), "utf-8"));
 
		br.close();
		conn.disconnect();
		
		
	}
	
	
	
	
	
	
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
		

	// 내 주문 목록
	public Map<Long, List> getMyOrderList(String num, List limitList) throws Exception {
		
		return orderDAO.getMyOrderList(num, limitList);
	}
	
	public int getLastOrderNum() throws Exception{
		
		return orderDAO.getLastOrderNum();
	}
	
	
}
