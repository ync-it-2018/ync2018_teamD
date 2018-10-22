package kr.ync.project.admin.persistence;

import java.util.Date;

import kr.ync.project.admin.domain.UserVO;
import kr.ync.project.admin.dto.LoginDTO;

public interface UserDAO {

	public UserVO login(LoginDTO dto) throws Exception;

	public void keepLogin(String uids, String sessionId, Date next);

	public UserVO checkUserWithSessionKey(String value);
}
