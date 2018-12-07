package kr.ync.project.front.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Repository;

import kr.ync.project.admin.domain.ImageVO;
import kr.ync.project.front.domain.FdetailVO;
import kr.ync.project.front.domain.FhotelVO;
import kr.ync.project.front.domain.FreviewVO;
import kr.ync.project.front.domain.FroomVO;
import kr.ync.project.front.persistence.FhotelDAO;


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
   public List<FhotelVO> listAll() throws Exception {
      // TODO Auto-generated method stub
      return dao.listAll();
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
public FroomVO roomdetail(int room_idx) throws Exception {
	// TODO Auto-generated method stub
	return  dao.roomdetail(room_idx);
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
