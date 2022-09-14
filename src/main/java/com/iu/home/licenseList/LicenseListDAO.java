package com.iu.home.licenseList;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class LicenseListDAO {
	
	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE = "com.iu.home.licenseList.LicenseListDAO.";
	
	public List<LicenseListDTO> getList() throws Exception{
		return sqlSession.selectList(NAMESPACE+"getList");
	}

}
