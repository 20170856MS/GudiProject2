package com.iu.home.licensemembers;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
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
	
	public LicenseMembersDTO getPwdCheck(String userName) throws Exception{
		
		return licenseMembersDAO.getPwdCheck(userName);
		
	}
	
	public void modifyInfo(String userName, String valueType, String value) {
	    Map<String, Object> map = new HashMap<String, Object>();
	    map.put("userName", userName);
	    map.put("valueType", valueType);
	    map.put("value", value);
	    
	    licenseMembersDAO.modifyInfo(map);
	}
	
	
	public List<LicenseMembersDTO> getMemberList(LicenseMembersDTO licenseMembersDTO) throws Exception{
		
		return licenseMembersDAO.getMemberList(licenseMembersDTO);
		
	}
	
	public LicenseMembersDTO getNameCheck(LicenseMembersDTO licenseMembersDTO) throws Exception{
		
		return licenseMembersDAO.getNameCheck(licenseMembersDTO);
		
	}
	
	
	public LicenseMembersDTO getMyPage(LicenseMembersDTO licenseMembersDTO) throws Exception{
		
		
		return licenseMembersDAO.getMyPage(licenseMembersDTO);
	}
	
	public LicenseMembersDTO getFindId(LicenseMembersDTO licenseMembersDTO) throws Exception{
		
		
		return licenseMembersDAO.getFindId(licenseMembersDTO);
	}

	
}
