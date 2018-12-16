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
/**
 * 
 * hotelController.java 
 *
 * @Author : 이우호
 * @Date   : 2018. 12. 14.
 * @Description 
 *  ADMIN 페이지 호텔 동작 컨트롤러
 *
 */
public class hotelController {
	//테스트
	@Inject
	private HotelService service;
	
	@RequestMapping(value = "/hotelList", method = RequestMethod.GET)
	/**
	 * 
	 * @Description 
	 *  호텔 목록 불러오는 컨트롤러
	 * @Method Name :  hotelList
	 *
	 * @param listNum 페이징을 위한 시작 값, 현재 페이지 정보
	 * @param model
	 * @return
	 * @throws Exception
	 */
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
	/**
	 * 
	 * @Description
	 * 리뷰 목록 불러오는 컨트롤러
	 * @Method Name : commentList
	 *
	 * @param listNum	페이징을 위한 시작 값, 현재 페이지 정보
	 * @param model
	 * @return
	 * @throws Exception
	 */
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
	/**
	 * 
	 * @Description 
	 *	호텔 상세 정보 불러오는 컨트롤러
	 * @Method Name : hotelDetail
	 *
	 * @param listNum		페이징을 위한 시작 값, 현재 페이지 정보
	 * @param hotel_code	상세하게 볼 호텔 코드
	 * @param tab			호텔의 정보 1, 호텔의 리뷰 2
	 * @param model
	 * @return
	 * @throws Exception
	 */
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
	/**
	 * 
	 * @Description
	 *	호텔 숙소 정보 불러오는 컨트롤러
	 * @Method Name : roomDetail
	 *
	 * @param room_idx		선택한 숙소의 idx
	 * @param hotel_code	숙소가 있는 호텔 코드
	 * @param model
	 * @return
	 * @throws Exception
	 */
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
	/**
	 * 
	 * @Description
	 * 이미지 상세정보 불러오는 컨트롤러
	 * @Method Name : imageDetail
	 *
	 * @param idx		이미지를 불러올 방의 idx
	 * @param model
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value = "/imageDetail", method = RequestMethod.GET)
	public String imageDetail(@RequestParam("idx") int idx, Model model) throws Exception {
		model.addAttribute("image", service.rimage_detail(idx));
		return "admin/hotel/imageDetail";
	}
	/**
	 * 
	 * @Description
	 *	호텔 삭제하는 컨트롤러
	 * @Method Name : hotelDelete
	 *
	 * @param hotel_code	삭제하는 호텔의 코드
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value = "/hotelDelete", method = RequestMethod.GET)
	public String hotelDelete(@RequestParam("hotel_code") String hotel_code)throws Exception {
		service.hotelDelete(hotel_code);
		return "admin/hotel/hotelDelete";
	}
	/**
	 * 
	 * @Description
	 *	호텔 수정하는 컨트롤러
	 * @Method Name : hotelModify
	 *
	 * @param hotel_code	수정하는 호텔의 코드
	 * @param model
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value = "/hotelModify", method = RequestMethod.GET)
	public String hotelModify(@RequestParam("hotel_code") String hotel_code, Model model) throws Exception {
		model.addAttribute("hotel", service.read(hotel_code));
		model.addAttribute("room", service.roomdata(hotel_code));
		model.addAttribute("hotel_f", service.hotel_feature(hotel_code));
		model.addAttribute("h_image", service.hotel_image(hotel_code));
		return "admin/hotel/hotelModify";
	}
	/**
	 * 
	 * @Description
	 *	호텔의 편의기능을 추가하는 컨트롤러
	 * @Method Name : addFacility
	 *
	 * @param model
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value = "/addFacility", method = RequestMethod.GET)
	public String addFacility(Model model)throws Exception {
		model.addAttribute("list", service.facilityList());
		return "admin/hotel/addFacility";
	}
	/**
	 * 
	 * @Description
	 *	리뷰의 상세 정보 불러오는 컨트롤러
	 * @Method Name : reviewDetail
	 *
	 * @param idx		상세하게 볼 리뷰의 idx
	 * @param model
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value = "/reviewDetail", method = RequestMethod.GET)
	public String reviewDetail(@RequestParam("idx") int idx, Model model)throws Exception {
		model.addAttribute("data", service.reviewDetail(idx));
		return "admin/hotel/reviewDetail";
	}
	/**
	 * 
	 * @Description
	 *	리뷰 삭제하는 컨트롤러
	 * @Method Name : reviewDelete
	 *
	 * @param idx	삭제할 리뷰의 idx
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value = "/reviewDelete", method = RequestMethod.GET)
	public String reviewDelete(@RequestParam("idx") int idx)throws Exception {
		service.reviewDelete(idx);
		return "admin/hotel/reviewDelete";
	}
}
