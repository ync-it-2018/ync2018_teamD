package kr.ync.project.front.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ync.project.front.domain.LoginVO;
import kr.ync.project.front.dto.LoginDTO;
import kr.ync.project.front.persistence.LoginDAO;
import lombok.extern.slf4j.Slf4j;

@Service
@Slf4j
public class UserServiceImpl implements UserService {

	@Autowired
	private LoginDAO dao;

	@Override
	public LoginVO login(LoginDTO dto) throws Exception {
		log.info("LoginVO ..........");
		return dao.login(dto);
	}

/*	@Override
	public void keepLogin(String uids, String sessionId, Date next) throws Exception {

		dao.keepLogin(uids, sessionId, next);

	}*/

/*	@Override
	public UserVO checkLoginBefore(String value) {

		return dao.checkUserWithSessionKey(value);
	}*/
}
