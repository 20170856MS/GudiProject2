package com.iu.home;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.iu.home.util.Pager;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	 @Autowired
	 private HomeService homeService;
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	 
	@GetMapping("/")
	@ResponseBody
	public ModelAndView home (Locale locale, Pager pager,HomeDTO homeDTO) throws Exception{
		logger.info("Welcome home! The client locale is {}.", locale);
		ModelAndView mv = new ModelAndView();
		pager.setPerPage(8L);
		
		List<HomeDTO> ar = homeService.getList(pager);
		System.out.println(homeDTO);
		
		for(int i=0; i<ar.size();i++) {
			System.out.println(ar.get(i).getLicenseNum());
			homeDTO.setLicenseNum(ar.get(i).getLicenseNum());
		}
		
		
		List<HomeDTO> ds = homeService.getDetailSchedule(homeDTO);
		ds.add(homeDTO);
		System.out.println(ds);
				
		mv.addObject("list",ar);
		mv.addObject("pager",pager);
		mv.addObject("detailSchedule",ds);
		mv.setViewName("index");
		
		//homeDTO.DATE  -> DATE
		//Date date = new Date();
		//DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		//String formattedDate = dateFormat.format(date);
	
		//test
//		model.addAttribute("Time", scheduleDTO);
		return mv;
	}
	
//	@GetMapping("detail")
//	public ModelAndView getDetail(HomeDTO homeDTO) throws Exception{
//		ModelAndView mv = new ModelAndView();
//
//		int result = homeService.setHits(homeDTO);
//		HomeDTO name=homeService.getLicenseName(homeDTO);
//		List<HomeDTO> detailBook = homeService.getDetailBook(homeDTO);
//		List<HomeDTO> detailVideo = homeService.getDetailVideo(homeDTO);
//		List<HomeDTO> detailJob = homeService.getDetailJob(homeDTO);
//		List<HomeDTO> detailSchedule = homeService.getDetailSchedule(homeDTO);
//				System.out.println(detailSchedule);
//				
//		mv.addObject("name",name);
//		mv.addObject("detailBook",detailBook);
//		mv.addObject("detailVideo",detailVideo);
//		mv.addObject("detailJob",detailJob);
//		mv.addObject("detailSchedule",detailSchedule);
//		mv.setViewName("/info/detail");
//		return mv;	
//	}
	
}
