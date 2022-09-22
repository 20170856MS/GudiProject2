package com.iu.home.studyCafe;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
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
	public ModelAndView cafeDetail(cafeDTO cafeDTO) throws Exception{
		System.out.println("cafeDetail");
		ModelAndView mv = new ModelAndView();
		cafeDetailDTO cafeDetailDTO = new cafeDetailDTO();
		
		cafeDetailDTO = cafeService.getDetail(cafeDTO);
		
		mv.setViewName("studyCafe/cafeDetail");
		mv.addObject("dto", cafeDetailDTO);
		return mv;
	}
	
	@RequestMapping(value = "reservation", method = RequestMethod.GET)
	public String cafeRoomList(cafeDetailDTO cafeDetailDTO, Model model, cafeDTO cafeDTO) throws Exception{
		
		cafeDetailDTO.getDetailNum();
		System.out.println(cafeDetailDTO.getDetailNum());
		List<cafeRoomDTO> ar = cafeService.getRoomList(cafeDetailDTO);
		
		model.addAttribute("roomList", ar);
		System.out.println(ar);
		return "studyCafe/reservation";
	}
	
	@RequestMapping(value = "map")
	public String map() throws Exception{
		
		return "studyCafe/map";
	}
	

	@RequestMapping(value="cafeList", method=RequestMethod.POST)
	public ModelAndView addDate(reservationDTO reservationDTO) throws Exception{
		ModelAndView mv = new ModelAndView();
		
		int result = cafeService.addDate(reservationDTO);
		
		mv.setViewName("redirect:./cafeList");
		return mv;
	}
	
	
	
}

