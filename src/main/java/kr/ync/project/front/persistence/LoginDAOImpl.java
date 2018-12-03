package kr.ync.project.front.persistence;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ync.project.front.domain.LoginVO;
import kr.ync.project.front.dto.LoginDTO;
import lombok.extern.slf4j.Slf4j;

@Repository
@Slf4j
public class LoginDAOImpl implements LoginDAO {

	@Autowired
	private SqlSession session;

	private static String namespace = "kr.ync.project.mapper.LoginMapper";

	@Override
	public LoginVO login(LoginDTO dto) throws Exception {
		log.info("LoginDAO ..........");
		return session.selectOne(namespace + ".login", dto);
	}
/*
	@Override
	public void keepLogin(String uids, String sessionId, Date next) {

		Map<String, Object> paramMap = new HashMap<String, Object>();
		paramMap.put("uids", uids);
		paramMap.put("sessionId", sessionId);
		paramMap.put("next", next);

		session.update(namespace + ".keepLogin", paramMap);

	}

	@Override
	public LoginVO checkUserWithSessionKey(String value) {

		return session.selectOne(namespace + ".checkUserWithSessionKey", value);
	}
*/
}
