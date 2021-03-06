package kr.ync.project.front.service;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Repository;

import kr.ync.project.admin.domain.ImageVO;
import kr.ync.project.front.domain.FdetailVO;
import kr.ync.project.front.domain.FhotelVO;
import kr.ync.project.front.domain.FreviewVO;
import kr.ync.project.front.domain.FroomVO;
import kr.ync.project.front.persistence.FhotelDAO;


/**
 * 
 * FhotelServiceImpl.java
 *
 * @Author : 이승민
 * @Date   : 2018. 12. 13.
 * @Description
 *   호텔의 정볼르 불러올 떄 사용할 서비스들의 기능을 정의해 둔 임플리먼트 
 *
 */
@Repository
public class FhotelServiceImpl implements FhotelService {

   @Inject
   private FhotelDAO dao;

   @Override
   public void regist(FhotelVO board) throws Exception {
      // TODO Auto-generated method stub
      dao.create(board);
   }

   @Override
   public FhotelVO read(String hotel_code) throws Exception {
      // TODO Auto-generated method stub
      return dao.read(hotel_code);
   }

   @Override
   public void modify(FhotelVO board) throws Exception {
      // TODO Auto-generated method stub
      dao.update(board);
   }

   @Override
   public void remove(Integer bno) throws Exception {
      // TODO Auto-generated method stub
      dao.delete(bno);
   }

   @Override
   public List<FhotelVO> listAll(String textfield, String grade) throws Exception {
      // TODO Auto-generated method stub
      return dao.listAll(textfield, grade);
   }

@Override
public FdetailVO detail(String hotel_code) throws Exception {
	return dao.detail(hotel_code);
	// TODO Auto-generated method stub
	
}

@Override
public List<FdetailVO> detailroom(String hotel_code) throws Exception {
	// TODO Auto-generated method stub
	return dao.detailroom(hotel_code);
}

@Override
public List<FreviewVO> review(String hotel_code) throws Exception {
	// TODO Auto-generated method stub
	return dao.review(hotel_code);
	
}
@Override
public List<ImageVO> hotel_image(String hotel_code) throws Exception {
	// TODO Auto-generated method stub
	return dao.hotel_image(hotel_code);
}

@Override
public FroomVO roomdetail(HashMap mp) throws Exception {
	// TODO Auto-generated method stub
	return  dao.roomdetail(mp);
}

@Override
public List<FroomVO> roomdetailimage(int room_idx) throws Exception {
	// TODO Auto-generated method stub
	return dao.roomdetailimage(room_idx);
}

@Override
public List<FroomVO> roomdetailproduct(int room_idx) throws Exception {
	// TODO Auto-generated method stub
	return dao.roomdetailproduct(room_idx);
}

@Override
public FhotelVO reservation(HashMap mp)throws Exception {
	// TODO Auto-generated method stub
	return dao.reservation(mp);
}

/* (non-Javadoc)
 * @see kr.ync.project.front.service.FhotelService#nationList()
 */
@Override
public List<FhotelVO> nationList() throws Exception {
	// TODO Auto-generated method stub
	return dao.nationList();
}








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
