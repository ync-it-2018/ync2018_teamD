package kr.ync.project.front.persistence;

import kr.ync.project.front.domain.LoginVO;
import kr.ync.project.front.dto.LoginDTO;

public interface LoginDAO {
	
	public LoginVO login(LoginDTO dto) throws Exception;
	/*
	public void keepLogin(String uids, String sessionId, Date next);
	
	public LoginVO checkUserWithSessionKey(String value);
	*/
}
