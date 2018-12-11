package kr.ync.project.admin.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import kr.ync.project.admin.domain.PageMaker;
import kr.ync.project.admin.domain.SearchCriteria;
import kr.ync.project.admin.domain.memberVO;
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
	@Inject
	private memberService service;
	
	@RequestMapping(value = "/memberList", method = RequestMethod.GET)
	public String memberList(@ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception {
		model.addAttribute("memberList", service.listCriteria(cri));
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(service.listSearchCount(cri));
		model.addAttribute("pageMaker", pageMaker);
		return "/admin/member/memberList";
	}
	
	@RequestMapping(value = "/memberDetail", method = RequestMethod.GET)
	public String memberDetail(@RequestParam("member_id") String member_id, Model model) throws Exception {
		model.addAttribute("member", service.read(member_id));
		model.addAttribute("booking", service.readbooking(member_id));
		model.addAttribute("bookingEnd", service.readbookingEnd(member_id));
		return "/admin/member/memberDetail";
	}
	
	@RequestMapping(value = "/memberModify", method = RequestMethod.GET)
	public String memberModify(@RequestParam("member_id") String member_id, Model model) throws Exception {
		model.addAttribute("member", service.read(member_id));
		return "/admin/member/memberModify";
	}
	
	@RequestMapping(value = "/outmemberList", method = RequestMethod.GET)
	public String outmemberList(@ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception {
		model.addAttribute("outmemberList", service.omemberlist(cri));
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(service.listomemberCount(cri));
		model.addAttribute("pageMaker", pageMaker);
		return "/admin/member/outmemberList";
	}
	
	@RequestMapping(value = "/memberadminList", method = RequestMethod.GET)
	public String memberadminList(@ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception {
		model.addAttribute("memberadminList", service.memberadminList(cri));
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(service.listmemberadminCount(cri));
		model.addAttribute("pageMaker", pageMaker);
		return "/admin/member/memberadminList";
	}
	
	@RequestMapping(value = "/memberModify", method = RequestMethod.POST)
	public String memberupdate(
				@RequestParam("member_password") String member_password,
				@RequestParam("member_pnumber") String member_pnumber,
				@RequestParam("member_address") String member_address,
				Model model, memberVO memvo) throws Exception{
		
		model.addAttribute("memberupdate", service.memberupdate(memvo));
		return "/admin/member/memberDetail";
	}

}
