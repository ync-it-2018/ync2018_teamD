package kr.ync.project.admin.persistence;

import java.util.Date;

import kr.ync.project.admin.domain.AdminVO;

public interface AdminDAO {

	public AdminVO a_login(AdminVO ad) throws Exception;
	
	public AdminVO checkUserWithSessionKey(String value);

	public void keepLogin(String admin_id, String id, Date sessionLimit);
		
}
