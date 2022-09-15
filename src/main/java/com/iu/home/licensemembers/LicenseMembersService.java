package com.iu.home.licensemembers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class LicenseMembersService {

	
	@Autowired
	private LicenseMembersDAO licenseMembersDAO;
	
	public int setJoin(LicenseMembersDTO licenseMembersDTO) throws Exception{
		
		int result = licenseMembersDAO.setJoin(licenseMembersDTO);
	
		return result;
	}
	
	public LicenseMembersDTO getLogin(LicenseMembersDTO licenseMembersDTO) throws Exception{
		
		return licenseMembersDAO.getLogin(licenseMembersDTO);
		
	}
	
	public LicenseMembersDTO getMyPage(LicenseMembersDTO licenseMembersDTO) throws Exception{
		
		
		return licenseMembersDAO.getMyPage(licenseMembersDTO);
	}
}
