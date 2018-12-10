package kr.ync.project.front.persistence;

import kr.ync.project.front.domain.LoginVO;
import kr.ync.project.front.dto.LoginDTO;
import kr.ync.project.front.dto.RegisterDTO;

public interface LoginDAO {
	
	public LoginVO login(LoginDTO dto) throws Exception;

	
	public LoginVO register(RegisterDTO dto) throws Exception;

}
