package kr.ync.project.front.service;

import java.util.List;

import kr.ync.project.admin.domain.ImageVO;
import kr.ync.project.front.domain.FdetailVO;
import kr.ync.project.front.domain.FhotelVO;
import kr.ync.project.front.domain.FreviewVO;
import kr.ync.project.front.domain.FroomVO;

public interface FhotelService {

      public void regist(FhotelVO board) throws Exception;
      
      public FhotelVO read(String hotel_code) throws Exception;
      
      public void modify (FhotelVO board) throws Exception;
      
      public void remove (Integer bno) throws Exception;
      
      public List<FhotelVO> listAll(String textfield) throws Exception;
      
      public FdetailVO detail(String hotel_code) throws Exception;
      
      public List<FdetailVO> detailroom(String hotel_code) throws Exception;
      
      public List<FreviewVO> review(String hotel_code) throws Exception;
      
      public List<ImageVO> hotel_image(String hotel_code) throws Exception;

      public FroomVO roomdetail(int room_idx) throws Exception; //객실상세보기 룸이름,침대

      public List<FroomVO> roomdetailimage(int room_idx)throws Exception;

      public List<FroomVO> roomdetailproduct(int room_idx)throws Exception; //객실상세보기(가전제품)

      public FhotelVO reservation(String hotel_code, int room_idx)throws Exception; //예약하기
      

//      public List<BoardVO> listCriteria(Criteria cri) throws Exception;
//      
//      public int listCountCriteria(Criteria cri) throws Exception;
//      
//      public List<BoardVO> listSearchCriteria(SearchCriteria cri) throws Exception;
//      
//      public int listSearchCount(SearchCriteria cri) throws Exception;
}