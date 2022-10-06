package com.iu.home.test;

import static org.junit.Assert.*;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.iu.home.licensemembers.LicenseMembersDAO;
import com.iu.home.licensemembers.LicenseMembersDTO;
import com.iu.home.util.MyAbstractTest;

public class testJoin1 extends MyAbstractTest {

	@Autowired
	private LicenseMembersDAO licenseMembersDAO;
	
//	@Test
//	public void test() throws Exception{
//		LicenseMembersDTO licenseMembersDTO = new LicenseMembersDTO();
//		licenseMembersDTO.setAreaName("금천구");
//		licenseMembersDTO.setUserName("test");
//		licenseMembersDTO.setPassword("test12");
//		licenseMembersDTO.setName("test");
//		licenseMembersDTO.setEmail("test@naver.com");
//		licenseMembersDTO.setPhone("010");
//		
//		
//		licenseMembersDAO.setJoin(licenseMembersDTO);
//	}

}
