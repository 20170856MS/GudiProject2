package com.iu.home.licensemembers;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PatchMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.iu.home.licenseorder.OrderDTO;


@Controller
@RequestMapping("/member/*")
public class LicenseMembersController {
	
	@GetMapping("orderResult")
	public void getOrderResult() throws Exception{
		System.out.println("주문결과");
	}
	
	@Autowired
	private LicenseMembersService licenseMembersService;
	
	@Autowired
	private BCryptPasswordEncoder bCryptPasswordEncoder;
	
	@Autowired
	private KakaoService kakaoService;
	
	@Autowired
	private NaverService naverService;
	
	
	
	
	@RequestMapping(value = "logout", method = RequestMethod.GET)
	public String logout(HttpSession session) throws Exception{
		System.out.println("로그아웃");
		//session 소멸
		System.out.println((String)session.getAttribute("kakaoToken"));
		System.out.println((String)session.getAttribute("naverToken"));
		if((String)session.getAttribute("access_Token") != null) {
			
			kakaoService.kakaoLogout((String)session.getAttribute("kakaoToken"));
			naverService.naverLogout((String)session.getAttribute("naverToken"));
			session.removeAttribute("kakaoToken");
			session.removeAttribute("sessionConfigVO");
			session.removeAttribute("naverToken");
			session.removeAttribute("sessionConfigVO1");
		}
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
		
		LicenseMembersDTO loginUser = licenseMembersService.getLogin(licenseMembersDTO);
		
		int result = 0;
		String message = "";
		String url ="";
		System.out.println(licenseMembersDTO.getPassword());
		System.out.println(loginUser.getPassword());
		if(licenseMembersDTO!=null && bCryptPasswordEncoder.matches(licenseMembersDTO.getPassword(), loginUser.getPassword())) {
			result = 1;
			url = "../";
			message = "로그인성공";
			
			HttpSession session =request.getSession();
			session.setAttribute("check", loginUser);
			session.setAttribute("saveNum", loginUser.getNum());
			
		}else {
			result =0;
			url = "./login";
			message = "로그인실패";
		}
		
		mv.addObject("result", result);
		
		mv.addObject("message", message);
		mv.addObject("url", url);
		mv.setViewName("common/result");
		
		
		
		
		
		System.out.println("2"+licenseMembersDTO);
		return mv;
	}
	
	@RequestMapping(value = "join0", method = RequestMethod.GET)
	public String join0(LicenseMembersDTO licenseMembersDTO) {
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
		System.out.println("암호화 전 : " + licenseMembersDTO.getPassword());
		
		licenseMembersDTO.setPassword(bCryptPasswordEncoder.encode(licenseMembersDTO.getPassword()));
		

		System.out.println("암호화 후 : " + licenseMembersDTO.getPassword());
		
	    int result = licenseMembersService.setJoin(licenseMembersDTO);
	    licenseMembersService.setRole(licenseMembersDTO);
	    System.out.println(licenseMembersDTO.getUserName());
	    
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
		if((String)session.getAttribute("access_Token") != null) {
			
			
		} 
		licenseMembersDTO = licenseMembersService.getMyPage(licenseMembersDTO);
//		List<BankAccountDTO> ar = bankAccountService.getListByUserName(bankMemberDTO);
//		model.addAttribute("list", ar);
		mv.addObject("dto", licenseMembersDTO);
		System.out.println("myPage");
	
		mv.setViewName("/member/myPage");
		return mv;
	}
	
	@RequestMapping(value = "myInfo", method = RequestMethod.GET)
	public void getMyInfo() throws Exception {
		System.out.println("info get");
		
	}
	
