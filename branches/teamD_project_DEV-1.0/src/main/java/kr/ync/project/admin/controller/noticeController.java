package kr.ync.project.admin.controller;

import java.util.HashMap;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import kr.ync.project.admin.domain.ListNumVO;
import kr.ync.project.admin.domain.NoticeVO;
import kr.ync.project.admin.service.NoticeService;
import lombok.extern.slf4j.Slf4j;
@Controller
@Slf4j
@RequestMapping("/admin")
/**
 * 
 * noticeController.java 
 *
 * @Author : 이우호
 * @Date   : 2018. 12. 14.
 * @Description 
 *  공지사항 동작 컨트롤러
 *
 */
public class noticeController {
	
	@Inject
	private NoticeService service;
	
	/**
	 * 
	 * @Description
	 *	공지사항의 목록 불러오는 컨트롤러
	 * @Method Name : noticeList
	 *
	 * @param listNum	페이징을 위한 시작 값, 현재 페이지 정보
	 * @param model
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value = "/noticeList", method = RequestMethod.GET)
	public String noticeList(@ModelAttribute("cri") ListNumVO listNum, Model model)throws Exception {
		log.info("Notice List call.....");
		model.addAttribute("list", service.listAll());
		listNum.setCnt(service.listCnt());
		listNum.sets_listNum(listNum.getnowNum());
		listNum.sete_listNum(listNum.gets_listNum());
		model.addAttribute("listNum",listNum);	
		return "admin/notice/noticeList";
	}
	
	/**
	 * 
	 * @Description
	 * 공지사항 상세정보 불러오는 컨트롤러
	 * @Method Name : noticeDetail
	 *
	 * @param idx  	상세 정보 불러올 공지사항 idx
	 * @param model
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value = "/noticeDetail", method = RequestMethod.GET)
	public String noticeDetail(@RequestParam("idx") int idx, Model model) throws Exception{
		log.info("Notice Detail Call.....");
		model.addAttribute("notice", service.noticeDetail(idx));
		
		
		return "admin/notice/noticeDetail";
	}
	
	/**
	 * 
	 * @Description
	 *	공지사항 화면 공지 여부 수정하는 컨트롤러
	 * @Method Name : noticeChk
	 *
	 * @param idx	공지 여부 수정할 공지사항 idx
	 * @param nt	공지시 Y, 공지 취소시 N
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value = "/noticeChk", method = RequestMethod.GET)
	public String noticeChk(@RequestParam("idx") int idx, @RequestParam("nt") String nt) throws Exception{
		log.info("Notice Detail Call.....");
		HashMap ntt = new HashMap();
		ntt.put("idx", idx);
		ntt.put("nt", nt);
		service.updateNotice(ntt);
		
		
		return "redirect:/admin/noticeDetail?idx="+idx;
	}
	
	/**
	 * 
	 * @Description
	 *	새로운 공지 작성 화면 이동 컨트롤러
	 * @Method Name : noticeWrite
	 *
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value = "/noticeWrite", method = RequestMethod.GET)
	public String noticeWrite() throws Exception{
		log.info("Notice Write Call.....");
		
		
		return "admin/notice/noticeWrite";
	}
	/**
	 * 
	 * @Description
	 *	작성한 공지 데이터 베이스에 추가하는 컨트롤러
	 * @Method Name : n_write
	 *
	 * @param nt	작성 폼에 입력한 데이터
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value = "/n_write", method = RequestMethod.POST)
	public String n_write(/*MultipartFile notice_img, */NoticeVO nt) throws Exception{
		log.info("Notice Writing.....");
	/*	log.info("파일 이름: {}", notice_img.getOriginalFilename());
		log.info("파일 크기: {}", notice_img.getSize());*/
		
//		System.out.println(nt);
		
		service.addNotice(nt);
		
		return "/admin/notice/noticeWrite_proc";
	}
	
	/**
	 * 
	 * @Description
	 *	공지사항 수정 페이지 이동 컨트롤러
	 * @Method Name : noticeModify
	 *
	 * @param idx	수정할 공지사항 idx
	 * @param model
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value = "/noticeModify", method = RequestMethod.GET)
	public String noticeModify(@RequestParam("idx")int idx, Model model) throws Exception{
		log.info("Notice Modify Call........");
		
		model.addAttribute("notice", service.noticeDetail(idx));
		
		return "/admin/notice/noticeModify";
	}
	
	/**
	 * 
	 * @Description
	 *	수정한 데이터를 데이터 베이스에 업데이트
	 * @Method Name : noticeModify_proc
	 *
	 * @param nt		수정한 데이터
	 * @param model
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value = "/noticeModify_proc", method = RequestMethod.POST)
	public String noticeModify_proc(NoticeVO nt, Model model) throws Exception{
		log.info("Notice Modify_proc Call........");
		
		System.out.println(nt);
		service.noticeModify(nt);
		model.addAttribute("idx", nt.getNotice_idx());
		
		return "/admin/notice/noticeModify_proc";
	}
	
	
}
