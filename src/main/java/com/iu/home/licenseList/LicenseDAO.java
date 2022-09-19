package com.iu.home.licenseList;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class LicenseDAO {
	
	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE = "com.iu.home.licenseList.LicenseDAO.";
	
	public List<LicenseDTO> getList() throws Exception{
		return sqlSession.selectList(NAMESPACE+"getList");
	}
	
	public List<LicenseDTO> getDetailBook(LicenseDTO licenseDTO) throws Exception{
		return sqlSession.selectList(NAMESPACE+"getDetailBook",licenseDTO);	
	}

	public List<LicenseDTO> getDetailVideo(LicenseDTO licenseDTO) throws Exception{
		return sqlSession.selectList(NAMESPACE+"getDetailVideo",licenseDTO);	
	}
	
	public List<LicenseDTO> getDetailJob(LicenseDTO licenseDTO) throws Exception{
		return sqlSession.selectList(NAMESPACE+"getDetailJob",licenseDTO);	
	}
	
	public List<LicenseDTO> getDetailSchedule(LicenseDTO licenseDTO) throws Exception{
		return sqlSession.selectList(NAMESPACE+"getDetailSchedule",licenseDTO);	
	}
}
