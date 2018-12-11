package kr.ync.project.admin.service;

import java.util.HashMap;
import java.util.List;

import kr.ync.project.admin.domain.BedVO;
import kr.ync.project.admin.domain.FeatureVO;
import kr.ync.project.admin.domain.HotelVO;
import kr.ync.project.admin.domain.ImageVO;
import kr.ync.project.admin.domain.ReviewVO;
import kr.ync.project.admin.domain.RoomVO;

public interface HotelService {

      public void regist(HotelVO board) throws Exception;
      
      public HotelVO read(String hotel_code) throws Exception;
      
      public List<RoomVO> roomdata(String hotel_code) throws Exception;
      
      public void modify (HotelVO board) throws Exception;
      
      public void hotelDelete (String hotel_code) throws Exception;
      
      public List<HotelVO> listAll() throws Exception;
      
      public List<FeatureVO> hotel_feature(String hotel_code) throws Exception;
      
      public List<FeatureVO> room_feature(HashMap h_data) throws Exception;
      
      public List<BedVO> room_bed(int room_idx) throws Exception;
      
      public List<ImageVO> room_image(int room_idx) throws Exception;
      
      public List<ImageVO> hotel_image(String hotel_code) throws Exception;
      
      public ImageVO rimage_detail(int idx) throws Exception;
      
      public List<FeatureVO> facilityList() throws Exception;

      public List<ReviewVO> review(String hotel_code) throws Exception;
      
      public ReviewVO reviewDetail(int idx) throws Exception;
      
      public void reviewDelete (int idx) throws Exception;

      public int listcnt() throws Exception;
      
      public int reviewcnt(String hotel_code) throws Exception;

	  public int allreviewcnt()throws Exception;
	  
	  public List<ReviewVO> allreview() throws Exception;
      
//      public List<BoardVO> listCriteria(Criteria cri) throws Exception;
//      
//      public int listCountCriteria(Criteria cri) throws Exception;
//      
//      public List<BoardVO> listSearchCriteria(SearchCriteria cri) throws Exception;
//      
//      public int listSearchCount(SearchCriteria cri) throws Exception;
}