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
import kr.ync.project.admin.service.HotelService;
//import kr.ync.project.admin.domain.UserVO;
//import kr.ync.project.admin.dto.LoginDTO;
//import kr.ync.project.admin.service.UserService;
import lombok.extern.slf4j.Slf4j;
@Controller
@Slf4j
@RequestMapping("/admin/*")
public class hotelController {
	//테스트
	@Inject
	private HotelService service;
	
	@RequestMapping(value = "/hotelList", method = RequestMethod.GET)
	public String hotelList(@ModelAttribute("cri") ListNumVO listNum, Model model) throws Exception {
		log.info("Hotel List call.....");
		listNum.setCnt(service.listcnt());
		listNum.sets_listNum(listNum.getnowNum());
		listNum.sete_listNum(listNum.gets_listNum());
		model.addAttribute("list", service.listAll());
		model.addAttribute("listNum",listNum);
		
		return "admin/hotel/hotelList";
	}
	
	@RequestMapping(value = "/commentList", method = RequestMethod.GET)
	public String commentList(@ModelAttribute("cri") ListNumVO listNum, Model model)throws Exception {
		log.info("Comment List call.....");
		model.addAttribute("allreview",service.allreview());	
		listNum.setCnt(service.allreviewcnt());
		listNum.sets_listNum(listNum.getnowNum());
		listNum.sete_listNum(listNum.gets_listNum());
		model.addAttribute("listNum",listNum);	
		return "admin/hotel/commentList";
	}
	
	@RequestMapping(value = "/hotelDetail", method = RequestMethod.GET)
	public String hotelDetail(@ModelAttribute("cri") ListNumVO listNum, @RequestParam("hotel_code") String hotel_code, @RequestParam("tab") int tab, Model model) throws Exception {
		model.addAttribute("hotel", service.read(hotel_code));
		model.addAttribute("room", service.roomdata(hotel_code));
		model.addAttribute("hotel_f", service.hotel_feature(hotel_code));
		model.addAttribute("h_image", service.hotel_image(hotel_code));
		model.addAttribute("review", service.review(hotel_code));
		model.addAttribute("modal_num", tab);
		
		listNum.setCnt(service.reviewcnt(hotel_code));
		listNum.sets_listNum(listNum.getnowNum());
		listNum.sete_listNum(listNum.gets_listNum());
		model.addAttribute("listNum",listNum);
		return "admin/hotel/hotelDetail";
	}
	
	@RequestMapping(value = "/roomDetail", method = RequestMethod.GET)
	public String roomDetail(@RequestParam("room_idx") int room_idx, @RequestParam("hotel_code") String hotel_code, Model model) throws Exception {
		HashMap<String, Object> h_data = new HashMap<String, Object>(); 
		h_data.put("room_idx", room_idx); 
		h_data.put("hotel_code", hotel_code);
		model.addAttribute("item", service.room_feature(h_data));
		model.addAttribute("bed", service.room_bed(room_idx));
		model.addAttribute("image", service.room_image(room_idx));
		return "admin/hotel/roomDetail";
	}
	
	@RequestMapping(value = "/imageDetail", method = RequestMethod.GET)
	public String imageDetail(@RequestParam("idx") int idx, Model model) throws Exception {
		model.addAttribute("image", service.rimage_detail(idx));
		return "admin/hotel/imageDetail";
	}
	
	@RequestMapping(value = "/hotelDelete", method = RequestMethod.GET)
	public String hotelDelete(@RequestParam("hotel_code") String hotel_code)throws Exception {
		service.hotelDelete(hotel_code);
		return "admin/hotel/hotelDelete";
	}
	
	@RequestMapping(value = "/hotelModify", method = RequestMethod.GET)
	public String hotelModify(@RequestParam("hotel_code") String hotel_code, Model model) throws Exception {
		model.addAttribute("hotel", service.read(hotel_code));
		model.addAttribute("room", service.roomdata(hotel_code));
		model.addAttribute("hotel_f", service.hotel_feature(hotel_code));
		model.addAttribute("h_image", service.hotel_image(hotel_code));
		return "admin/hotel/hotelModify";
	}
	
	@RequestMapping(value = "/addFacility", method = RequestMethod.GET)
	public String addFacility(Model model)throws Exception {
		model.addAttribute("list", service.facilityList());
		return "admin/hotel/addFacility";
	}
	
	@RequestMapping(value = "/reviewDetail", method = RequestMethod.GET)
	public String reviewDetail(@RequestParam("idx") int idx, Model model)throws Exception {
		model.addAttribute("data", service.reviewDetail(idx));
		return "admin/hotel/reviewDetail";
	}
	
	@RequestMapping(value = "/reviewDelete", method = RequestMethod.GET)
	public String reviewDelete(@RequestParam("idx") int idx)throws Exception {
		service.reviewDelete(idx);
		return "admin/hotel/reviewDelete";
	}
}
