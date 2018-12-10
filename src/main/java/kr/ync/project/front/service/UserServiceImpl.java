package kr.ync.project.front.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ync.project.front.domain.LoginVO;
import kr.ync.project.front.dto.LoginDTO;
import kr.ync.project.front.dto.RegisterDTO;
import kr.ync.project.front.persistence.LoginDAO;
import lombok.extern.slf4j.Slf4j;

@Service
@Slf4j
public class UserServiceImpl implements UserService {

	@Autowired
	private LoginDAO dao;

	@Override
	public LoginVO login(LoginDTO dto) throws Exception {
		log.info("LoginVO - login session..........");
		return dao.login(dto);
	}

	/* (non-Javadoc)
	 * @see kr.ync.project.front.service.UserService#register(kr.ync.project.front.dto.RegisterDTO)
	 */
	@Override
	public LoginVO register(RegisterDTO dto) throws Exception {
		// TODO Auto-generated method stub
		log.info("LoginVO - register session..........");
		return dao.register(dto);
	}
}
