package kr.ync.project.admin.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import kr.ync.project.admin.domain.Criteria;
import kr.ync.project.admin.service.memberService;
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
	//test
	@Inject
	private memberService service;
	
	@RequestMapping(value = "/memberList", method = RequestMethod.GET)
	public String memberList(@ModelAttribute("cri") Criteria cri, Model model) throws Exception {
		log.info(cri.toString());
		model.addAttribute("memberList", service.listCriteria(cri));
		
		return "/admin/member/memberList";
	}	
	
	@RequestMapping(value = "/memberDetail", method = RequestMethod.GET)
	public String memberList(@RequestParam("member_id") String member_id, Model model) throws Exception {
		model.addAttribute("list", service.read(member_id));
		return "/admin/member/memberDetail";
	}
}
