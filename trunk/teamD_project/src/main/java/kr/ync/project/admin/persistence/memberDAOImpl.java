package kr.ync.project.admin.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.ync.project.admin.domain.AdminVO;
import kr.ync.project.admin.domain.Criteria;
import kr.ync.project.admin.domain.SearchCriteria;
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
	public memberVO read(String member_id) throws Exception {
		// TODO Auto-generated method stub
		return session.selectOne(namespace+".read",member_id);
	}
	
	@Override
	public List<memberVO> readbooking(String member_id) throws Exception {
		// TODO Auto-generated method stub
		return session.selectList(namespace+".readbooking", member_id);
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
	
	@Override
	public List<memberVO> listPage(int page) throws Exception {
		// TODO Auto-generated method stub
		if(page<=0) {
			page=1;
		}
		page = (page-1) * 10;
		
		return session.selectList(namespace+".listPage", page);
	}

	@Override
	public List<memberVO> listCriteria(Criteria cri) throws Exception {
		// TODO Auto-generated method stub
		return session.selectList(namespace + ".listCriteria", cri);
	}
	
	@Override
	public int mcountPaging(Criteria cri) throws Exception {
		// TODO Auto-generated method stub
		return session.selectOne(namespace+".mcountPaging", cri);
	}

	@Override
	public int listSearchCount(SearchCriteria cri) throws Exception {
		// TODO Auto-generated method stub
		return session.selectOne(namespace + ".listSearchCount", cri);
	}

	@Override
	public List<memberVO> readbookingEnd(String member_id) throws Exception {
		// TODO Auto-generated method stub
		return session.selectList(namespace+".readbookingEnd", member_id);
	}

	@Override
	public List<memberVO> omemberlist(SearchCriteria cri) throws Exception {
		// TODO Auto-generated method stub
		return session.selectList(namespace+".outmemberlist", cri);
	}

	@Override
	public int listomemberCount(SearchCriteria cri) throws Exception {
		// TODO Auto-generated method stub
		return session.selectOne(namespace+".listomemberCount", cri);
	}

	@Override
	public List<AdminVO> memberadminList(SearchCriteria cri) throws Exception {
		// TODO Auto-generated method stub
		return session.selectList(namespace+".memberadminList", cri);
	}

	@Override
	public int listmemberadminCount(SearchCriteria cri) throws Exception {
		// TODO Auto-generated method stub
		return session.selectOne(namespace+".listmemberadminCount", cri);
	}

	@Override
	public void memberupdate(memberVO memvo) throws Exception {
		// TODO Auto-generated method stub
		session.update(namespace+".memberupdate", memvo);
	}

	

	

	

}
