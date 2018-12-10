package kr.ync.project.front.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.ync.project.front.service.FhotelService;
import kr.ync.project.front.service.FnoticeService;
import lombok.extern.slf4j.Slf4j;

/**
 * Handles requests for the application home page.
 */
@Controller
@Slf4j
public class HomeController {
	
	@Inject
	private FnoticeService notice_service;

	@Inject
	private FhotelService hotel_service;

	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/")
	public String home(Model model) throws Exception {

		// 가나다
		log.info("index call.....");
		model.addAttribute("readNotice", notice_service.listAll());
		model.addAttribute("nationList", hotel_service.nationList());
		return "front/index";
	}

}
