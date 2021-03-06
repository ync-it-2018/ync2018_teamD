package kr.ync.project.admin.service;

import java.util.List;

import kr.ync.project.admin.domain.AdminVO;
import kr.ync.project.admin.domain.Criteria;
import kr.ync.project.admin.domain.SearchCriteria;
import kr.ync.project.admin.domain.memberVO;

public interface memberService {
	public void regist(memberVO board) throws Exception;
    
    public memberVO read(String member_id) throws Exception;
    
    public void modify (memberVO board) throws Exception;
    
    public void remove (Integer bno) throws Exception;
    
    public List<memberVO> listAll() throws Exception;
    
    public List<memberVO> listCriteria(Criteria cri) throws Exception;
    
    public int listCountCriteria(Criteria cri)throws Exception;
    
    public int listSearchCount(SearchCriteria cri) throws Exception;
    
    public List<memberVO> readbooking(String member_id) throws Exception;
    
    public List<memberVO> readbookingEnd(String member_id) throws Exception;

	public List<memberVO> omemberlist(SearchCriteria cri) throws Exception;

	public int listomemberCount(SearchCriteria cri) throws Exception;

	public List<AdminVO> memberadminList(SearchCriteria cri) throws Exception;

	public int listmemberadminCount(SearchCriteria cri) throws Exception;

	public void memberupdate(memberVO memvo) throws Exception;

	public void memberDelete(String member_id) throws Exception;

	public void memberadminDelete(String admin_id) throws Exception;

	public AdminVO adminread(String admin_id) throws Exception;

	public void memberadminupdate(AdminVO adminvo) throws Exception;

	public void memberadminInserte(AdminVO adminvo) throws Exception;
    
}
