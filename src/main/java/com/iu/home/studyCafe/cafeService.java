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
	
	public List<cafeRoomDTO> getRoomList(cafeDetailDTO cafeDetailDTO) throws Exception{
		return cafeDAO.getRoomList(cafeDetailDTO);
	}
	
	public int addDate(reservationDTO reservationDTO) throws Exception{
		return cafeDAO.addDate(reservationDTO);
	}
	
	public List<reListDTO> getReList(Long reserNum) throws Exception{
		return cafeDAO.getReList(reserNum);
	}
	
	public int updateSit(cafeRoomDTO cafeRoomDTO) throws Exception{
		return cafeDAO.updateSit(cafeRoomDTO);
	}
	
}
