package com.iu.home.studyCafe;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

public class cafeController {
	
	@Controller
	@RequestMapping(value = "/studyCafe/*")
	public class mapController {

		
		@RequestMapping(value = "cafeList", method = RequestMethod.GET)
		public void setadmin() throws Exception{
			
			System.out.println("cafeList");
			
		}
	}
}
