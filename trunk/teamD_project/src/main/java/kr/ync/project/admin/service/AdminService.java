package kr.ync.project.admin.service;

import java.util.Date;

import kr.ync.project.admin.domain.AdminVO;

public interface AdminService {

	public AdminVO a_login(AdminVO ad) throws Exception;

	public AdminVO checkLoginBefore(String value);

	public void keepLogin(String admin_id, String id, Date sessionLimit) throws Exception;

}
