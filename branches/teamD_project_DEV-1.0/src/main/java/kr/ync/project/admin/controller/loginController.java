package kr.ync.project.admin.controller;

import java.util.Date;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.ync.project.admin.domain.AdminVO;
import kr.ync.project.admin.service.AdminService;
import lombok.extern.slf4j.Slf4j;
@Controller
@Slf4j
@RequestMapping("/admin")

/**
 * 
 * loginController.java ADMIN 로그인 동작 컨트롤러
 *
 * @Author : 이우호
 * @Date   : 2018. 12. 14.
 * @Description 
 *  
 *
 */
public class loginController {
	
	@Inject
	private AdminService service;
	
	/**
	 * 
	 * @Description 
	 * 관리자 로그인 페이지 불러오는 컨트롤러
	 * @Method Name : adminlogin
	 *
	 * @return
	 */
	@RequestMapping(value = "", method = RequestMethod.GET)
	public String adminlogin() {
		log.info("login call.....");
			
		return "admin/login";
	}
	
	@PostMapping(value = "/loginPost")
	/**
	 * 
	 * @Description 
	 *	관리자 로그인 확인 하는 컨트롤러
	 * @Method Name : loginPOST
	 *
	 * @param ad		로그인 시도하는 아이디, 비밀번호
	 * @param session	
	 * @param model
	 * @return
	 * @throws Exception
	 */
	public String loginPOST(AdminVO ad, HttpSession session, Model model) throws Exception {

		AdminVO vo = service.a_login(ad);

		if (vo == null) {
			return "admin/login";
		}

		model.addAttribute("admin", vo);

		if (ad.isAdminCookie()) {

			int amount = 60 * 60 * 24 * 7;

			Date sessionLimit = new Date(System.currentTimeMillis() + (1000 * amount));

			service.keepLogin(vo.getAdmin_id(), session.getId(), sessionLimit);
		}
		return "admin/loginPost";

	}
	
}
