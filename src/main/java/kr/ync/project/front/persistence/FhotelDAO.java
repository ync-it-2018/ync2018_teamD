package kr.ync.project.front.persistence;

import java.util.HashMap;
import java.util.List;

import kr.ync.project.admin.domain.ImageVO;
import kr.ync.project.front.domain.FdetailVO;
import kr.ync.project.front.domain.FhotelVO;
import kr.ync.project.front.domain.FreviewVO;
import kr.ync.project.front.domain.FroomVO;
/**
 * 
 * FhotelDAO.java
 *
 * @Author : 이승민
 * @Date   : 2018. 12. 13.
 * @Description
 *  호텔정보를 받아오기 위해서 DB와 연결을 위한 DAT의 인터페이스 
 *
 */
public interface FhotelDAO {

	public void create(FhotelVO vo) throws Exception;

	public FhotelVO read(String hotel_code) throws Exception;

	public void update(FhotelVO vo) throws Exception;

	public void delete(Integer bno) throws Exception;
	
	public void updateReplyCnt(Integer bno, int amount) throws Exception;
	
	public List<FhotelVO> listAll(String textfield, String grade) throws Exception;
	
	public FdetailVO detail(String hotel_code) throws Exception;
	
	public List<FdetailVO> detailroom(String hotel_code) throws Exception;
	
	public List<FreviewVO> review(String hotel_code) throws Exception;
	
	public List<ImageVO> hotel_image(String hotel_code)throws Exception;

	public FroomVO roomdetail(HashMap mp)throws Exception;

	public List<FroomVO> roomdetailimage(int room_idx)throws Exception;

	public List<FroomVO> roomdetailproduct(int room_idx)throws Exception;

	public FhotelVO reservation(HashMap mp)throws Exception;

	public List<FhotelVO> nationList() throws Exception;



}
