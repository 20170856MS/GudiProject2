package com.iu.home.studyCafe;

import java.net.http.HttpRequest;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value = "/studyCafe/*")
public class cafeController {
	
	@Autowired
	private cafeService cafeService;
	
	@RequestMapping(value = "cafeList", method = RequestMethod.GET)
	public String list(Model model) throws Exception{
		System.out.println("cafeList");
		List<CafeDTO> ar = cafeService.getList();
		model.addAttribute("list", ar);
		
		return "studyCafe/cafeList";
	}
	
	@RequestMapping(value = "cafeDetail", method = RequestMethod.GET)
	public ModelAndView cafeDetail(CafeDTO cafeDTO) throws Exception{
		System.out.println("cafeDetail");
		ModelAndView mv = new ModelAndView();
		CafeDetailDTO cafeDetailDTO = new CafeDetailDTO();
		
		cafeDetailDTO = cafeService.getDetail(cafeDTO);
		
		mv.setViewName("studyCafe/cafeDetail");
		mv.addObject("dto", cafeDetailDTO);
		System.out.println(cafeDetailDTO.getLatitude());
		System.out.println(cafeDetailDTO.getLongitude());
		return mv;
	}
	
	@RequestMapping(value = "reservation", method = RequestMethod.GET)
	public String cafeRoomList(CafeDetailDTO cafeDetailDTO, Model model, CafeDTO cafeDTO) throws Exception{
		
		cafeDetailDTO.getDetailNum();
		System.out.println(cafeDetailDTO.getDetailNum());
		List<CafeRoomDTO> ar = cafeService.getRoomList(cafeDetailDTO);
		
		model.addAttribute("roomList", ar);
		System.out.println(ar);
		return "studyCafe/reservation";
	}
	
	@RequestMapping(value = "reUpdate", method = RequestMethod.GET)
	public String StudyCafeTimeUpdate(CafeDetailDTO cafeDetailDTO, Model model, CafeDTO cafeDTO) throws Exception{
		
		System.out.println(cafeDetailDTO.getDetailNum());
		List<CafeRoomDTO> ar = cafeService.getRoomList(cafeDetailDTO);
		model.addAttribute("roomList", ar);
		System.out.println(ar);
		return "studyCafe/reUpdate";
	}
	
	@RequestMapping(value = "reUpdate", method = RequestMethod.POST)
	@ResponseBody
	public String StudyCafeTimeUpdate(HttpSession session,String timeLength,String reserNum) throws Exception{
		System.out.println("1 : " + timeLength);
		System.out.println("2 : " + reserNum);
//		model.addAttribute("timeLength",timeLength);
//
//		model.addAttribute("detailNum",detailNum);
		String result = "";
		if(timeLength == null ) {
			 result = "0";
		}
		result = "1";
		// session.removeAttribute("timeLength");
		session.setAttribute("reserNum", reserNum);
		session.setAttribute("timeLength", timeLength);
		System.out.println(result);
		return result;
	}
	
	
	@RequestMapping(value = "map")
	public String map() throws Exception{
		
		return "studyCafe/map";
	}
	

	@RequestMapping(value="cafeList", method=RequestMethod.POST)
	public ModelAndView addDate(ReservationDTO reservationDTO,HttpServletRequest request) throws Exception{
		ModelAndView mv = new ModelAndView();
		System.out.println("cafeList post 실행");
		System.out.println(reservationDTO.getSeTime());
		System.out.println(reservationDTO.getSeDate());
		int result = cafeService.addDate(reservationDTO);
		HttpSession session = request.getSession();
		session.setAttribute("reserNum", reservationDTO.getReserNum());
//		int result = cafeService.update(cafeRoomDTO);
		
		mv.setViewName("redirect:/order/order");
		return mv;
	}
	
