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
	
	public List<LicenseDTO> getDetailBook(LicenseDTO licenseDTO) throws Exception{
		
		return licenseListDAO.getDetailBook(licenseDTO);
	}
	
	public List<LicenseDTO> getDetailVideo(LicenseDTO licenseDTO) throws Exception{
		
		return licenseListDAO.getDetailVideo(licenseDTO);
	}
	
	public List<LicenseDTO> getDetailJob(LicenseDTO licenseDTO) throws Exception{
		
		return licenseListDAO.getDetailJob(licenseDTO);
	}
	
	public List<LicenseDTO> getDetailSchedule(LicenseDTO licenseDTO) throws Exception{
		
		return licenseListDAO.getDetailSchedule(licenseDTO);
	}
	
	

}
