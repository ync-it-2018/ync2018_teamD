package kr.ync.project.admin.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.ync.project.admin.domain.memberVO;

@Repository
public class memberDAOImpl implements memberDAO{
	
	@Inject
	private SqlSession session;
	
	private static String namespace 
	= "kr.ync.project.mapper.memberMapper";

	@Override
	public void create(memberVO vo) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public memberVO read(Integer bno) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void update(memberVO vo) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(Integer bno) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void updateReplyCnt(Integer bno, int amount) throws Exception {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<memberVO> listAll() throws Exception {
		// TODO Auto-generated method stub
		return session.selectList(namespace+".memberList");
	}

}
