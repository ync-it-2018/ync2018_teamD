package kr.ync.project.admin.service;

import java.util.HashMap;
import java.util.List;

import kr.ync.project.admin.domain.NoticeVO;

public interface NoticeService {
	
	public List<NoticeVO> listAll() throws Exception;
	
	public int listCnt() throws Exception;
	
	public NoticeVO noticeDetail(int idx) throws Exception;
	
	public void updateNotice(HashMap ntt) throws Exception;
}