	@RequestMapping(value="orderChange", method=RequestMethod.POST)
	@ResponseBody
	public int setOrderChange(ReservationDTO reservationDTO,HttpServletRequest request,HttpSession session) throws Exception{
		ModelAndView mv = new ModelAndView();
		System.out.println("cafeList post 실행");
		System.out.println(reservationDTO.getSeTime());
		System.out.println(reservationDTO.getSeDate());
		System.out.println(reservationDTO.getReserNum());
		int result = cafeService.setOrderChange(reservationDTO);
		
		if(result == 1) {
			System.out.println("성공");
		}
		session.removeAttribute("timeLength");
		session.removeAttribute("reserNum");
		return result;
	}
	
	@RequestMapping(value = "calender")
	public String calender() throws Exception{
		
		return "studyCafe/calender";
	}
	@RequestMapping(value = "updateDetail", method=RequestMethod.GET)
	public ModelAndView updateDetail(CafeDTO cafeDTO) throws Exception{
		System.out.println("updateDetail");
		ModelAndView mv = new ModelAndView();
		CafeDetailDTO cafeDetailDTO = new CafeDetailDTO();
		cafeDetailDTO = cafeService.getDetail(cafeDTO);
		
		mv.setViewName("studyCafe/updateDetail");
		mv.addObject("dto", cafeDetailDTO);

		return mv;
	}
	
//	@RequestMapping(value = "reList")
//	public String reList(Model model,HttpSession session) throws Exception{
//		System.out.println("cafeReList");
//		Long reserNum = (Long)session.getAttribute("reserNum");
//		List<ReListDTO> ar = cafeService.getReList(reserNum);
//		System.out.println(ar.get(0).getCdPay());
//		model.addAttribute("list", ar);
//		
//		return "studyCafe/reList";
//	}
	
	@PostMapping("seTimeCheck")
	@ResponseBody
	public List<ReservationDTO> getSeTimeCheck(String value,String roomName,String detailNum) throws Exception{
		System.out.println("seTimeCheck : " + value); //예약날짜
		System.out.println("roomName: "+roomName );	//방이름
		System.out.println("detailNum : " + detailNum);  //방번호
		ReservationDTO reservationDTO = new ReservationDTO();
		reservationDTO.setSeDate(value);
		reservationDTO.setRoomName(roomName);
		reservationDTO.setDetailNum(Long.valueOf(detailNum));
		System.out.println(reservationDTO.getSeDate());

		List<ReservationDTO> ar = cafeService.getSeTimeCheck(reservationDTO);
		
		System.out.println(ar);
		
		
		return ar;
	}
	
	@RequestMapping(value="addList", method=RequestMethod.GET)
	public String addList(Model model) throws Exception{
		System.out.println("addList");
		List<AreaDTO> ar = cafeService.areaList();
		model.addAttribute("list", ar);
		
		return "studyCafe/addList";
	}
	@RequestMapping(value="addList", method=RequestMethod.POST)
	public ModelAndView addList(CafeDTO cafeDTO,HttpServletRequest request) throws Exception{
		System.out.println("addList Post");
		ModelAndView mv = new ModelAndView();
		int result = cafeService.addList(cafeDTO);
		HttpSession session = request.getSession();
		session.setAttribute("areaNum", cafeDTO.getAreaName());
//		int result = cafeService.update(cafeRoomDTO);
		
		mv.setViewName("redirect:./cafeList");
		return mv;
		
	}
	
	@RequestMapping(value="updateList")
	public String updateList(Model model) throws Exception{
		List<CafeDTO> ar = cafeService.getList();
		model.addAttribute("list", ar);
		return "studyCafe/updateList";
	}
	@RequestMapping(value="deleteList", method=RequestMethod.GET)
	public String deleteList(Model model) throws Exception{
		List<CafeDTO> ar = cafeService.getList();
		model.addAttribute("list", ar);
		
		return "studyCafe/deleteList";
	}
	
	@RequestMapping(value="deleteList", method=RequestMethod.POST)
	public ModelAndView deleteList(CafeDTO cafeDTO) throws Exception{
		ModelAndView mv = new ModelAndView();
		System.out.println("deleteList Post");
		int result = cafeService.deleteList(cafeDTO);
		mv.setViewName("redirect:./cafeList");
		
		return mv;
	}
	
}

