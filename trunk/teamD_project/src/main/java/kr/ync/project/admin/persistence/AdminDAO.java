package kr.ync.project.admin.persistence;

import java.util.Date;

import kr.ync.project.admin.domain.AdminVO;
/**
 * 
 * AdminDAO.java
 *
 * @Author : 이우호
 * @Date   : 2018. 12. 14.
 * @Description 
 *  관리자 로그인 시 필요한 인터페이스
 *
 */
public interface AdminDAO {

	public AdminVO a_login(AdminVO ad) throws Exception;
	
	public AdminVO checkUserWithSessionKey(String value);

	public void keepLogin(String admin_id, String id, Date sessionLimit);
		
}
