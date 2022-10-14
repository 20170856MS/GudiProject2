package com.iu.home.interceptor;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.iu.home.licenseQna.QnaDTO;
import com.iu.home.licensemembers.LicenseMembersDTO;


public class WriteCheckInterceptor extends HandlerInterceptorAdapter{

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		
		//정보 request
		
		String method = request.getMethod();
		System.out.println("WriteCheckInterceptor");
		if(method.equals("POST")) {
			System.out.println("여긴");
			return ;
		}
		//로그인 사용자의 ID와 DTO의 작성자가 일치하는가 ? 
		
		//로그인 사용자의 정보
		LicenseMembersDTO licenseMembersDTO = (LicenseMembersDTO)request.getSession().getAttribute("check");

		if(licenseMembersDTO != null) {
			if(licenseMembersDTO.getUserName().equals(null)) {
				return ;
			}
		} else {
			modelAndView.setViewName("common/result");
			modelAndView.addObject("result", 1);
			modelAndView.addObject("message", "회원만 접속가능");
			modelAndView.addObject("url", "../../../../");
		}
			
		
		//DTO
		Map<String, Object> map= modelAndView.getModel();
		System.out.println("이건뭐야"+map);
		QnaDTO qnaDTO= (QnaDTO) map.get("qnaDTO");
		System.out.println(qnaDTO);
		// java true,false equals 
		if(!licenseMembersDTO.getUserName().equals(qnaDTO.getWriter())) {
			modelAndView.setViewName("common/result");
			modelAndView.addObject("result", 1);
			modelAndView.addObject("message", "작성자만 수정 가능");
			modelAndView.addObject("url", "./list");
		}
		
	}
}
