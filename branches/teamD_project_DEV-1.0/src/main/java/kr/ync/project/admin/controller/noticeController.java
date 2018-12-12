package kr.ync.project.admin.controller;

import java.util.HashMap;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import kr.ync.project.admin.domain.ListNumVO;
import kr.ync.project.admin.service.NoticeService;
import lombok.extern.slf4j.Slf4j;
@Controller
@Slf4j
@RequestMapping("/admin")
public class noticeController {
	
	@Inject
	private NoticeService service;
	
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
	
	@RequestMapping(value = "/noticeDetail", method = RequestMethod.GET)
	public String noticeDetail(@RequestParam("idx") int idx, Model model) throws Exception{
		log.info("Notice Detail Call.....");
		model.addAttribute("notice", service.noticeDetail(idx));
		
		
		return "admin/notice/noticeDetail";
	}
	
	@RequestMapping(value = "/noticeChk", method = RequestMethod.GET)
	public String noticeChk(@RequestParam("idx") int idx, @RequestParam("nt") String nt) throws Exception{
		log.info("Notice Detail Call.....");
		HashMap ntt = new HashMap();
		ntt.put("idx", idx);
		ntt.put("nt", nt);
		service.updateNotice(ntt);
		
		
		return "redirect:/admin/noticeDetail?idx="+idx;
	}
	
}