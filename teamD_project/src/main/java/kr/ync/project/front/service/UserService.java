package kr.ync.project.front.service;

import kr.ync.project.front.domain.LoginVO;
import kr.ync.project.front.dto.LoginDTO;

public interface UserService {

	public LoginVO login(LoginDTO dto) throws Exception;
/*
	public void keepLogin(String uids, String sessionId, Date next) throws Exception;

	public UserVO checkLoginBefore(String value);
*/
}
