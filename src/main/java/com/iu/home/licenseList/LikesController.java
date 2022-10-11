package com.iu.home.licenseList;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value="/likes/*")
public class LikesController {
	
	@Autowired
	private LicenseService licenseService;
	
	
	@GetMapping("store")
	public ModelAndView getListLikes(HttpServletRequest request) throws Exception{
		ModelAndView mv = new ModelAndView();
		HttpSession session =request.getSession();
		LicenseLikeDTO licenseLikeDTO = new LicenseLikeDTO();
		Long num = Long.valueOf(String.valueOf(session.getAttribute("saveNum")));
		licenseLikeDTO.setNum(num);
		List<LicenseDTO> ar2 = licenseService.getListLikes(licenseLikeDTO);
		
		
		mv.addObject("list",ar2);
		mv.setViewName("/likes/store");
		return mv;
	}
	
	@PostMapping("setLikes")
	@ResponseBody
	public Map<String,Object> setLikes(ArrDTO arrDTO) throws Exception{
		Map<String,Object> map = new HashMap<String,Object>();
		
		
		int result = licenseService.setLikes(arrDTO);
		map.put("result", result);
		return map;
	}
	
	@PostMapping("setDelLikes")
	@ResponseBody
	public Map<String,Object> setDelLikes(HttpServletRequest request, ArrDTO arrDTO) throws Exception{
		Map<String,Object> map = new HashMap<String,Object>();		
		HttpSession session =request.getSession();

		Long num = Long.valueOf(String.valueOf(session.getAttribute("saveNum")));
		arrDTO.setNum(num);

		System.out.println(arrDTO.getLicenseNum());
		System.out.println(num);
		int result = licenseService.setDelLikes(arrDTO);
		
		map.put("result", result);
		return map;
	}
}
