package com.iu.home.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.iu.home.licensemembers.LicenseMembersDAO;


public class MemberInterceptor extends HandlerInterceptorAdapter {

	@Autowired
	private LicenseMembersDAO licenseMembersDAO;
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		// TODO Auto-generated method stub
		
		//controller 안 거치고 dao db 활용.
		System.out.println(licenseMembersDAO);
		
		HttpSession session = request.getSession();
		
		Object obj = session.getAttribute("check");
		
		if(obj != null) {
			System.out.println("로그인 성공");
			return true;
		}else {
			System.out.println("로그인 안함");
			response.sendRedirect("../../../../../member/login");
			return false;
		}
		
	}

}
