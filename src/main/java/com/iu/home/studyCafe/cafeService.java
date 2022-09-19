package com.iu.home.studyCafe;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class cafeService {
	
	@Autowired
	private cafeDAO cafeDAO;
	
	public List<cafeDTO> getList() throws Exception{
		return cafeDAO.getList();
	}
	
	public cafeDetailDTO getDetail(cafeDTO cafeDTO) throws Exception{
		return cafeDAO.getDetail(cafeDTO);
	}
	
	
}
