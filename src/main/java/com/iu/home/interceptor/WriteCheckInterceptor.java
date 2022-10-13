package com.iu.home.interceptor;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;


public class WriteCheckInterceptor extends HandlerInterceptorAdapter{

//	@Override
//	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
//			ModelAndView modelAndView) throws Exception {
//		
//		//정보 request
//		
//		String method = request.getMethod();
//		
//		if(method.equals("POST")) {
//			
//			return ;
//		}
//		//로그인 사용자의 ID와 DTO의 작성자가 일치하는가 ? 
//		
//		//로그인 사용자의 정보
//		BankMembersDTO bankMembersDTO = (BankMembersDTO)request.getSession().getAttribute("check");
//
//		if(bankMembersDTO.getUserName().equals(null)) {
//			return ;
//		}
//		//DTO
//		Map<String, Object> map= modelAndView.getModel();
//		
//		BoardDTO boardDTO= (BoardDTO) map.get("update");
//		
//		// java true,false equals 
//		if(!bankMembersDTO.getUserName().equals(boardDTO.getWriter())) {
//			modelAndView.setViewName("common/result");
//			modelAndView.addObject("result", 1);
//			modelAndView.addObject("message", "작성자만 수정 가능");
//			modelAndView.addObject("url", "./list.esh");
//		}
//		
//	}
}
