package kr.ync.project.admin.persistence;

import java.util.List;

import kr.ync.project.admin.domain.AdminVO;
import kr.ync.project.admin.domain.Criteria;
import kr.ync.project.admin.domain.SearchCriteria;
import kr.ync.project.admin.domain.memberVO;

public interface memberDAO {
	public void create(memberVO vo) throws Exception;

	public memberVO read(String member_id) throws Exception;
	
	public List<memberVO> readbooking(String member_id) throws Exception;
	
	public List<memberVO> readbookingEnd(String member_id) throws Exception;

	public void update(memberVO vo) throws Exception;

	public void delete(Integer bno) throws Exception;
	
	public void updateReplyCnt(Integer bno, int amount) throws Exception;
	
	public List<memberVO> listAll() throws Exception;
	
	public List<memberVO> listPage(int page) throws Exception;
	
	public List<memberVO> listCriteria(Criteria cri) throws Exception;
	
	public int mcountPaging(Criteria cri) throws Exception;
	
	public int listSearchCount(SearchCriteria cri)throws Exception;

	public List<memberVO> omemberlist(SearchCriteria cri) throws Exception;

	public int listomemberCount(SearchCriteria cri) throws Exception;

	public List<AdminVO> memberadminList(SearchCriteria cri) throws Exception;

	public int listmemberadminCount(SearchCriteria cri) throws Exception;
}
