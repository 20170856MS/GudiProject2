package com.iu.home.licenseList;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class LicenseListService {
	
	@Autowired
	private LicenseListDAO licenseListDAO;
	
	public List<LicenseListDTO> getList() throws Exception{
		
		return licenseListDAO.getList();
	}

	public LicenseListDTO getDetail(LicenseListDTO licenseListDTO) throws Exception{
		
		return licenseListDAO.getDetail(licenseListDTO);
		
	}
}