	@PostMapping("infoModify")
	@ResponseBody
	public String modifyInfo(String value, String valueType, String prevPassword, 
	         HttpSession session, String userName) throws Exception {// value = 변경할 값
	    // valueType = password, nickname, phone
		
		
		System.out.println(userName);
		LicenseMembersDTO loginUser = licenseMembersService.getPwdCheck(userName);
		
	    String msg = "";
	    System.out.println("Rrr : " +prevPassword);
	    System.out.println("rrr1 : " + loginUser.getUserName());
	    System.out.println("value : " +value);
	    System.out.println("rrr2 : " + loginUser.getPassword());
	    switch(valueType) {
	    case "password":
	        if(!bCryptPasswordEncoder.matches(prevPassword, loginUser.getPassword())) {
	        	System.out.println("rrrr");
	        	return "0";
	        } 
	        value = bCryptPasswordEncoder.encode(value);
	        msg = "1";
	        break;
	        
	    case "nickname":
	        msg = "2";
	        break;
	    case "phone":
	        msg = "3";
	        session.setMaxInactiveInterval(0);
	        session.setAttribute("authNum", null);
	        break;
	    }
//	    
	    licenseMembersService.modifyInfo(userName, valueType, value);
//	    UserInfoSessionUpdate.sessionUpdate(value, valueType, user);
	    
//	    
	    return msg;
	}
	
	@PostMapping("/member/authNum")
	@ResponseBody
	private String authNum(String phone, String email, HttpSession session){
	    String authNum = "";
	    for(int i=0;i<6;i++) {
	        authNum += (int)(Math.random() * 10);
	    }
	    
	    System.out.println("인증번호 : " + authNum);
	    
	    // 전화번호로 인증번호 보내기 추가
	    if(phone != null) {
	        System.out.println("전화번호로 인증번호 보내기");
	 
	        
	        
	    // 이메일로 인증번호 보내기
	    } else if(email != null) {
	        System.out.println("이메일로 인증번호 보내기");
	        
	    }
	    
	    
	    Map<String, Object> authNumMap = new HashMap<String, Object> ();
	    long createTime = System.currentTimeMillis(); // 인증번호 생성시간
	    long endTime = createTime + (300 *1000);	// 인증번호 만료시간
	    
	    authNumMap.put("createTime", createTime);
	    authNumMap.put("endTime", endTime);
	    authNumMap.put("authNum", authNum);
	    
	    session.setMaxInactiveInterval(300);
	    session.setAttribute("authNum", authNumMap);
	    
	    return "1";
	}
	@GetMapping("sosialMyPage")
	public ModelAndView sosialmyPage(HttpSession session) throws Exception{
		SimpleMembersDTO simpleMembersDTO= (SimpleMembersDTO)session.getAttribute("sessionConfigVO1");
		
		ModelAndView mv = new ModelAndView();
		System.out.println("myPage");
//		Map<String, Object> map = bankMembersService.getmyPage(bankMemberDTO);
//		
//		model.addAttribute("map", map);
		if((String)session.getAttribute("access_Token") != null) {
			
			
		} 
		simpleMembersDTO = licenseMembersService.getsosialMyPage(simpleMembersDTO);
//		List<BankAccountDTO> ar = bankAccountService.getListByUserName(bankMemberDTO);
//		model.addAttribute("list", ar);
		mv.addObject("dto", simpleMembersDTO);
		System.out.println("myPage");
	
		mv.setViewName("/member/sosialMyPage");
		return mv;
	}
	
	// KAKAO 간편로그인
	@RequestMapping(value="/oauth2/authorization/kakao")
    public String kakaoLogin() throws Exception {
        StringBuffer loginUrl = new StringBuffer();
        loginUrl.append("https://kauth.kakao.com/oauth/authorize?client_id=");
        loginUrl.append("29ac8f50075dbf10d6f7a7dbb8178e8a"); 
        loginUrl.append("&redirect_uri=");
        loginUrl.append("http://localhost:8080/member/kakao_callback"); 
        loginUrl.append("&response_type=code");
        System.out.println("test0 : "+loginUrl.toString());
        return "redirect:"+loginUrl.toString();
        // ?client_id=jHUXCDEEtc8_uaRSgjoW&redirect_uri=http://localhost:8080/member/naver_callback&response_type=code
    }
	

	// NAVER 간편로그인
	@RequestMapping(value="/oauth2/authorization/naver")
	public String naverLogin() throws Exception {
        StringBuffer loginUrl = new StringBuffer();
        loginUrl.append("https://nid.naver.com/oauth2.0/authorize?client_id=");
        loginUrl.append("jHUXCDEEtc8_uaRSgjoW"); 
        loginUrl.append("&redirect_uri=");
        loginUrl.append("http://localhost:8080/member/naver_callback"); 
        loginUrl.append("&response_type=code");
        System.out.println("test0 : "+loginUrl.toString());
        return "redirect:"+loginUrl.toString();
        // https://nid.naver.com/oauth2.0/authorize?client_id=jHUXCDEEtc8_uaRSgjoW&redirect_uri=http://localhost:8080/member/naver_callback&response_type=code
    }
	
	
	
