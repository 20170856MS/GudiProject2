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
		public List<Long> myOrderCount(String num) throws Exception {		
			return sqlSession.selectList(NAMESPACE + "orderCount", num);
		}

	// 주문 목록
	public Map<Long, List> getMyOrderList(String num, List<Long> limitList) throws Exception {	

		
		Map<Long, List> orderMap = new HashMap<Long, List>();
		for(Long code: limitList) {
				List<OrderDTO> orderList = sqlSession.selectList(NAMESPACE + "myOrderList", code);
				orderMap.put(code, orderList);
		}

		return orderMap;
	}
	
	public int getLastOrderNum() throws Exception {
		Object result = sqlSession.selectOne(NAMESPACE + "getLastOrderNum");
		
		// 주문 테이블이 비어 있어서 null이 리턴되면 1, 그 외엔 정수형 데이터 리턴
		// 새로 생길 주문의 주문번호가 될 값이라서 최대값+1 리턴
		return (result == null) ? 1 : (Integer)result + 1;
	}
}
