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
public class LicenseListController {
	
	@Autowired
	private LicenseListService licenseListService;
	
	@GetMapping("main")
	public ModelAndView getInfo() throws Exception{
		ModelAndView mv = new ModelAndView();
		
		List<LicenseListDTO> ar = licenseListService.getList();

		mv.addObject("list",ar);
		mv.setViewName("/info/main");
		return mv;
	}
	
	@GetMapping("detail")
	public ModelAndView getDetail(LicenseListDTO licenseListDTO) throws Exception{
		ModelAndView mv = new ModelAndView();
		
		licenseListDTO = licenseListService.getDetail(licenseListDTO);
		mv.addObject("detail",licenseListDTO);
		mv.setViewName();
		return mv;	
	}
	
}
