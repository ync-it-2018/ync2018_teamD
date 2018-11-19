package kr.ync.project.admin.controller;

import java.util.Date;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.ync.project.admin.domain.memberVO;
import kr.ync.project.admin.service.memberService;
//import kr.ync.project.admin.domain.UserVO;
//import kr.ync.project.admin.dto.LoginDTO;
//import kr.ync.project.admin.service.UserService;
import lombok.extern.slf4j.Slf4j;
/**
 * memberController.java
 * 
 * 
 * @Author : 문태일
 * @Date   : 2018. 11. 19.
 * @Description
 * 
 * 
 */
@Controller
@Slf4j
@RequestMapping("/admin")
public class memberController {
	
	@Inject
	private memberService service;
	
	@RequestMapping(value = "/memberList", method = RequestMethod.GET)
	public String memberList(memberVO board, Model model) throws Exception {
		log.info("member List call.....");
		
		model.addAttribute("list", service.listAll());
			
		return "admin/member/memberList";
	}	
}
