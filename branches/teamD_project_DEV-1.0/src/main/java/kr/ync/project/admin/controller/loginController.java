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
public class loginController {
	
	@Inject
//	private UserService service;
	
	@RequestMapping(value = "", method = RequestMethod.GET)
	public String adminlogin() {
		log.info("login call.....");
			
		return "admin/login";
	}
	
//	@RequestMapping("login")
//	public void loginPost(LoginDTO dto, HttpSession session, Model model) throws Exception{
//
//		UserVO vo = service.login(dto);
//
//		if (vo == null) {
//			return;
//		}
//
//		model.addAttribute("userVO", vo);
//
//		if (dto.isUseCookie()) {
//
//			int amount = 60 * 60 * 24 * 7;
//
//			Date sessionLimit = new Date(System.currentTimeMillis() + (1000 * amount));
//
//			service.keepLogin(vo.getUids(), session.getId(), sessionLimit);
//		}
//	}

}
