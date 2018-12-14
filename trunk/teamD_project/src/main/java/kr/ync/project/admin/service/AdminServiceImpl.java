package kr.ync.project.admin.service;

import java.util.Date;

import javax.inject.Inject;

import org.springframework.stereotype.Repository;

import kr.ync.project.admin.domain.AdminVO;
import kr.ync.project.admin.persistence.AdminDAO;

@Repository
public class AdminServiceImpl implements AdminService {
	@Inject
	private AdminDAO dao;

	@Override
	public AdminVO a_login(AdminVO ad) throws Exception {
		// TODO Auto-generated method stub
		return dao.a_login(ad);
	}
	@Override
	public AdminVO checkLoginBefore(String value) {

		return dao.checkUserWithSessionKey(value);
	}
	@Override
	public void keepLogin(String admin_id, String id, Date sessionLimit) throws Exception {
		// TODO Auto-generated method stub
		dao.keepLogin(admin_id, id, sessionLimit);
	}

}
