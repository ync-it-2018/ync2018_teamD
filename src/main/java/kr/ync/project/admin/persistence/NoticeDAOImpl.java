package kr.ync.project.admin.persistence;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.ync.project.admin.domain.NoticeVO;

@Repository
public class NoticeDAOImpl implements NoticeDAO {
	
	@Inject
	private SqlSession session;
	
	private static String namespace 
	= "kr.ync.project.mapper.NoticeMapper";

	@Override
	public List<NoticeVO> listAll() throws Exception {
		// TODO Auto-generated method stub
		return session.selectList(namespace + ".listAll");
	}

	@Override
	public int listCnt() throws Exception {
		// TODO Auto-generated method stub
		return session.selectOne(namespace + ".listCnt");
	}

	@Override
	public NoticeVO noticeDetail(int idx) throws Exception {
		// TODO Auto-generated method stub
		return session.selectOne(namespace + ".noticeDetail", idx);
	}

	@Override
	public void updateNotice(HashMap ntt) throws Exception {
		// TODO Auto-generated method stub
		session.update(namespace + ".updateNotice", ntt);
	}

	@Override
	public void addNotice(NoticeVO nt) throws Exception {
		// TODO Auto-generated method stub
		session.insert(namespace + ".addNotice", nt);
	}

	@Override
	public void noticeModify(NoticeVO nt) throws Exception {
		// TODO Auto-generated method stub
		session.update(namespace + ".noticeModify", nt);
	}
	
	
	

}
