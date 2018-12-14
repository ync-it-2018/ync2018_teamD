package kr.ync.project.admin.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import kr.ync.project.admin.domain.ListNumVO;
import kr.ync.project.admin.service.FaqService;
//import kr.ync.project.admin.domain.UserVO;
//import kr.ync.project.admin.dto.LoginDTO;
//import kr.ync.project.admin.service.UserService;
import lombok.extern.slf4j.Slf4j;
@Controller
@Slf4j
/**
 * 
 * customerController.java
 * 
 * 
 * @Author : 문태일
 * @Date   : 2018. 12. 14.
 * @Description
 * FAQ, QNA등의 고객센터
 *
 */
@RequestMapping("/admin")
public class customerController {
	
	@Inject
	private FaqService service;
	/**
	 * 
	 * @Description
	 * FAQ 리스트
	 * @Mathod Name : FAQList
	 * @param listNum
	 * @param model
	 * @return
	 * @throws Exception
	 *
	 */
	@RequestMapping(value = "/FAQList", method = RequestMethod.GET)
	public String FAQList(ListNumVO listNum, Model model) throws Exception{
		log.info("FAQ List call.....");
		model.addAttribute("FaqList", service.FaqList());
		log.info("Check...........................................9999999");
		listNum.setCnt(service.FaqCount());
		listNum.sets_listNum(listNum.getnowNum());
		listNum.sete_listNum(listNum.gets_listNum());
		model.addAttribute("FaqpageNum",listNum);	
		return "admin/customer/FAQList";
	}	
	/**.
	 * 
	 * @Description
	 * FAQ 삭제
	 * @Mathod Name : FAQDelete
	 * @param faq_idx
	 * @return
	 * @throws Exception
	 *
	 */
	@RequestMapping(value = "/FAQDelete", method = RequestMethod.GET)
	public String FAQDelete(@RequestParam("faq_idx") String faq_idx) throws Exception {
		service.FAQDelete(faq_idx);
		return "admin/customer/FAQDelete";
	}
}
