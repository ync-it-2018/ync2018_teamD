package kr.ync.project.admin.controller;

import java.util.Date;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

//import kr.ync.project.admin.domain.UserVO;
//import kr.ync.project.admin.dto.LoginDTO;
//import kr.ync.project.admin.service.UserService;
import lombok.extern.slf4j.Slf4j;
@Controller
@Slf4j
@RequestMapping("/admin")
public class salesController {
	
	@Inject
//	private UserService service;
	
	@RequestMapping(value = "/hotelSales", method = RequestMethod.GET)
	public String hotelSalesList() {
		log.info("HotelSales List call.....");
			
		return "admin/sales/hotelSales";
	}
	
	@RequestMapping(value = "/periodicSales", method = RequestMethod.GET)
	public String periodicSalesList() {
		log.info("periodic List call.....");
			
		return "admin/sales/periodicSales";
	}
}
