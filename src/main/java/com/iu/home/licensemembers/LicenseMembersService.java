package com.iu.home.licensemembers;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class LicenseMembersService {

	
	
	@Autowired
	private LicenseMembersDAO licenseMembersDAO;
	
	public int setJoin(LicenseMembersDTO licenseMembersDTO) throws Exception{
	
		return licenseMembersDAO.setJoin(licenseMembersDTO);
	}
	public int setRole(LicenseMembersDTO licenseMembersDTO) throws Exception{
		
		return licenseMembersDAO.setRole(licenseMembersDTO);
	}
	
	public int setSimpleJoin(SimpleMembersDTO simpleMembersDTO) throws Exception{
		
		return licenseMembersDAO.setSimpleJoin(simpleMembersDTO);
	}
	
	public SimpleMembersDTO getsosialMyPage(SimpleMembersDTO simpleMembersDTO) throws Exception{
		
		
		return licenseMembersDAO.getsosialMyPage(simpleMembersDTO);
	}
	
	public LicenseMembersDTO getLogin(LicenseMembersDTO licenseMembersDTO) throws Exception{
		
		return licenseMembersDAO.getLogin(licenseMembersDTO);
		
	}
	
	public List<LicenseMembersDTO> getMemberList(LicenseMembersDTO licenseMembersDTO) throws Exception{
		
		return licenseMembersDAO.getMemberList(licenseMembersDTO);
		
	}
	
	
	public LicenseMembersDTO getMyPage(LicenseMembersDTO licenseMembersDTO) throws Exception{
		
		
		return licenseMembersDAO.getMyPage(licenseMembersDTO);
	}

	
}