	@RequestMapping(value = "kakao_callback", method = RequestMethod.GET)
    public ModelAndView redirectkakao(@RequestParam String code, HttpSession session) throws Exception {
            System.out.println("test 11111 : " + code);
            ModelAndView mv = new ModelAndView();
            //접속토큰 get
            String kakaoToken = kakaoService.getReturnAccessToken(code);
            
            //접속자 정보 get
            Map<String,Object> result = kakaoService.getUserInfo(kakaoToken);
            System.out.println("컨트롤러 출력1 : "+result.get("nickname")+"/"+result.get("email")+"/"+result.get("id"));

            SimpleMembersDTO simpleMembersDTO = new SimpleMembersDTO();
            simpleMembersDTO.setUserName((String)result.get("nickname"));
            simpleMembersDTO.setEmail((String)result.get("email"));
            simpleMembersDTO.setPhone("null");
            if(licenseMembersService.getsosialMyPage(simpleMembersDTO) == null) {
            	
            	int result1 = licenseMembersService.setSimpleJoin(simpleMembersDTO);
            	
            	if(result1>0) {
            		System.out.println("성공");
            	}else {
            		System.out.println("실패");
            	}
            }
            mv.setViewName("redirect:/");
            //            LicenseMembersDTO licenseMembersDTO =new LicenseMembersDTO();
//            licenseMembersDTO.setName((String)result.get("nickname"));
//            licenseMembersDTO.setEmail((String)result.get("email"));
//            System.out.println(licenseMembersDTO.getName());
//            System.out.println(licenseMembersDTO.getEmail());
//            
//            mv.setViewName("redirect:/");
//            
            session.setAttribute("sessionConfigVO", simpleMembersDTO);
            /*로그아웃 처리 시, 사용할 토큰 값*/
            session.setAttribute("kakaoToken", kakaoToken);
        return mv;
    }
	
	@GetMapping("nameCheck")
	@ResponseBody
	public int getNameCheck(String value, String valueType) throws Exception {
		System.out.println(value);
		LicenseMembersDTO licenseMembersDTO = new LicenseMembersDTO();
		licenseMembersDTO.setName(value);
		System.out.println(licenseMembersDTO.getName());
		licenseMembersDTO = licenseMembersService.getNameCheck(licenseMembersDTO);
		
		int result = 0;
		if(licenseMembersDTO != null) {
			result = 1;
		}
		
		return result;
	}
	
	
	@RequestMapping(value = "naver_callback", method = RequestMethod.GET)
    public ModelAndView redirectnaver(@RequestParam String code, HttpSession session) throws Exception {
            System.out.println("test 11111  : " + code);
            ModelAndView mv = new ModelAndView();
            //접속토큰 get
            String naverToken = naverService.getReturnAccessToken(code);
            
            //접속자 정보 get
            Map<String,Object> result = naverService.getUserInfo(naverToken);
            System.out.println("컨트롤러 출력1 : "+result.get("nickname")+"/"+result.get("email")+"/"+result.get("mobile"));

            SimpleMembersDTO simpleMembersDTO = new SimpleMembersDTO();
            simpleMembersDTO.setUserName((String)result.get("nickname"));
            simpleMembersDTO.setEmail((String)result.get("email"));
            simpleMembersDTO.setPhone((String)result.get("mobile"));
            if(licenseMembersService.getsosialMyPage(simpleMembersDTO) == null) {
            	
            	int result1 = licenseMembersService.setSimpleJoin(simpleMembersDTO);
            	
            	if(result1>0) {
            		System.out.println("성공");
            	}else {
            		System.out.println("실패");
            	}
            }
            
            
            mv.setViewName("redirect:/");
            
            session.setAttribute("sessionConfigVO1", simpleMembersDTO);
            /*로그아웃 처리 시, 사용할 토큰 값*/
            session.setAttribute("naverToken", naverToken);
        return mv;
    }
	
	


}
