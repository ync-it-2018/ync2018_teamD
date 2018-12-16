package kr.ync.project.admin.persistence;

import java.util.HashMap;
import java.util.List;

import kr.ync.project.admin.domain.NoticeVO;
/**
 * 
 * NoticeDAO.java
 *
 * @Author : 이우호
 * @Date   : 2018. 12. 14.
 * @Description 
 *  공지사항에 관련된 동작시 필요한 인터페이스
 *
 */
public interface NoticeDAO {

	public List<NoticeVO> listAll() throws Exception;
	
	public int listCnt() throws Exception;
	
	public NoticeVO noticeDetail(int idx) throws Exception;
	
	public void updateNotice(HashMap ntt) throws Exception;

	public void addNotice(NoticeVO nt) throws Exception;

	public void noticeModify(NoticeVO nt) throws Exception;
}
