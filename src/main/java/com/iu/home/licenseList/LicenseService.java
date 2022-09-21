package com.iu.home.licenseList;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.iu.home.util.Pager;

@Service
public class LicenseService {
	
	@Autowired
	private LicenseDAO licenseDAO;
	
	public List<LicenseDTO> getList(Pager pager) throws Exception{
		Long totalCount = licenseDAO.getCount(pager);
		pager.getNum(totalCount);
		pager.getRowNum();
		
		return licenseDAO.getList(pager);
	}
	public Long getCount(Pager pager) throws Exception{
		return licenseDAO.getCount(pager);
	}
	public int setHits(LicenseDTO licenseDTO) throws Exception{
		return licenseDAO.setHits(licenseDTO);
	}
	
	public LicenseDTO getLicenseName(LicenseDTO licenseDTO) throws Exception{
		return licenseDAO.getLicenseName(licenseDTO);
	}
	
	public List<LicenseDTO> getDetailBook(LicenseDTO licenseDTO) throws Exception{
		
		return licenseDAO.getDetailBook(licenseDTO);
	}
	
	public List<LicenseDTO> getDetailVideo(LicenseDTO licenseDTO) throws Exception{
		
		return licenseDAO.getDetailVideo(licenseDTO);
	}
	
	public List<LicenseDTO> getDetailJob(LicenseDTO licenseDTO) throws Exception{
		
		return licenseDAO.getDetailJob(licenseDTO);
	}
	
	public List<LicenseDTO> getDetailSchedule(LicenseDTO licenseDTO) throws Exception{
		
		return licenseDAO.getDetailSchedule(licenseDTO);
	}
	
	

}
