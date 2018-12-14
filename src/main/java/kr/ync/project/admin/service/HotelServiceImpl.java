package kr.ync.project.admin.service;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Repository;

import kr.ync.project.admin.domain.BedVO;
import kr.ync.project.admin.domain.FeatureVO;
import kr.ync.project.admin.domain.HotelVO;
import kr.ync.project.admin.domain.ImageVO;
import kr.ync.project.admin.domain.ReviewVO;
import kr.ync.project.admin.domain.RoomVO;
import kr.ync.project.admin.persistence.HotelDAO;

/**
 * 
 * HotelServiceImpl.java
 *
 * @Author : 이우호
 * @Date   : 2018. 12. 14.
 * @Description 
 *  호텔 관리시 동작하는 DAO 실행
 *
 */
@Repository
public class HotelServiceImpl implements HotelService {

   @Inject
   private HotelDAO dao;

   @Override
   public void regist(HotelVO board) throws Exception {
      // TODO Auto-generated method stub
      dao.create(board);
   }

   @Override
   public HotelVO read(String hotel_code) throws Exception {
      // TODO Auto-generated method stub
      return dao.read(hotel_code);
   }

   @Override
   public void modify(HotelVO board) throws Exception {
      // TODO Auto-generated method stub
      dao.update(board);
   }

   @Override
	public void hotelDelete(String hotel_code) throws Exception {
		// TODO Auto-generated method stub
		dao.delete(hotel_code);
	}
   
   @Override
   public List<HotelVO> listAll() throws Exception {
      // TODO Auto-generated method stub
      return dao.listAll();
   }

   @Override
   public List<RoomVO> roomdata(String hotel_code) throws Exception {
   	// TODO Auto-generated method stub
   	return dao.roomdata(hotel_code);
   }
   
   @Override
	public List<FeatureVO> hotel_feature(String hotel_code) throws Exception {
		// TODO Auto-generated method stub
		return dao.hotel_feature(hotel_code);
	}

	@Override
	public List<FeatureVO> room_feature(HashMap h_data) throws Exception {
		// TODO Auto-generated method stub
		return dao.room_feature(h_data);
	}

	@Override
	public List<BedVO> room_bed(int room_idx) throws Exception {
		// TODO Auto-generated method stub
		return dao.room_bed(room_idx);
	}

	@Override
	public List<ImageVO> room_image(int room_idx) throws Exception {
		// TODO Auto-generated method stub
		return dao.room_image(room_idx);
	}
	
	@Override
	public List<ImageVO> hotel_image(String hotel_code) throws Exception {
		// TODO Auto-generated method stub
		return dao.hotel_image(hotel_code);
	}

	@Override
	public ImageVO rimage_detail(int idx) throws Exception {
		// TODO Auto-generated method stub
		return dao.rimage_detail(idx);
	}

	@Override
	public List<FeatureVO> facilityList() throws Exception {
		// TODO Auto-generated method stub
		return dao.facilityList();
	}

	@Override
	public List<ReviewVO> review(String hotel_code)throws Exception {
		// TODO Auto-generated method stub
		return dao.review(hotel_code);
	}

	@Override
	public ReviewVO reviewDetail(int idx) throws Exception {
		// TODO Auto-generated method stub
		return dao.reviewDetail(idx);
	}

	@Override
	public void reviewDelete(int idx) throws Exception {
		// TODO Auto-generated method stub
		dao.r_delete(idx);
	}

	@Override
	public int listcnt() throws Exception {
		// TODO Auto-generated method stub
		return dao.listCnt();
	}

	@Override
	public int reviewcnt(String hotel_code) throws Exception {
		// TODO Auto-generated method stub
		return dao.reviewCnt(hotel_code);
	}

	@Override
	public int allreviewcnt() throws Exception {
		// TODO Auto-generated method stub
		return dao.allreviewCnt();
	}

	@Override
	public List<ReviewVO> allreview() throws Exception {
		// TODO Auto-generated method stub
		return dao.Allreview();
	}

	

	

	

//@Override
//public List<BoardVO> listCriteria(Criteria cri) throws Exception {
//	// TODO Auto-generated method stub
//	return dao.listCriteria(cri);
//}
//
//@Override
//public int listCountCriteria(Criteria cri) throws Exception {
//	// TODO Auto-generated method stub
//	return dao.countPaging(cri);
//}
//
//@Override
//public List<BoardVO> listSearchCriteria(SearchCriteria cri) throws Exception {
//	// TODO Auto-generated method stub
//	return dao.listSearch(cri);
//}
//
//@Override
//public int listSearchCount(SearchCriteria cri) throws Exception {
//	// TODO Auto-generated method stub
//	return dao.listSearchCount(cri);
//}

}
