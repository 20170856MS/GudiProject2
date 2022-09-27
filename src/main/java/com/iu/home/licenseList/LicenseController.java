package com.iu.home.licenseList;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
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
		
		List<LicenseDTO> ar = licenseService.getList(pager);//여러자격증

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
		List<ScheduleDTO> detailSchedule = licenseService.getDetailSchedule(licenseDTO);
		
		mv.addObject("name",name);
		mv.addObject("detailBook",detailBook);
		mv.addObject("detailVideo",detailVideo);
		mv.addObject("detailJob",detailJob);
		mv.addObject("detailSchedule",detailSchedule);
		mv.setViewName("/info/detail");
		return mv;	
	}
	@GetMapping("detailAjax")
	@ResponseBody
	public Map<String,Object> getDetailAjax(LicenseDTO licenseDTO) throws Exception{
		
		List<ScheduleDTO> ds = licenseService.getDetailSchedule(licenseDTO);
		List<LicenseDTO> db = licenseService.getDetailBook(licenseDTO);
		List<LicenseDTO> dv = licenseService.getDetailVideo(licenseDTO);
		List<LicenseDTO> dj = licenseService.getDetailJob(licenseDTO);
		
		Map<String,Object> map = new HashMap<String, Object>();
		map.put("ds", ds);
		map.put("db", db);
		map.put("dv", dv);
		map.put("dj", dj);
		return map;
	}
	@GetMapping("getScheduleAjax")
	@ResponseBody
	public Map<String,Object> getScheduleAjax(LicenseDTO licenseDTO) throws Exception{
		
		List<ScheduleDTO> sa = licenseService.getDetailSchedule(licenseDTO);
		
		Map<String,Object> map = new HashMap<String, Object>();
		map.put("sa", sa);
		return map;
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
