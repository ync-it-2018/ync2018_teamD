package kr.ync.project.front.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
//@RequestMapping("/")
public class PageController {
	
		
	@RequestMapping("/blog")
	public String blog() {
		log.info("blog call.....");
		
		return "front/blog";
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
	
	@RequestMapping("/typography")
	public String typography() {
		log.info("typography call.....");
		
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
}
