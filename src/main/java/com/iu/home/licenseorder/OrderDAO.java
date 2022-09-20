package com.iu.home.licenseorder;

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
}
