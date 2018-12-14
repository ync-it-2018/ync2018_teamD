package kr.ync.project.admin.service;

import java.util.Date;

import kr.ync.project.admin.domain.AdminVO;
/**
 * 
 * AdminService.java
 *
 * @Author : 이우호
 * @Date   : 2018. 12. 14.
 * @Description 
 *  로그인 시 필요한 서비스 인터페이스
 *
 */
public interface AdminService {

	public AdminVO a_login(AdminVO ad) throws Exception;

	public AdminVO checkLoginBefore(String value);

	public void keepLogin(String admin_id, String id, Date sessionLimit) throws Exception;

}
