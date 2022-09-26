package com.iu.home.licenseList;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.iu.home.util.Pager;

@Controller
@RequestMapping(value="/info/*")
public class LicenseController {
	
	@Autowired
	private LicenseService licenseService;
	
	@GetMapping("main")
	public ModelAndView getInfo(Pager pager) throws Exception{
		ModelAndView mv = new ModelAndView();
		pager.setPerPage(8L);
		
		List<LicenseDTO> ar = licenseService.getList(pager);

		mv.addObject("list",ar);
		mv.addObject("pager",pager);
		mv.setViewName("/info/main");
		return mv;
	}
	
	@GetMapping("detail")
	public ModelAndView getDetail(LicenseDTO licenseDTO) throws Exception{
		ModelAndView mv = new ModelAndView();

		int result = licenseService.setHits(licenseDTO);
		LicenseDTO name=licenseService.getLicenseName(licenseDTO);
		List<LicenseDTO> detailBook = licenseService.getDetailBook(licenseDTO);
		List<LicenseDTO> detailVideo = licenseService.getDetailVideo(licenseDTO);
		List<LicenseDTO> detailJob = licenseService.getDetailJob(licenseDTO);
		List<LicenseDTO> detailSchedule = licenseService.getDetailSchedule(licenseDTO);
				System.out.println(detailSchedule);
				
		mv.addObject("name",name);
		mv.addObject("detailBook",detailBook);
		mv.addObject("detailVideo",detailVideo);
		mv.addObject("detailJob",detailJob);
		mv.addObject("detailSchedule",detailSchedule);
		mv.setViewName("/info/detail");
		return mv;	
	}
	
	@GetMapping("update")
	public ModelAndView setUpdate(LicenseDTO licenseDTO) throws Exception{
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("/info/update");
		return mv;
	}
	
	@GetMapping("add")
	public ModelAndView setAdd(LicenseDTO licenseDTO) throws Exception{
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("/info/add");
		return mv;
	}
}
