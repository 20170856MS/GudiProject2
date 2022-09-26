package com.iu.home.licenseAdmin;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.iu.home.licenseorder.OrderDTO;

@Repository
public class AdminDAO {

	@Autowired
	private SqlSession sqlSession;
	
	private final String NAMESPACE="com.iu.home.licenseAdmin.AdminDAO.";
	

	public int orderCancle(Long orderNum) {
		
		return sqlSession.update(NAMESPACE+"orderCancle", orderNum);
	}
}
