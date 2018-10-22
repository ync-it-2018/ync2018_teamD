package kr.ync.project.front.controller;

import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.servlet.ModelAndView;

// 전역 오류 처리
/**
 * CommonExceptionAdvice.java
 * 
 * 
 * @Author : 문태일
 * @Date   : 2018. 10. 15.
 * @Description
 * 공통 error처리용 controller
 * 
 */
@ControllerAdvice
public class CommonExceptionAdvice {

	/*@ExceptionHandler(Exception.class)
	public String common(Exception e) {

		log.info(e.toString());

		return "error_common";
	}*/

	
	/**
	 * @Description
	 * 
	 * @Mathod Name : errorModelAndView
	 * @param ex
	 * @return
	 * 
	 */
	@ExceptionHandler(Exception.class)
	private ModelAndView errorModelAndView(Exception ex) {
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("/error_common");
		modelAndView.addObject("exception", ex);

		return modelAndView;
	}

}
