package com.iu.home.licensemembers;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;


@Controller
@RequestMapping("/member/*")
public class LicenseMembersController {
	
	@GetMapping("orderResult")
	public void getOrderResult() throws Exception{
		System.out.println("주문결과");
	}
	
	@Autowired
	private LicenseMembersService licenseMembersService;
	
	
	@RequestMapping(value = "logout", method = RequestMethod.GET)
	public String logout(HttpSession session) throws Exception{
		System.out.println("로그아웃");
		//session 소멸
		session.invalidate();
		
		return "redirect:../";
	}
	
	
	@GetMapping("login")
	public String login() throws Exception {
		
		
		return "member/login";
	}
	
	@RequestMapping(value = "login", method = RequestMethod.POST)
	public ModelAndView login(HttpServletRequest request,LicenseMembersDTO licenseMembersDTO,Model model) throws Exception {
		System.out.println("DB에 로그인 실행");
		// "Redirect: 다시 접속할 URL 주소(절대경로,상대경로)"
		ModelAndView mv = new ModelAndView();
		System.out.println("2"+licenseMembersDTO.getUserName()+licenseMembersDTO.getPassword());
		licenseMembersDTO = licenseMembersService.getLogin(licenseMembersDTO);
		int result = 0;
		String message = "로그인실패";
		String url ="./login";
		if(licenseMembersDTO!=null) {
			result = 1;
			url = "../";
			message = "로그인성공";
		}
		
		mv.addObject("result", result);
		
		mv.addObject("message", message);
		mv.addObject("url", url);
		mv.setViewName("common/result");
		
		HttpSession session =request.getSession();
		
		session.setAttribute("check", licenseMembersDTO);
		System.out.println("2"+licenseMembersDTO);
		return mv;
	}
	
	@RequestMapping(value = "join0", method = RequestMethod.GET)
	public String join0() {
		System.out.println("join get");
		
		return "member/join0";
	}
	
	@RequestMapping(value = "join0", method = RequestMethod.POST)
	public String join0(Model model) {
		System.out.println("join POST");
		
		return "member/join";
	}
	
	@RequestMapping(value = "join", method = RequestMethod.GET)
	public String join() {
		System.out.println("join get");
		
		return "member/join";
	}
	
	@RequestMapping(value = "join", method = RequestMethod.POST)
	public String join(LicenseMembersDTO licenseMembersDTO) throws Exception {
//		BankMembersDTO bankMembersDTO = new BankMembersDTO();
		
		System.out.println("조인 POST");
		System.out.println(licenseMembersDTO.getAreaName());
		System.out.println(licenseMembersDTO.getName());
       
	    int result = licenseMembersService.setJoin(licenseMembersDTO);
	    System.out.println(result);
		if(result > 0) {
				System.out.println("성공");
		}else {
				System.out.println("실패");
		}
		
		
			
			return "redirect:../member/login";		
	}
	
	@GetMapping("myPage")
	public ModelAndView myPage(HttpSession session) throws Exception{
		LicenseMembersDTO licenseMembersDTO = (LicenseMembersDTO)session.getAttribute("check");
		
		ModelAndView mv = new ModelAndView();
		System.out.println("myPage");
//		Map<String, Object> map = bankMembersService.getmyPage(bankMemberDTO);
//		
//		model.addAttribute("map", map);
		licenseMembersDTO = licenseMembersService.getMyPage(licenseMembersDTO);
//		List<BankAccountDTO> ar = bankAccountService.getListByUserName(bankMemberDTO);
//		model.addAttribute("list", ar);
		mv.addObject("dto", licenseMembersDTO);
		System.out.println("myPage");
	
		mv.setViewName("/member/myPage");
		return mv;
	}
}
