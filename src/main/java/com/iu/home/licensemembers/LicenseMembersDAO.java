package com.iu.home.licensemembers;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Repository;

@Repository
public class LicenseMembersDAO {

	@Autowired
	private SqlSession sqlSession;
	
	private final String NAMESPACE="com.iu.home.licensemembers.LicenseMembersDAO.";
	
	
	public int setJoin(LicenseMembersDTO licenseMembersDTO) throws Exception{
		
		
		return sqlSession.insert(NAMESPACE+"setJoin", licenseMembersDTO);
	}
	
	public int setSimpleJoin(SimpleMembersDTO simpleMembersDTO) throws Exception{
		
		
		return sqlSession.insert(NAMESPACE+"setSimpleJoin", simpleMembersDTO);
	}
	
	public SimpleMembersDTO  getsosialMyPage(SimpleMembersDTO  simpleMembersDTO) throws Exception{
		
		
		return sqlSession.selectOne(NAMESPACE+"getsosialMyPage", simpleMembersDTO);
	}
	
	public int setRole(LicenseMembersDTO licenseMembersDTO) throws Exception{
		
		
		return sqlSession.insert(NAMESPACE+"setRole", licenseMembersDTO);
	}
	
	public LicenseMembersDTO getLogin(LicenseMembersDTO licenseMembersDTO) throws Exception{
		
		return sqlSession.selectOne(NAMESPACE+"getLogin", licenseMembersDTO);
	}
	
	
	public LicenseMembersDTO getMyPage(LicenseMembersDTO licenseMembersDTO) throws Exception{
		
		
		return sqlSession.selectOne(NAMESPACE+"getMyPage", licenseMembersDTO);
	}
	

	
}
