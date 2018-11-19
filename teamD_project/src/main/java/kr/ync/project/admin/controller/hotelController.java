package kr.ync.project.admin.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import kr.ync.project.admin.domain.HotelVO;
import kr.ync.project.admin.service.HotelService;
//import kr.ync.project.admin.domain.UserVO;
//import kr.ync.project.admin.dto.LoginDTO;
//import kr.ync.project.admin.service.UserService;
import lombok.extern.slf4j.Slf4j;
@Controller
@Slf4j
@RequestMapping("/admin/*")
public class hotelController {
	
	@Inject
	private HotelService service;
	
	@RequestMapping(value = "/hotelList", method = RequestMethod.GET)
	public String hotelList(HotelVO board, Model model) throws Exception {
		log.info("Hotel List call.....");
		
		model.addAttribute("list", service.listAll());
		
		return "admin/hotel/hotelList";
	}
	
	@RequestMapping(value = "/commentList", method = RequestMethod.GET)
	public String commentList() {
		log.info("Comment List call.....");
			
		return "admin/hotel/commentList";
	}
	
	@RequestMapping(value = "/hotelDetail", method = RequestMethod.GET)
	public String hotelDetail(@RequestParam("hotel_code") String hotel_code, Model model) throws Exception {
		model.addAttribute(service.read(hotel_code));
		return "admin/hotel/hotelDetail";
	}
}
