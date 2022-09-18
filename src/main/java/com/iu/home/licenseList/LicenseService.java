package com.iu.home.licenseList;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class LicenseService {
	
	@Autowired
	private LicenseDAO licenseListDAO;
	
	public List<LicenseDTO> getList() throws Exception{
		
		return licenseListDAO.getList();
	}
	
	public List<LicenseDTO> getDetail(LicenseDTO licenseDTO) throws Exception{
		
		return licenseListDAO.getDetail(licenseDTO);
	}
	
	

}
