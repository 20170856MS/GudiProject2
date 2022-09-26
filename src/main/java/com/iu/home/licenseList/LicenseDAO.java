package com.iu.home.licenseList;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.iu.home.util.Pager;



@Repository
public class LicenseDAO {
	
	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE = "com.iu.home.licenseList.LicenseDAO.";
	
	public List<LicenseDTO> getList(Pager pager) throws Exception{
		return sqlSession.selectList(NAMESPACE+"getList",pager);
	}
	public Long getCount(Pager pager) throws Exception{
		return sqlSession.selectOne(NAMESPACE+"getCount",pager);
	}
	public int setHits(LicenseDTO licenseDTO) throws Exception{
		return sqlSession.update(NAMESPACE+"setHits",licenseDTO);
	}
	public LicenseDTO getLicenseName(LicenseDTO licenseDTO) throws Exception{
		return sqlSession.selectOne(NAMESPACE+"getLicenseName",licenseDTO);
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
	
	public List<ScheduleDTO> getDetailSchedule(LicenseDTO licenseDTO) throws Exception{
		return sqlSession.selectList(NAMESPACE+"getDetailSchedule",licenseDTO);	
	}
}
