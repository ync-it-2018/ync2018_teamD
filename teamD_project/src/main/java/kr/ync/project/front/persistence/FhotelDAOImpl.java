package kr.ync.project.front.persistence;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.ync.project.admin.domain.ImageVO;
import kr.ync.project.front.domain.FdetailVO;
import kr.ync.project.front.domain.FhotelVO;
import kr.ync.project.front.domain.FreviewVO;
import kr.ync.project.front.domain.FroomVO;

@Repository
public class FhotelDAOImpl implements FhotelDAO {
	
	@Inject
	private SqlSession session;
	
	private static String namespace 
	= "kr.ync.project.mapper.FhotelMapper";
	
	private static String namespace1 
	= "kr.ync.project.mapper.FdetailMapper";
	
	private static String review 
	= "kr.ync.project.mapper.FreviewMapper";
	
	private static String roomdetail 
	= "kr.ync.project.mapper.FroomMapper";
	
	private static String reservation 
	= "kr.ync.project.mapper.FreservationMapper";
	
	@Override
	public void create(FhotelVO vo) throws Exception {
		// TODO Auto-generated method stub
//		session.insert(namespace + ".create", vo); 
	}

	@Override
	public FhotelVO read(String hotel_code) throws Exception {
		// TODO Auto-generated method stub
		return session.selectOne(namespace+".read",hotel_code);
	}

	@Override
	public void update(FhotelVO vo) throws Exception {
		// TODO Auto-generated method stub
//		session.update(namespace + ".update", vo);
	}

	@Override
	public void delete(Integer bno) throws Exception {
		// TODO Auto-generated method stub
//		session.delete(namespace+".delete",bno);
	}

	@Override
	public List<FhotelVO> listAll(String textfield) throws Exception {
		// TODO Auto-generated method stub
		System.out.println("dao : " + textfield);
		return session.selectList(namespace+".listAll", textfield);
	}
	
	@Override
	public FdetailVO detail(String hotel_code) throws Exception {
		// TODO Auto-generated method stub
		return session.selectOne(namespace1+".detail", hotel_code);//select one은 한줄
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

	@Override
	public List<FdetailVO> detailroom(String hotel_code) throws Exception {
		// TODO Auto-generated method stub
		 return session.selectList(namespace1+".detailroom", hotel_code);
	}

	@Override
	public List<FreviewVO> review(String hotel_code) throws Exception {
		// TODO Auto-generated method stub
		return session.selectList(review + ".review", hotel_code);
	}

	@Override
	public List<ImageVO> hotel_image(String hotel_code) throws Exception {
		// TODO Auto-generated method stub
		return session.selectList(namespace1 + ".hotel_image", hotel_code);
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

	@Override
	public FroomVO roomdetail(int room_idx) throws Exception {
		// TODO Auto-generated method stub
		return session.selectOne(roomdetail + ".roomdetail",room_idx);
	}

	@Override
	public List<FroomVO> roomdetailimage(int room_idx) throws Exception {
		// TODO Auto-generated method stub
		return session.selectList(roomdetail + ".roomdetailimage",room_idx);
	}

	@Override
	public List<FroomVO> roomdetailproduct(int room_idx) throws Exception {
		// TODO Auto-generated method stub
		return session.selectList(roomdetail+".roomdetailproduct",room_idx);
	}

	@Override
	public FhotelVO reservation(String hotel_code, int room_idx) throws Exception {
		Map<String, Object> paraMap = new HashMap<String, Object>();
		paraMap.put("hotel_code", hotel_code);
	    paraMap.put("room_idx", room_idx);
		// TODO Auto-generated method stub
		return session.selectOne(reservation+".reservation",paraMap);
	}
	
	

}
