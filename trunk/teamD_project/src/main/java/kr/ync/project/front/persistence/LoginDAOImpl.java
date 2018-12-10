package kr.ync.project.front.persistence;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ync.project.front.domain.LoginVO;
import kr.ync.project.front.dto.LoginDTO;
import kr.ync.project.front.dto.RegisterDTO;
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

	/* (non-Javadoc)
	 * @see kr.ync.project.front.persistence.LoginDAO#register(kr.ync.project.front.dto.RegisterDTO)
	 */
	@Override
	public LoginVO register(RegisterDTO dto) throws Exception {
		// TODO Auto-generated method stub
		
		log.info("RegisterDAO ..........");
		return session.selectOne(namespace + ".register", dto);
	}
}
