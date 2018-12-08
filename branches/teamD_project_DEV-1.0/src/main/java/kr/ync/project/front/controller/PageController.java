package kr.ync.project.front.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import kr.ync.project.front.domain.FhotelVO;
import kr.ync.project.front.service.FhotelService;
import kr.ync.project.front.service.FmypageService;
import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
@RequestMapping("/")
public class PageController {
	

	@Inject
	private FmypageService mypageService;
	
	@Inject
	private FhotelService service;

		
	/*@RequestMapping("/blog")
	public String blog() {
		log.info("blog call.....");
		
		
		return "front/blog";
	}*/
	@RequestMapping(value= "/searchresultdetail" , method = RequestMethod.GET)
	public String searchresultdetail(@RequestParam("hotel_code") String hotel_code,
			Model model) throws Exception {
		log.info("searchresultdetail call.....");
		model.addAttribute("detailroom", service.detailroom(hotel_code)); //최종적으로불러올이름
		model.addAttribute("detail", service.detail(hotel_code));
		model.addAttribute("h_image", service.hotel_image(hotel_code)); //h_image는 포이치문 아이템즈
		return "front/searchresultdetail"; //최종적으로 페이지
	}
	
	@RequestMapping("/components")
	public String components() {
		log.info("components call.....");
		
		return "front/components";
	}
	
	@RequestMapping("/contact")
	public String contact() {
		log.info("contact call.....");
		
		return "front/contact";
	}
	
	@RequestMapping("/portfolio")
	public String portfolio() {
		log.info("portfolio call.....");
		
		return "front/portfolio";
	}
	
	@RequestMapping("/pricingbox")
	public String pricingbox() {
		log.info("pricingbox call.....");
		
		return "front/pricingbox";
	}
	
	@RequestMapping(value= "/resultlist" , method = RequestMethod.GET)
	public String typography(FhotelVO board, Model model, @RequestParam("textfield") String textfield ) throws Exception {
		log.info("resultlist call.....");
		model.addAttribute("list", service.listAll(textfield));
		return "front/resultlist";
	}
	
	
	
	@RequestMapping("/searchresult")
	public String searchresult() {
		log.info("searchresult call.....");
		
		return "front/searchresult";
	}
	
	@RequestMapping("/register_proc")
	public String register() {
		log.info("register confirm call.....");
		
		return "front/register_proc";
	}

	@RequestMapping("/doublechk")
	public String doublechk() {
		log.info("name check page call.....");
		
		return "front/doublechk";
	}
	
	@RequestMapping("/avgresult")
	public String avgresult(@RequestParam("hotel_code") String hotel_code, Model model) throws Exception {
		log.info("avgresult page call.....");
		model.addAttribute("review", service.review(hotel_code));
		return "front/avgresult";
	}
	@RequestMapping("/roomdetail") //호텔객실 
	public String roomdetail(@RequestParam("room_idx") int room_idx,Model model) throws Exception {
		log.info("roomdetail page call.....");
		model.addAttribute("roomdetail",service.roomdetail(room_idx));
		model.addAttribute("roomdetailimage",service.roomdetailimage(room_idx));
		model.addAttribute("roomdetailproduct",service.roomdetailproduct(room_idx));
		return "front/roomdetail";
	}

	@RequestMapping("/mypage")
	public String mypage(Model model) throws Exception {
		log.info("mypage call.....");
		// 마이페이지 각 항목별 모델 생성
		model.addAttribute("resvCompList",mypageService.resvCompList());
		model.addAttribute("resvChkinNowList",mypageService.resvChkinNowList());
		model.addAttribute("resvChkinFutureList",mypageService.resvChkinFutureList());
		model.addAttribute("resvCancelList",mypageService.resvCancelList());
		return "front/mypage";
	}
	
	@RequestMapping(value = "/resvCancel", method = RequestMethod.POST)
	public String resvcancel(@RequestParam("BOOKING_IDX") int BOOKING_IDX  , Model model) throws Exception {
		log.info("from mypage to delete reserved hotel call.....");
		model.addAttribute("resvCancel",mypageService.resvCancel(BOOKING_IDX));
				
		return "front/resvCancel";
	}
	
	@RequestMapping("/likepage")
	public String likepage() {
		log.info("likepage call.....");
		
		return "front/likepage";
	}
	
	@RequestMapping("/lastpage")
	public String lastpage() {
		log.info("lastpage call.....");
		
		return "front/lastpage";
	}
	
	@RequestMapping("/writereview")
	public String writereview() {
		log.info("write review page call.....");
		
		return "front/writereview";
	}
	@RequestMapping(value= "/reservation" )
	public String reservation() {
		log.info("reservation call.....");
		
		return "front/reservation";
	}
			
		


//	@RequestMapping(value = "/noticelist", method = RequestMethod.GET)
//	public String noticelist(FnoticeVO board, Model model) throws Exception {
//
//		model.addAttribute("readNotice", notice_service.listAll());
//		
//		return "front/index";
//	}
//	
}
