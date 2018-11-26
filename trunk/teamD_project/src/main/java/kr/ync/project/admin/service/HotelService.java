package kr.ync.project.admin.service;

import java.util.List;

import kr.ync.project.admin.domain.HotelVO;
import kr.ync.project.admin.domain.RoomVO;

public interface HotelService {

      public void regist(HotelVO board) throws Exception;
      
      public HotelVO read(String hotel_code) throws Exception;
      
      public List<RoomVO> roomdata(String hotel_code) throws Exception;
      
      public void modify (HotelVO board) throws Exception;
      
      public void remove (Integer bno) throws Exception;
      
      public List<HotelVO> listAll() throws Exception;
      
      public RoomVO room_detail(String room_idx) throws Exception;
      

//      public List<BoardVO> listCriteria(Criteria cri) throws Exception;
//      
//      public int listCountCriteria(Criteria cri) throws Exception;
//      
//      public List<BoardVO> listSearchCriteria(SearchCriteria cri) throws Exception;
//      
//      public int listSearchCount(SearchCriteria cri) throws Exception;
}