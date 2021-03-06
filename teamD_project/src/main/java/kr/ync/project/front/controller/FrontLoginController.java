package kr.ync.project.front.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.ync.project.front.domain.LoginVO;
import kr.ync.project.front.dto.LoginDTO;
import kr.ync.project.front.service.UserService;
import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
public class FrontLoginController {

	@Autowired
	private UserService service;

	@GetMapping(value="/login")
	public void loginGET(@ModelAttribute("dto") LoginDTO dto) {
		log.info("login activated........");
	}

	//preHandle 실행
	@RequestMapping("/loginPost")
	public String loginPOST(LoginDTO dto, HttpSession session, Model model) throws Exception {
		log.info("loginPost prehandle activated........");
		LoginVO vo = service.login(dto);
		
		// UserVO가 null 이란 말은 DB에서 해당 user에 대한 data가 없다는 말이다.  
		if (vo == null)
			return "";
		
		model.addAttribute("LoginVO", vo);
		
		return "front/loginPost";
	}
	//postHandle 실행

	/*@PostMapping(value = "/loginPost")
	public void loginPOST(LoginDTO dto, HttpSession session, Model model) throws Exception {

		UserVO vo = service.login(dto);

		if (vo == null) {
			return;
		}

		model.addAttribute("userVO", vo);

		if (dto.isUseCookie()) {

			int amount = 60 * 60 * 24 * 7;

			Date sessionLimit = new Date(System.currentTimeMillis() + (1000 * amount));

			service.keepLogin(vo.getUids(), session.getId(), sessionLimit);
		}

	}*/
/*
	@RequestMapping("/logout")
	public void logout(HttpServletRequest request, HttpServletResponse response, HttpSession session) throws Exception {

		log.info("logout.................................1");

		Object obj = session.getAttribute("login");

		if (obj != null) {
			UserVO vo = (UserVO) obj;
			log.info("logout.................................2");
			session.removeAttribute("login");
			session.invalidate();

			log.info("logout.................................3");
			Cookie loginCookie = WebUtils.getCookie(request, "loginCookie");

			if (loginCookie != null) {
				log.info("logout.................................4");
				loginCookie.setPath("/");
				loginCookie.setMaxAge(0);
				response.addCookie(loginCookie);
				service.keepLogin(vo.getUids(), session.getId(), new Date());
				log.info("logout success................");
			}
		}
		response.sendRedirect("/");
	}*/
}
