package kr.ync.project.admin.persistence;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.ync.project.admin.domain.AdminVO;

@Repository
public class AdminDAOImpl implements AdminDAO {
	@Inject
	private SqlSession session;
	
	private static String namespace 
	= "kr.ync.project.mapper.LoginMapper";

	@Override
	public AdminVO a_login(AdminVO ad) throws Exception {
		// TODO Auto-generated method stub
		return session.selectOne(namespace + ".admin_login", ad);
	}

	@Override
	public AdminVO checkUserWithSessionKey(String value) {
		// TODO Auto-generated method stub
		return session.selectOne(namespace + ".checkUserWithSessionKey", value);
	}

	@Override
	public void keepLogin(String admin_id, String id, Date sessionLimit) {
		// TODO Auto-generated method stub
		Map<String, Object> paramMap = new HashMap<String, Object>();
		paramMap.put("admin_id", admin_id);
		paramMap.put("sessionId", id);
		paramMap.put("next", sessionLimit);
		
		session.update(namespace + ".keepLogin", paramMap);
	}

}
