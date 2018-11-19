package kr.ync.project.admin.persistence;

import java.util.List;

import kr.ync.project.admin.domain.memberVO;

public interface memberDAO {
	public void create(memberVO vo) throws Exception;

	public memberVO read(Integer bno) throws Exception;

	public void update(memberVO vo) throws Exception;

	public void delete(Integer bno) throws Exception;
	
	public void updateReplyCnt(Integer bno, int amount) throws Exception;
	
	public List<memberVO> listAll() throws Exception;
}
