package com.iu.home.licenseInfo;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value="/info/*")
public class InfoController {
	
	@GetMapping("aaa")
	public ModelAndView getInfo() throws Exception{
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("/info/aaa");
		return mv;
	}
	
}
