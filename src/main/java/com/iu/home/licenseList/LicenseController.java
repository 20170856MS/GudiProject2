package com.iu.home.licenseList;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value="/info/*")
public class LicenseController {
	
	@Autowired
	private LicenseService licenseListService;
	
	@GetMapping("main")
	public ModelAndView getInfo() throws Exception{
		ModelAndView mv = new ModelAndView();
		
		List<LicenseDTO> ar = licenseListService.getList();

		mv.addObject("list",ar);
		mv.setViewName("/info/main");
		return mv;
	}
	
	@GetMapping("detail")
	public ModelAndView getDetail(LicenseDTO licenseDTO) throws Exception{
		ModelAndView mv = new ModelAndView();
		
		List<LicenseDTO> ar = licenseListService.getDetail(licenseDTO);
		
		mv.addObject("detail",ar);
		mv.setViewName("/info/detail");
		return mv;	
	}
	
}
