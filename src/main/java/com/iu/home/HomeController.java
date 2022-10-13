package com.iu.home;

import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import com.iu.home.licenseList.LicenseDTO;
import com.iu.home.licenseList.LicenseLikeDTO;
import com.iu.home.licenseList.LicenseService;
import com.iu.home.licenseList.ScheduleDTO;
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
	 
	@Autowired
	private LicenseService licenseService;
	 
	@GetMapping("/")
	public ModelAndView home (HttpServletRequest request,Locale locale, Pager pager,Pager pager1) throws Exception{
		logger.info("Welcome home! The client locale is {}.", locale);
		ModelAndView mv = new ModelAndView();
		HomeDTO homeDTO = new HomeDTO();
		//top10
		pager.setPerPage(10L);
		List<HomeDTO> ar = homeService.getTopList(pager);
		
		//자격증
		pager.setPerPage(50L);
		List<HomeDTO> ar1 = homeService.getList(pager1);
		
		List<HomeDTO> schedule = homeService.getDetailSchedule();
		List<HomeDTO> schedule1 = homeService.getDetailSchedule1();
		
//		List<HomeDTO> ds = new ArrayList<HomeDTO>();
//		
//		for(int i = 0 ; i<ar1.size(); i++) {
//			homeDTO.setLicenseNum(ar1.get(i).getLicenseNum());
//			ds = homeService.getDetailSchedule(homeDTO);
//			mv.addObject("detailSchedule"+i,ds);
//			mv.setViewName("index");
//		}
		
//		homeDTO.setLicenseNum(ar1.get(0).getLicenseNum());
//		System.out.println(homeDTO.getLicenseNum());
//		ds = homeService.getDetailSchedule(homeDTO);
//
//		mv.addObject("detailSchedule",ds);
//		

		mv.addObject("topList",ar);
		mv.addObject("list",ar1);
		mv.addObject("pager",pager);
		mv.addObject("schedule",schedule);
		mv.addObject("schedule1",schedule1);
		
		mv.setViewName("index");
		
		//달력 일정 추가 시작
		HttpSession session =request.getSession();
		try {
			Long num = Long.valueOf(String.valueOf(session.getAttribute("saveNum")));
			LicenseLikeDTO licenseLikeDTO = new LicenseLikeDTO();
			licenseLikeDTO.setNum(num);
			
			List<LicenseDTO> ar2 = licenseService.getListLikes(licenseLikeDTO);
			
			for(int i=0;i<ar2.size();i++) {
				List<ScheduleDTO> j = new ArrayList(); 
				j = licenseService.getDetailSchedule(ar2.get(i));//
				ar2.get(i).setScheduleName1(j.get(0).getScheduleName());
				ar2.get(i).setScheduleDate1(j.get(0).getScheduleDate());
				ar2.get(i).setScheduleName2(j.get(1).getScheduleName());
				ar2.get(i).setScheduleDate2(j.get(1).getScheduleDate());				
			}
			mv.addObject("ar2",ar2);
		} catch (Exception e) {
		}
		//달력 일정 추가 끝
		
		//homeDTO.DATE  -> DATE
		//Date date = new Date();
		//DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		//String formattedDate = dateFormat.format(date);
	
		return mv;
	}
	
}
