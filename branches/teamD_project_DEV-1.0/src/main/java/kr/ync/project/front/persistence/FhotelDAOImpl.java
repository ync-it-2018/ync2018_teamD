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


/**
 * 
 * FhotelDAOImpl.java
 *
 * @Author : 이승민
 * @Date   : 2018. 12. 13.
 * @Description
 *  호텔정보를 받아오기 위해서 DB와 연결을 위한 DAT의 임플리먼트, mapper에 저장되어있는 쿼리문을 불러온다. -> 의존성주입
 *
 */
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
	public List<FhotelVO> listAll(String textfield, String grade) throws Exception {
		// TODO Auto-generated method stub
		System.out.println("dao : " + textfield);
		HashMap search = new HashMap();
		search.put("textfield", textfield);
		search.put("grade", grade);
		return session.selectList(namespace+".listAll", search);
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
	public FroomVO roomdetail(HashMap mp) throws Exception {
		// TODO Auto-generated method stub
		return session.selectOne(roomdetail + ".roomdetail",mp);
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
	public FhotelVO reservation(HashMap mp) throws Exception {
		// TODO Auto-generated method stub
		return session.selectOne(reservation+".reservation",mp);
	}

	/* (non-Javadoc)
	 * @see kr.ync.project.front.persistence.FhotelDAO#nationList()
	 */
	@Override
	public List<FhotelVO> nationList() throws Exception {
		// TODO Auto-generated method stub
		return session.selectList(namespace + ".nationList");
	}

	
	
	

}
