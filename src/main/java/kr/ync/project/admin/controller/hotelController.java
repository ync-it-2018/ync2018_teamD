package kr.ync.project.admin.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.ync.project.admin.domain.BoardVO;
import kr.ync.project.admin.service.BoardService;
//import kr.ync.project.admin.domain.UserVO;
//import kr.ync.project.admin.dto.LoginDTO;
//import kr.ync.project.admin.service.UserService;
import lombok.extern.slf4j.Slf4j;
@Controller
@Slf4j
@RequestMapping("/admin/*")
public class hotelController {
	
	@Inject
	private BoardService service;
	
	@RequestMapping(value = "/hotelList", method = RequestMethod.GET)
	public String hotelList(BoardVO board, Model model) throws Exception {
		log.info("Hotel List call.....");
		
		model.addAttribute("list", service.listAll());
		
		return "admin/hotel/hotelList";
	}
	
	@RequestMapping(value = "/commentList", method = RequestMethod.GET)
	public String commentList() {
		log.info("Comment List call.....");
			
		return "admin/hotel/commentList";
	}
}
