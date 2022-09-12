package com.iu.home.license.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/admin/")
public class adminController {

	
	@RequestMapping(value = "adminTest", method = RequestMethod.GET)
	public void setadmin() throws Exception{
		
		System.out.println("admintest");
		
	}
}
