package kr.ync.project.admin.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import kr.ync.project.admin.domain.AdminVO;
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
 * 회원 관리
 * 
 */
@Controller
@Slf4j
@RequestMapping("/admin")
public class memberController {
	@Inject
	private memberService service;
	/**
	 * 
	 * @Description
	 * 회원 리스트
	 * @Mathod Name : memberList
	 * @param cri
	 * @param model
	 * @return
	 * @throws Exception
	 *
	 */
	@RequestMapping(value = "/memberList", method = RequestMethod.GET)
	public String memberList(@ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception {
		model.addAttribute("memberList", service.listCriteria(cri));
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(service.listSearchCount(cri));
		model.addAttribute("pageMaker", pageMaker);
		return "/admin/member/memberList";
	}
	/**
	 * 
	 * @Description
	 * 회원 상세정보
	 * @Mathod Name : memberDetail
	 * @param member_id
	 * @param model
	 * @return
	 * @throws Exception
	 *
	 */
	@RequestMapping(value = "/memberDetail", method = RequestMethod.GET)
	public String memberDetail(@RequestParam("member_id") String member_id, Model model) throws Exception {
		model.addAttribute("member", service.read(member_id));
		model.addAttribute("booking", service.readbooking(member_id));
		model.addAttribute("bookingEnd", service.readbookingEnd(member_id));
		return "/admin/member/memberDetail";
	}
	/**
	 * 
	 * @Description
	 * 회원정보 수정을 위한 정보 불러오기
	 * @Mathod Name : memberModify
	 * @param member_id
	 * @param model
	 * @return
	 * @throws Exception
	 *
	 */
	@RequestMapping(value = "/memberModify", method = RequestMethod.GET)
	public String memberModify(@RequestParam("member_id") String member_id, Model model) throws Exception {
		model.addAttribute("member", service.read(member_id));
		return "/admin/member/memberModify";
	}
	/**
	 * 
	 * @Description
	 * 탈퇴회원 리스트
	 * @Mathod Name : outmemberList
	 * @param cri
	 * @param model
	 * @return
	 * @throws Exception
	 *
	 */
	@RequestMapping(value = "/outmemberList", method = RequestMethod.GET)
	public String outmemberList(@ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception {
		model.addAttribute("outmemberList", service.omemberlist(cri));
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(service.listomemberCount(cri));
		model.addAttribute("pageMaker", pageMaker);
		return "/admin/member/outmemberList";
	}
	/**
	 * 
	 * @Description
	 * 관리자 리스트
	 * @Mathod Name : memberadminList
	 * @param cri
	 * @param model
	 * @return
	 * @throws Exception
	 *
	 */
	@RequestMapping(value = "/memberadminList", method = RequestMethod.GET)
	public String memberadminList(@ModelAttribute("cri") SearchCriteria cri, Model model) throws Exception {
		model.addAttribute("memberadminList", service.memberadminList(cri));
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(service.listmemberadminCount(cri));
		model.addAttribute("pageMaker", pageMaker);
		return "/admin/member/memberadminList";
	}
	/**
	 * 
	 * @Description
	 * 회원정보 수정 이동
	 * @Mathod Name : memberupdate
	 * @param memvo
	 * @return
	 * @throws Exception
	 *
	 */
	@RequestMapping(value = "/memberModifye", method = RequestMethod.POST)
	public String memberupdate(memberVO memvo) throws Exception{
		service.memberupdate(memvo);
		return "redirect:/admin/memberDetail?member_id="+memvo.getMember_id();
	}
	/**
	 * 
	 * @Description
	 * 회원삭제
	 * @Mathod Name : memberDelete
	 * @param member_id
	 * @return
	 * @throws Exception
	 *
	 */
	@RequestMapping(value = "/memberDelete", method = RequestMethod.GET)
	public String memberDelete(@RequestParam("member_id") String member_id)throws Exception {
		service.memberDelete(member_id);
		return "admin/member/memberDelete";
	}
	/**
	 * 
	 * @Description
	 * 관리자 정보 삭제
	 * @Mathod Name : memberadminDelete
	 * @param admin_id
	 * @return
	 * @throws Exception
	 *
	 */
	@RequestMapping(value = "/memberadminDelete", method = RequestMethod.GET)
	public String memberadminDelete(@RequestParam("admin_id") String admin_id)throws Exception {
		service.memberadminDelete(admin_id);
		return "admin/member/memberadminDelete";
	}
	/**
	 * 
	 * @Description
	 * 관리자 정보 수정
	 * @Mathod Name : memberadminModify
	 * @param admin_id
	 * @param model
	 * @return
	 * @throws Exception
	 *
	 */
	@RequestMapping(value = "/memberadminModify", method = RequestMethod.GET)
	public String memberadminModify(@RequestParam("admin_id") String admin_id, Model model) throws Exception {
		model.addAttribute("admin", service.adminread(admin_id));
		return "/admin/member/memberadminModify";
	}
	/**
	 * 
	 * @Description
	 * 관리자 정보 수정
	 * @Mathod Name : memberupdate
	 * @param adminvo
	 * @return
	 * @throws Exception
	 *
	 */
	@RequestMapping(value = "/memberadminModifye", method = RequestMethod.POST)
	public String memberupdate(AdminVO adminvo) throws Exception{
		service.memberadminupdate(adminvo);
		return "redirect:/admin/memberadminList";
	}
	/**
	 *
	 * @Description
	 * 관리자 정보 추가(페이지이동)
	 * @Mathod Name : memberadminInsert
	 * @return
	 * @throws Exception
	 *
	 */
	@RequestMapping(value = "/memberadminInsert")
	public String memberadminInsert() throws Exception{
		return "/admin/member/memberadminInsert";
	}
	/**
	 * 
	 * @Description
	 * 관리자 정보 추가(값추가)
	 * @Mathod Name : memberadminInserte
	 * @param adminvo
	 * @return
	 * @throws Exception
	 *
	 */
	@RequestMapping(value = "/memberadminInserte", method = RequestMethod.POST)
	public String memberadminInserte(AdminVO adminvo) throws Exception{
		service.memberadminInserte(adminvo);
		return "redirect:/admin/memberadminList";
	}
}
