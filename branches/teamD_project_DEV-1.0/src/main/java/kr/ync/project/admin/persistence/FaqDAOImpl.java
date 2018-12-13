package kr.ync.project.admin.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.ync.project.admin.domain.FaqVO;

@Repository
public class FaqDAOImpl implements FaqDAO {

	@Inject
	private SqlSession session;
	
	private static String namespace 
	= "kr.ync.project.mapper.FaqMapper";
	
	@Override
	public List<FaqVO> FaqList() throws Exception {
		// TODO Auto-generated method stub
		return session.selectList(namespace+".FaqList");
	}

}
