package com.iu.home.test;

import static org.junit.Assert.*;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.iu.home.studyCafe.reservationDTO;
import com.iu.home.util.MyAbstractTest;

public class cafeTest extends MyAbstractTest{
	
	
	@Autowired
	private com.iu.home.studyCafe.cafeDAO cafeDAO;
	
//	@Test
//	public void test() throws Exception {
//		reservationDTO reservationDTO = new reservationDTO();
//		reservationDTO.setStartDate("2022/09/23");
//		reservationDTO.setEndDate("2022/09/23");
//		reservationDTO.setStartTime("8:00am");
//		reservationDTO.setEndTime("10:00am");
//		
//		cafeDAO.addDate(reservationDTO);
//		
//	}
	@Test
	public void test() throws Exception{
		reservationDTO reservationDTO = new reservationDTO();
		reservationDTO.setRoomName("공부방1");
		reservationDTO.setSeDate("2022-09-30");
		reservationDTO.setSeTime("18:00,19:00,20:00,21:00");
		
		cafeDAO.addDate(reservationDTO);
		
	}

}
