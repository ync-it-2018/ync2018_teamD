package kr.ync.project.front.service;

import java.util.List;

import kr.ync.project.front.domain.FdetailVO;
import kr.ync.project.front.domain.FhotelVO;
import kr.ync.project.front.domain.FreviewVO;

public interface FhotelService {

      public void regist(FhotelVO board) throws Exception;
      
      public FhotelVO read(String hotel_code) throws Exception;
      
      public void modify (FhotelVO board) throws Exception;
      
      public void remove (Integer bno) throws Exception;
      
      public List<FhotelVO> listAll() throws Exception;
      
      public FdetailVO detail(String hotel_code) throws Exception;
      
      public List<FdetailVO> detailroom(String hotel_code) throws Exception;
      
      public List<FreviewVO> review(String hotel_code) throws Exception;
      

//      public List<BoardVO> listCriteria(Criteria cri) throws Exception;
//      
//      public int listCountCriteria(Criteria cri) throws Exception;
//      
//      public List<BoardVO> listSearchCriteria(SearchCriteria cri) throws Exception;
//      
//      public int listSearchCount(SearchCriteria cri) throws Exception;
}