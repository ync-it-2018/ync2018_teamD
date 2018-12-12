/**
 * FmypageService.java
*
* @Author	: 김 건 우
* @Date		: 2018. 12. 5.
* @Description
*		
*		File description is here
*		
 */
package kr.ync.project.front.service;

import java.util.List;

import kr.ync.project.front.domain.FmypageVO;

/**
 * FmypageService.java
*
* @Author	: 김 건 우
* @Date		: 2018. 12. 5.
* @Description
*		
*		File description is here
*		
 */
public interface FmypageService {
	public List<FmypageVO> resvCompList(String MEMBER_ID) throws Exception;
	
	public List<FmypageVO> resvChkinNowList(String MEMBER_ID) throws Exception;
	
	public List<FmypageVO> resvChkinFutureList(String MEMBER_ID) throws Exception;
	
	public List<FmypageVO> resvCancelList(String MEMBER_ID) throws Exception;
	
	public List<FmypageVO> resvCancel(int BOOKING_IDX) throws Exception;
	
}
