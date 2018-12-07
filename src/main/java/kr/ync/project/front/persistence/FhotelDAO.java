package kr.ync.project.front.persistence;

import java.util.List;

import kr.ync.project.admin.domain.ImageVO;
import kr.ync.project.front.domain.FdetailVO;
import kr.ync.project.front.domain.FhotelVO;
import kr.ync.project.front.domain.FreviewVO;
import kr.ync.project.front.domain.FroomVO;

public interface FhotelDAO {

	public void create(FhotelVO vo) throws Exception;

	public FhotelVO read(String hotel_code) throws Exception;

	public void update(FhotelVO vo) throws Exception;

	public void delete(Integer bno) throws Exception;
	
	public void updateReplyCnt(Integer bno, int amount) throws Exception;
	
	public List<FhotelVO> listAll() throws Exception;
	
	public FdetailVO detail(String hotel_code) throws Exception;
	
	public List<FdetailVO> detailroom(String hotel_code) throws Exception;
	
	public List<FreviewVO> review(String hotel_code) throws Exception;
	
	public List<ImageVO> hotel_image(String hotel_code)throws Exception;

	public FroomVO roomdetail(int room_idx)throws Exception;

	public List<FroomVO> roomdetailimage(int room_idx)throws Exception;

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
