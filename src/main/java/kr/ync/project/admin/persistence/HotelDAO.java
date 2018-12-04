package kr.ync.project.admin.persistence;

import java.util.List;

import kr.ync.project.admin.domain.BedVO;
import kr.ync.project.admin.domain.FeatureVO;
import kr.ync.project.admin.domain.HotelVO;
import kr.ync.project.admin.domain.ImageVO;
import kr.ync.project.admin.domain.RoomVO;

public interface HotelDAO {

	public void create(HotelVO vo) throws Exception;

	public HotelVO read(String hotel_code) throws Exception;

	public void update(HotelVO vo) throws Exception;

	public void delete(Integer bno) throws Exception;
	
	public void updateReplyCnt(Integer bno, int amount) throws Exception;
	
	public List<HotelVO> listAll() throws Exception;
	
	public List<RoomVO> roomdata(String hotel_code) throws Exception;
	
	public List<FeatureVO> hotel_feature(String hotel_code)throws Exception;

	public List<FeatureVO> room_feature(int room_idx)throws Exception;
	
	public List<BedVO> room_bed(int room_idx)throws Exception;
	
	public List<ImageVO> room_image(int room_idx)throws Exception;
	
	public List<ImageVO> hotel_image(String hotel_code)throws Exception;
	
	public ImageVO rimage_detail(int idx)throws Exception;

//	public List<BoardVO> listPage(int page) throws Exception;
  
//	public List<BoardVO> listCriteria(Criteria cri) throws Exception;

//	public int countPaging(Criteria cri) throws Exception;
   
//	//use for dynamic SQL
//	// 검색이 적용된 Query 결과 List
//	public List<BoardVO> listSearch(SearchCriteria cri)throws Exception;
//	
//	// 검색이 적용된 Query 결과 Count
//	public int listSearchCount(SearchCriteria cri)throws Exception;
//	
//	public void updateViewCnt(Integer bno)throws Exception;

}
