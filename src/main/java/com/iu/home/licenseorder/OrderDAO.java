package com.iu.home.licenseorder;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.ResponseBody;

@Repository
public class OrderDAO {

	@Autowired
	private SqlSession sqlSession;
	
	private final String NAMESPACE="com.iu.home.licenseorder.OrderDAO.";
	
	
	public int insert_pay(OrderDTO orderDTO) throws Exception{
		
		
		return sqlSession.insert(NAMESPACE+"insert_pay", orderDTO);
	}
	
	public int insert_payinfo(PayDTO payDTO) throws Exception{
		
		
		return sqlSession.insert(NAMESPACE+"insert_payinfo", payDTO);
	}
	
	public PayDTO getLastPay(PayDTO payDTO) throws Exception{
		
		return sqlSession.selectOne(NAMESPACE+"getLastPay", payDTO);
	}
	
	public PayDTO getPay(int payNum) throws Exception{
		
		return sqlSession.selectOne(NAMESPACE+"getPay", payNum);
	}
	
	// 주문개수
		public List<Integer> myOrderCount(Long num) throws Exception {		
			return sqlSession.selectList(NAMESPACE + "orderCount", num);
		}

	// 주문 목록
	public Map<Integer, List> getMyOrderList(String num, List<Integer> limitList) throws Exception {	
			
		Map<Integer, List> orderMap = new HashMap<Integer, List>();
		for(int code: limitList) {
				List<OrderDTO> orderList = sqlSession.selectList(NAMESPACE + "myOrderList", code);
				orderMap.put(code, orderList);
		}

		return orderMap;
	}
}
