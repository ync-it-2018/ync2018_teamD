package kr.ync.project.admin.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Repository;

import kr.ync.project.admin.domain.HotelVO;
import kr.ync.project.admin.domain.RoomVO;
import kr.ync.project.admin.persistence.HotelDAO;


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
   public void remove(Integer bno) throws Exception {
      // TODO Auto-generated method stub
      dao.delete(bno);
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
public RoomVO room_detail(String room_idx) throws Exception {
	// TODO Auto-generated method stub
	return dao.roomdetail(room_idx);
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
