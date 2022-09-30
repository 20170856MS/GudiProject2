package com.iu.home;

import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
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
	public ModelAndView home (Locale locale, Pager pager,Pager pager1,HomeDTO homeDTO) throws Exception{
		logger.info("Welcome home! The client locale is {}.", locale);
		ModelAndView mv = new ModelAndView();
		//top10
		pager1.setPerPage(10L);
		List<HomeDTO> ar = homeService.getTopList(pager1);
		//자격증
		pager.setPerPage(50L);
		List<HomeDTO> ar1 = homeService.getList(pager);
		
		List<HomeDTO> ds = new ArrayList<HomeDTO>();
	
		System.out.println(homeDTO.getLicenseNum());
			
		homeDTO.setLicenseNum(ar.get(0).getLicenseNum());
		System.out.println(homeDTO.getLicenseNum());
		ds = homeService.getDetailSchedule(homeDTO);

		mv.addObject("detailSchedule",ds);
		
		mv.addObject("toplist",ar);
		mv.addObject("list",ar1);
		mv.addObject("pager",pager);
		
		mv.setViewName("index");
		
		//homeDTO.DATE  -> DATE
		//Date date = new Date();
		//DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		//String formattedDate = dateFormat.format(date);
	
		return mv;
	}
	
}
