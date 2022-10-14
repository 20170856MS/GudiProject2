package com.iu.home.error;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.servlet.ModelAndView;
// 예외처리 컨트롤러 
@ControllerAdvice
public class BackErrorController {

	
	//ExceptionHandler method만 모임
	
	// Exception catch
			@ExceptionHandler(NullPointerException.class)
			public ModelAndView exception(){
				ModelAndView mv = new ModelAndView();
				
				mv.setViewName("errors/error_404");
				
				return mv;
			}
			
			@ExceptionHandler(Exception.class)
			public ModelAndView exception2(Exception e){
				ModelAndView mv = new ModelAndView();
			
				System.out.println(e);
				
				mv.setViewName("errors/error_404");
				
				return mv;
			}
	
}
