package com.iu.home.studyCafe;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value = "/studyCafe/*")
public class cafeController {
	
	@Autowired
	private cafeService cafeService;
	
	@RequestMapping(value = "cafeList", method = RequestMethod.GET)
	public String list(Model model) throws Exception{
		System.out.println("cafeList");
		List<cafeDTO> ar = cafeService.getList();
		model.addAttribute("list", ar);
		
		return "studyCafe/cafeList";
	}
	
	@RequestMapping(value = "cafeDetail", method = RequestMethod.GET)
	public ModelAndView cafeDetail(cafeDetailDTO cafeDetailDTO) throws Exception{
		System.out.println("cafeDetail");
		ModelAndView mv = new ModelAndView();
		
		cafeDetailDTO = cafeService.getDetail(cafeDetailDTO);
		
		mv.setViewName("studyCafe/cafeDetail");
		mv.addObject("dto", cafeDetailDTO);
		
		return mv;
	}
}

