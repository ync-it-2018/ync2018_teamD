package kr.ync.project.front.controller;

import java.util.HashMap;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import kr.ync.project.front.domain.FhotelVO;
import kr.ync.project.front.domain.LoginVO;
import kr.ync.project.front.dto.RegisterDTO;
import kr.ync.project.front.service.FAQService;
import kr.ync.project.front.service.FhotelService;
import kr.ync.project.front.service.FmypageService;
import kr.ync.project.front.service.UserService;
import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
@RequestMapping("/")
public class PageController {
	

	@Inject
	private FmypageService mypageService;

	@Inject
	private UserService userService;

	@Inject
	private FhotelService service;
	
	

	@Inject
	private FAQService faqService;

		
	/*@RequestMapping("/blog")
	public String blog() {
		log.info("blog call.....");
		
		
		return "front/blog";
	}*/
	@RequestMapping(value= "/searchresultdetail" , method = RequestMethod.GET)
	public String searchresultdetail(@RequestParam("hotel_code") String hotel_code,
			Model model) throws Exception {
		log.info("searchresultdetail call.....");
		model.addAttribute("detailroom", service.detailroom(hotel_code));//최종적으로불러올이름
		model.addAttribute("detail", service.detail(hotel_code));
		model.addAttribute("h_image", service.hotel_image(hotel_code)); //h_image는 포이치문 아이템즈
		model.addAttribute("read", service.read(hotel_code));
		
		
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
	public String resultlist(FhotelVO board, Model model, @RequestParam("textfield") String textfield, @RequestParam("grade") String grade ) throws Exception {
		log.info("resultlist call.....");
		model.addAttribute("list", service.listAll(textfield, grade));
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
	
	@RequestMapping("/avgresult") //호텔 평점및 후기 
	public String avgresult(@RequestParam("hotel_code") String hotel_code,
			Model model) throws Exception {
		log.info("avgresult page call.....");
		model.addAttribute("review", service.review(hotel_code));
		return "front/avgresult";
	}
	@RequestMapping("/roomdetail") //호텔객실 상세보기
	public String roomdetail(@RequestParam("hotel_code") String hotel_code,
			@RequestParam("room_idx") int room_idx,
			Model model) throws Exception {
		log.info("roomdetail page call.....");
		HashMap<String, String> mp = new HashMap<String, String>();
		mp.put("hotel_code", hotel_code);
		mp.put("room_idx",String.valueOf(room_idx));
		model.addAttribute("roomdetail",service.roomdetail(mp));
		model.addAttribute("roomdetailimage",service.roomdetailimage(room_idx));
		model.addAttribute("roomdetailproduct",service.roomdetailproduct(room_idx));
		return "front/roomdetail";
	}

	@RequestMapping("/mypage")
	public String mypage(
			@RequestParam("MEMBER_ID") String MEMBER_ID, Model model) throws Exception {
		log.info("mypage call.....");
		// 마이페이지 각 항목별 모델 생성
		
		model.addAttribute("resvCompList",mypageService.resvCompList(MEMBER_ID));
		model.addAttribute("resvChkinNowList",mypageService.resvChkinNowList(MEMBER_ID));
		model.addAttribute("resvChkinFutureList",mypageService.resvChkinFutureList(MEMBER_ID));
		model.addAttribute("resvCancelList",mypageService.resvCancelList(MEMBER_ID));
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
	
	@RequestMapping("/resultlist_likeVer")
	public String resultlist_likeVer() {
		log.info("resultlist_likeVer call.....");
		
		return "front/resultlist_likeVer";
	}
	
	@RequestMapping("/writereview")
	public String writereview() {
		log.info("write review page call.....");
		
		return "front/writereview";
	}
	@RequestMapping(value= "/reservation" , method = RequestMethod.GET)//호텔 예약하기 화면
	public String reservation(@RequestParam("hotel_code") String hotel_code,
			@RequestParam("room_idx") int room_idx,Model model) throws Exception {
		log.info("reservation call.....");
		HashMap<String, String> mp = new HashMap<String, String>();
		mp.put("hotel_code", hotel_code);
		mp.put("room_idx",String.valueOf(room_idx));
		model.addAttribute("reservation", service.reservation(mp)); 
		return "front/reservation"; 
	
	}
	@RequestMapping(value= "/reservationresult")
	public String reservationresult() {
		log.info("reservationresult call.....");
		
		return "front/reservationresult";
	}
			
	@RequestMapping(value = "/register_proc", method = RequestMethod.POST)
	public String register(
			@RequestParam("MEMBER_ID") String MEMBER_ID,
			@RequestParam("MEMBER_PASSWORD") String MEMBER_PASSWORD,
			@RequestParam("MEMBER_PNUMBER") String MEMBER_PNUMBER,
			@RequestParam("MEMBER_ADDRESS") String MEMBER_ADDRESS,
			@RequestParam("NATION_CODE") String NATION_CODE,
			@RequestParam("MEMBER_FIANAME") String MEMBER_FIANAME,
			@RequestParam("MEMBER_LANAME") String MEMBER_LANAME,
			Model model, RegisterDTO dto) throws Exception {
		// (not used 라도 필요함)
		LoginVO vo = userService.register(dto);
		log.info("register call.....");
		
		model.addAttribute("register", userService);
				
		return "front/register_proc";
	}
	
	@RequestMapping("/logout_proc")
	public String logout() {
		
		log.info("logout call.....");
		return "front/logout_proc";
	}
	
	@RequestMapping("/faqninquiry")
	public String faq(Model model) throws Exception {
		log.info("FAQ & Inquiry page call.....");
		model.addAttribute("FAQList", faqService.FAQList());
		return "front/faqninquiry";
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
