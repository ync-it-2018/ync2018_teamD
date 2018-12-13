package kr.ync.project.admin.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.ync.project.admin.domain.ListNumVO;
import kr.ync.project.admin.service.FaqService;
//import kr.ync.project.admin.domain.UserVO;
//import kr.ync.project.admin.dto.LoginDTO;
//import kr.ync.project.admin.service.UserService;
import lombok.extern.slf4j.Slf4j;
@Controller
@Slf4j
@RequestMapping("/admin")
public class customerController {
	
	@Inject
	private FaqService service;
	
	@RequestMapping(value = "/FAQList", method = RequestMethod.GET)
	public String memberList(ListNumVO listNum, Model model) throws Exception{
		log.info("FAQ List call.....");
		model.addAttribute("FaqList", service.FaqList());
		return "admin/customer/FAQList";
	}	
}
