package kr.ync.project.front.service;

import java.util.HashMap;
import java.util.List;

import kr.ync.project.admin.domain.ImageVO;
import kr.ync.project.front.domain.FdetailVO;
import kr.ync.project.front.domain.FhotelVO;
import kr.ync.project.front.domain.FreviewVO;
import kr.ync.project.front.domain.FroomVO;

/**
 * 
 * FhotelService.java
 *
 * @Author : 이승민
 * @Date   : 2018. 12. 13.
 * @Description
 *  호텔의 정볼르 불러올 떄 사용할 서비스들을 정의해 둔 인터페이스 
 *
 */
public interface FhotelService {

      public void regist(FhotelVO board) throws Exception;
      
      public FhotelVO read(String hotel_code) throws Exception;
      
      public void modify (FhotelVO board) throws Exception;
      
      public void remove (Integer bno) throws Exception;
      
      public List<FhotelVO> listAll(String textfield, String grade) throws Exception;
      
      public FdetailVO detail(String hotel_code) throws Exception;
      
      public List<FdetailVO> detailroom(String hotel_code) throws Exception;
      
      public List<FreviewVO> review(String hotel_code) throws Exception;
      
      public List<ImageVO> hotel_image(String hotel_code) throws Exception;

      public FroomVO roomdetail(HashMap mp) throws Exception; //객실상세보기 룸이름,침대

      public List<FroomVO> roomdetailimage(int room_idx)throws Exception;

      public List<FroomVO> roomdetailproduct(int room_idx)throws Exception; //객실상세보기(가전제품)

      public FhotelVO reservation(HashMap mp)throws Exception; //예약하기
      
      public List<FhotelVO> nationList() throws Exception;
//      public List<BoardVO> listCriteria(Criteria cri) throws Exception;
//      
//      public int listCountCriteria(Criteria cri) throws Exception;
//      
//      public List<BoardVO> listSearchCriteria(SearchCriteria cri) throws Exception;
//      
//      public int listSearchCount(SearchCriteria cri) throws Exception;

	

	

	

	
}