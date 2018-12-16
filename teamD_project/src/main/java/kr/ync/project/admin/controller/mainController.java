package kr.ync.project.admin.controller;

import java.util.Locale;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
@RequestMapping("/admin")
public class mainController {
	
	@RequestMapping(value = "/home", method = RequestMethod.GET)
	/**
	 * 
	 * @Description
	 *	관리자 화면 처음 실행시 보여줄 화면
	 * @Method Name : home
	 *
	 * @param locale
	 * @param model
	 * @return
	 */
	public String home(Locale locale, Model model) {

		// 가나다
		log.info("teamD log 내용", locale); 

				
		return "redirect:/admin/noticeList";
	}
}
