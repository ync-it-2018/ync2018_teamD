package kr.ync.project.front.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import kr.ync.project.front.domain.FhotelVO;
import kr.ync.project.front.service.FhotelService;
import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
@RequestMapping("/")
public class PageController {
	
	@Inject
	private FhotelService service;
		
	/*@RequestMapping("/blog")
	public String blog() {
		log.info("blog call.....");
		
		
		return "front/blog";
	}*/
	@RequestMapping(value= "/blog" , method = RequestMethod.GET)
	public String blog(@RequestParam("hotel_code") String hotel_code, Model model) throws Exception {
		log.info("blog call.....");
		model.addAttribute("detailroom", service.detailroom(hotel_code)); //최종적으로불러올이름
		model.addAttribute("detail", service.detail(hotel_code));
		return "front/blog"; //최종적으로 페이지
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
	
	@RequestMapping(value= "/typography" , method = RequestMethod.GET)
	public String typography(FhotelVO board, Model model) throws Exception {
		log.info("typography call.....");
		model.addAttribute("list", service.listAll());
		return "front/typography";
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
	public String avgresult() {
		log.info("avgresult page call.....");
		
		return "front/avgresult";
	}

	@RequestMapping("/mypage")
	public String mypage() {
		log.info("mypage call.....");
		
		return "front/mypage";
	}
	
	@RequestMapping("/likepage")
	public String likepage() {
		log.info("likepage call.....");
		
		return "front/likepage";
	}
	
	@RequestMapping("/writereview")
	public String writereview() {
		log.info("write review page call.....");
		
		return "front/writereview";
	}
	
}
