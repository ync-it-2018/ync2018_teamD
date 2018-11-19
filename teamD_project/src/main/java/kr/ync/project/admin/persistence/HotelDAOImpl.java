package kr.ync.project.admin.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.ync.project.admin.domain.HotelVO;

@Repository
public class HotelDAOImpl implements HotelDAO {
	
	@Inject
	private SqlSession session;
	
	private static String namespace 
	= "kr.ync.project.mapper.hotelMapper";
	
	@Override
	public void create(HotelVO vo) throws Exception {
		// TODO Auto-generated method stub
//		session.insert(namespace + ".create", vo); 
	}

	@Override
	public HotelVO read(String hotel_code) throws Exception {
		// TODO Auto-generated method stub
		return session.selectOne(namespace+".read",hotel_code);
	}

	@Override
	public void update(HotelVO vo) throws Exception {
		// TODO Auto-generated method stub
//		session.update(namespace + ".update", vo);
	}

	@Override
	public void delete(Integer bno) throws Exception {
		// TODO Auto-generated method stub
//		session.delete(namespace+".delete",bno);
	}

	@Override
	public List<HotelVO> listAll() throws Exception {
		// TODO Auto-generated method stub
		return session.selectList(namespace+".listAll");
	}
//	@Override
//	public List<BoardVO> listPage(int page) throws Exception{
//		if(page <=0 ) {
//			page = 1;
//		}
////		page = (page - 1) * 10;
//		
////		return session.selectList(namespace + ".listPage", page);
//		return null;
//	}

	@Override
	public void updateReplyCnt(Integer bno, int amount) throws Exception {
		// TODO Auto-generated method stub
		
	}

//	@Override
//	public List<BoardVO> listCriteria(Criteria cri) throws Exception {
//		// TODO Auto-generated method stub
//		return session.selectList(namespace+".listCriteria",cri);
//	}
//	
//	@Override
//	public int countPaging(Criteria cri) throws Exception{
//		return session.selectOne(namespace+ ".countPaging", cri);
//	}
//
//	@Override
//	public List<BoardVO> listSearch(SearchCriteria cri) throws Exception {
//		// TODO Auto-generated method stub
//		return session.selectList(namespace + ".listSearch", cri);
//	}
//
//	@Override
//	public int listSearchCount(SearchCriteria cri) throws Exception {
//		// TODO Auto-generated method stub
//		return session.selectOne(namespace + ".listSearchCount", cri);
//	}

}
