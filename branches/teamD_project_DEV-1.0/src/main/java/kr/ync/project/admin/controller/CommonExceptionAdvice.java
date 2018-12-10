package kr.ync.project.admin.controller;

import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.servlet.ModelAndView;

import lombok.extern.slf4j.Slf4j;

// 전역 오류 처리
@ControllerAdvice
@Slf4j
public class CommonExceptionAdvice {

	/*@ExceptionHandler(Exception.class)
	public String common(Exception e) {

		log.info(e.toString());

		return "error_common";
	}*/

	@ExceptionHandler(Exception.class)
	private ModelAndView errorModelAndView(Exception ex) {
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("/error_common");
		modelAndView.addObject("exception", ex);

		return modelAndView;
	}

}
