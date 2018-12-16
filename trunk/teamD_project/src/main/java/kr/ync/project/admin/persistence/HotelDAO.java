package kr.ync.project.admin.persistence;

import java.util.HashMap;
import java.util.List;

import kr.ync.project.admin.domain.BedVO;
import kr.ync.project.admin.domain.FeatureVO;
import kr.ync.project.admin.domain.HotelVO;
import kr.ync.project.admin.domain.ImageVO;
import kr.ync.project.admin.domain.ReviewVO;
import kr.ync.project.admin.domain.RoomVO;
/**
 * 
 * HotelDAO.java
 *
 * @Author : 이우호
 * @Date   : 2018. 12. 14.
 * @Description 
 *  호텔에 관련된 동작시 필요한 인터페이스
 *
 */
public interface HotelDAO {

	public void create(HotelVO vo) throws Exception;

	public HotelVO read(String hotel_code) throws Exception;

	public void update(HotelVO vo) throws Exception;

	public void delete(String hotel_code) throws Exception;
	
	public void updateReplyCnt(Integer bno, int amount) throws Exception;
	
	public List<HotelVO> listAll() throws Exception;
	
	public List<RoomVO> roomdata(String hotel_code) throws Exception;
	
	public List<FeatureVO> hotel_feature(String hotel_code)throws Exception;

	public List<FeatureVO> room_feature(HashMap h_data)throws Exception;
	
	public List<BedVO> room_bed(int room_idx)throws Exception;
	
	public List<ImageVO> room_image(int room_idx)throws Exception;
	
	public List<ImageVO> hotel_image(String hotel_code)throws Exception;
	
	public ImageVO rimage_detail(int idx)throws Exception;
	
	public List<FeatureVO> facilityList() throws Exception;

	public List<ReviewVO> review(String hotel_code) throws Exception;
	
	public ReviewVO reviewDetail(int idx) throws Exception;
	
	public void r_delete(int idx) throws Exception;

	public int listCnt() throws Exception;

	public int reviewCnt(String hotel_code) throws Exception;

	public int allreviewCnt() throws Exception;

	public List<ReviewVO> Allreview() throws Exception;

}
