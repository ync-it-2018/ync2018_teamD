package kr.ync.project.admin.controller;

import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.servlet.ModelAndView;
/**
 * 
 * CommonExceptionAdviceFront.java
 * 
 * 
 * @Author : 문태일
 * @Date   : 2018. 12. 10.
 * @Description
 * 공통 error처리용 controller
 * 
 */
public class CommonExceptionAdviceFront {

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
