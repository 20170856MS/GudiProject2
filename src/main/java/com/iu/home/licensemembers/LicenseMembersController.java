package com.iu.home.licensemembers;

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
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
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
	
	@Autowired
	private BCryptPasswordEncoder bCryptPasswordEncoder;
	
	@Autowired
	private KakaoService kakaoService;
	
	@Autowired
	private NaverService naverService;
	
	@Autowired
	private MailService mailService;

	
	
	
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
	
	//마이페이지 수정
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
	    System.out.println(valueType);
	    
	    
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
	    System.out.println(msg);
//	    
	    return msg;
	}
	
	// 인증번호 보내기
	@PostMapping("authNum")
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
	        
	    System.out.println(email);
	    // 이메일로 인증번호 보내기
	    } else if(email != null) {
	        System.out.println("이메일로 인증번호 보내기");
	        mailService.sendAuthNum(email, authNum);
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
	
	// 인증번호가 맞는지 확인
	@PostMapping("authNumCheck")
	@ResponseBody
	private String authNumCheck (String authNum, HttpSession session) throws Exception{
	    Map<String, Object> sessionAuthNumMap = (Map<String, Object>) session.getAttribute("authNum");
	    
	    String msg = "";
	    System.out.println("번호왔어");
	    if(sessionAuthNumMap == null) {
	        msg = "0"; //인증번호를 전송해주세요
	        return msg ;
	    }
	    
	    // 인증번호 만료시간
	    long endTime = (Long)sessionAuthNumMap.get("endTime");
	    
	    // 현재시간이 만료시간이 지났다면
	    if(System.currentTimeMillis() > endTime) {
	        msg = "1"; //인증시간이 만료되었습니다
	        session.setAttribute(authNum, null);
	        session.setMaxInactiveInterval(0);
	        return msg;
	    }
	    
	    // 인증번호
	    String sessionAuthNum = (String) sessionAuthNumMap.get("authNum");
	    
	    if(!authNum.equals(sessionAuthNum)) {
	        msg = "2"; //인증번호가 일치하지 않습니다;
	        
	        return msg;
	    } else {
	        // 인증번호가 일치하면
	    	msg = "3";
	        return msg; // 인증번호가 일치합니다.;
	    }
	}
	
	@PostMapping("completion")
	@ResponseBody
	public ResponseEntity<String> authCompletion(HttpSession session) {
	    Map<String, Object> authStatus = (Map<String, Object>) session.getAttribute("authStatus");
	    if(authStatus == null) {
	        return new ResponseEntity<String>("인증시간이 만료되었습니다", HttpStatus.BAD_REQUEST);
	    }
	    authStatus.put("status", true);
	    System.out.println("completion");
	    return new ResponseEntity<String>(HttpStatus.OK);
	}
	
	@GetMapping("modify")
	public String moldifyPassword(String username, HttpSession session) {
	    Map<String, Object> authStatus = (Map<String, Object>) session.getAttribute("authStatus");
	    System.out.println("modify");
	    if(authStatus == null || !username.equals(authStatus.get("username"))) {
	        return "redirect:/find/password";
	    }
	    
	    // 페이지에 왔을때 인증이 안되있다면
	    if(!(boolean) authStatus.get("status")) {
	        return "redirect:/find/password";
	    }
	    return "member/modify";
	}
	
	@PostMapping("/modify/password")
	@ResponseBody
	public String modifyPassword(String password, String username, HttpSession session) {
		String result = "";
	    if(password != null) {
	    	
	    	password = bCryptPasswordEncoder.encode(password);
	    	licenseMembersService.modifyInfo(username, "password", password);
	    	session.setMaxInactiveInterval(0);
	    	session.setAttribute("authStatus", null);
	    	result = "1";
	    }
	    System.out.println(result);
	    return result;
	}
	
	// 아이디 비번찾기--------------------------------
	@GetMapping("findId")
	public void getFindId() throws Exception{
		
	}
	@GetMapping("findPassword")
	public void getFindPassword() throws Exception{
		
	}
	
	@PostMapping("findId")
	@ResponseBody
	public ResponseEntity<Object> sendEmail(String email) throws Exception{
		LicenseMembersDTO licenseMembersDTO = new LicenseMembersDTO();
		licenseMembersDTO.setEmail(email);
		licenseMembersDTO = licenseMembersService.getFindId(licenseMembersDTO);
	    System.out.println(licenseMembersDTO);
	    System.out.println(licenseMembersDTO.getUserName());
	    System.out.println(email);
	    if(licenseMembersDTO != null) {
	        mailService.sendUsernames(email, licenseMembersDTO);
	    }
	    System.out.println("나왔다.");
	    return new ResponseEntity<Object>(HttpStatus.OK);
	}
	
	@GetMapping("/find/emailCheck")
	@ResponseBody
	public String sendEmailCheck(String email) throws Exception{
		LicenseMembersDTO licenseMembersDTO = new LicenseMembersDTO();
		licenseMembersDTO.setEmail(email);
		String result = "0";
		licenseMembersDTO = licenseMembersService.getFindId(licenseMembersDTO);
	    System.out.println(licenseMembersDTO);
	    System.out.println(licenseMembersDTO.getUserName());
	    System.out.println(email);
	    
	    if(licenseMembersDTO.getUserName() != null) {
	    	result = "1";
	    }

	    System.out.println(result);
	    
	    return result;
	}
	
	@PostMapping("findPassword")
	@ResponseBody
	public ResponseEntity<Object> authenticateUser(String username, HttpSession session) {
	    Map<String, Object> authStatus = new HashMap<>();
	    authStatus.put("username", username);
	    authStatus.put("status", false);
	    
	    session.setMaxInactiveInterval(300);
	    session.setAttribute("authStatus", authStatus);
	    System.out.println("테스트1"+authStatus);
	    return new ResponseEntity<Object>(username, HttpStatus.OK);
	}
	
	@GetMapping("findPasswordAuth")
	public String auth(String username, HttpSession session) {
	    Map<String, Object> authStatus = (Map<String, Object>) session.getAttribute("authStatus");
	    if(authStatus == null || !username.equals(authStatus.get("username"))) {
	        return "redirect:/member/findPassword";
	    }
	    
	    return "/member/findPasswordAuth";
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
        loginUrl.append("c7ce88367515391bad76eec48ec49f1a"); 
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
	
	@GetMapping("point")
	public String point(Model model) {
//		long id = user.getUser().getId();
//		List<Point> myPoint = userService.myPoint(id);
//		model.addAttribute("myPoint", myPoint);
//		model.addAttribute("point", user.getUser().getPoint());
//		
		return "member/point";
	}
	
	@PostMapping("joinCheck")
	@ResponseBody
	public int setJoinCheck(LicenseMembersDTO licenseMembersDTO) throws Exception {
		System.out.println(licenseMembersDTO.getUserName());
		System.out.println(licenseMembersDTO.getName());
		System.out.println(licenseMembersDTO.getEmail());
		System.out.println(licenseMembersDTO.getPhone());
		int result = 0;
		LicenseMembersDTO userNameCheck = licenseMembersService.getUserNameCheck(licenseMembersDTO);
		LicenseMembersDTO nameCheck = licenseMembersService.getNameCheck(licenseMembersDTO);
		LicenseMembersDTO phoneCheck = licenseMembersService.getPhoneCheck(licenseMembersDTO);
		LicenseMembersDTO emailCheck = licenseMembersService.getEmailCheck(licenseMembersDTO);
		
		if(userNameCheck != null) {
			result = 1; //userName 중복
		}
		
		if(nameCheck != null) {
			result = 2; //name 중복
		}
		if(phoneCheck != null) {
			result = 3; //email 중복
		}
		if(emailCheck != null) {
			result = 4; //phone 중복
		}
		
		
		
		
		
		return result;
	}
	// 마이페이지 아이디 수정용
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
	
	@GetMapping("userNameCheck")
	@ResponseBody
	public int getUserNameCheck(String value, String valueType) throws Exception {
		System.out.println(value);
		LicenseMembersDTO licenseMembersDTO = new LicenseMembersDTO();
		licenseMembersDTO.setUserName(value);
		System.out.println(licenseMembersDTO.getUserName());
		licenseMembersDTO = licenseMembersService.getUserNameCheck(licenseMembersDTO);
		
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
