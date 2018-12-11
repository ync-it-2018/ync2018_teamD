package kr.ync.project.admin.persistence;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.ync.project.admin.domain.BedVO;
import kr.ync.project.admin.domain.FeatureVO;
import kr.ync.project.admin.domain.HotelVO;
import kr.ync.project.admin.domain.ImageVO;
import kr.ync.project.admin.domain.ReviewVO;
import kr.ync.project.admin.domain.RoomVO;

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
	public void delete(String hotel_code) throws Exception {
		// TODO Auto-generated method stub
		session.delete(namespace+".delete_info",hotel_code);
		session.delete(namespace+".delete_detailinfo",hotel_code);
		session.delete(namespace+".delete_img",hotel_code);
		session.delete(namespace+".delete_bed",hotel_code);
		session.delete(namespace+".delete_room_image",hotel_code);
		session.delete(namespace+".delete_room_info",hotel_code);
//		session.delete(namespace+".delete_review_all", hotel_code);
		session.delete(namespace+".delete_room",hotel_code);
		session.delete(namespace+".delete_hotel",hotel_code);
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

	@Override
	public List<RoomVO> roomdata(String hotel_code) throws Exception {
		// TODO Auto-generated method stub
		return session.selectList(namespace + ".roomData", hotel_code );
	}
	
	@Override
	public List<FeatureVO> hotel_feature(String hotel_code) throws Exception {
		// TODO Auto-generated method stub
		return session.selectList(namespace + ".hotel_feature", hotel_code); 
	}

	@Override
	public List<FeatureVO> room_feature(HashMap h_data) throws Exception {
		// TODO Auto-generated method stub
		return session.selectList(namespace + ".room_feature", h_data);
	}

	@Override
	public List<BedVO> room_bed(int room_idx) throws Exception {
		// TODO Auto-generated method stub
		return session.selectList(namespace + ".room_bed", room_idx);
	}

	@Override
	public List<ImageVO> room_image(int room_idx) throws Exception {
		// TODO Auto-generated method stub
		return session.selectList(namespace + ".room_image", room_idx);
	}
	
	@Override
	public List<ImageVO> hotel_image(String hotel_code) throws Exception {
		// TODO Auto-generated method stub
		return session.selectList(namespace + ".hotel_image", hotel_code);
	}

	@Override
	public ImageVO rimage_detail(int idx) throws Exception {
		// TODO Auto-generated method stub
		return session.selectOne(namespace + ".rimage_detail", idx);
	}

	@Override
	public List<FeatureVO> facilityList() throws Exception {
		// TODO Auto-generated method stub
		return session.selectList(namespace + ".facilityList");
	}

	@Override
	public List<ReviewVO> review(String hotel_code) throws Exception {
		// TODO Auto-generated method stub
		return session.selectList(namespace + ".review", hotel_code);
	}

	@Override
	public ReviewVO reviewDetail(int idx) throws Exception {
		// TODO Auto-generated method stub
		return session.selectOne(namespace+ ".reviewDetail", idx);
	}

	@Override
	public void r_delete(int idx) throws Exception {
		// TODO Auto-generated method stub
		session.delete(namespace+".delete_review", idx);
	}

	@Override
	public int listCnt() throws Exception {
		// TODO Auto-generated method stub
		return session.selectOne(namespace+".listCnt"); 
	}

	@Override
	public int reviewCnt(String hotel_code) throws Exception {
		// TODO Auto-generated method stub
		return session.selectOne(namespace + ".reviewCnt", hotel_code);
	}

	@Override
	public int allreviewCnt() throws Exception {
		// TODO Auto-generated method stub
		return session.selectOne(namespace + ".AllreviewCnt");
	}

	@Override
	public List<ReviewVO> Allreview() throws Exception {
		// TODO Auto-generated method stub
		return session.selectList(namespace + ".Allreview");
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
