/**
 * FmypageServiceImpl.java
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

import javax.inject.Inject;

import org.springframework.stereotype.Repository;

import kr.ync.project.front.domain.FmypageVO;
import kr.ync.project.front.persistence.FmypageDAO;

/**
 * FmypageServiceImpl.java
 *
 * @Author : 김 건 우
 * @Date : 2018. 12. 5.
 * @Description
 * 
 * 				File description is here
 * 
 */

@Repository
public class FmypageServiceImpl implements FmypageService {

	@Inject
	private FmypageDAO dao;

	@Override
	public List<FmypageVO> resvCompList(String MEMBER_ID) throws Exception {
		// TODO Auto-generated method stub
		return dao.resvCompList(MEMBER_ID);
	}

	/* (non-Javadoc)
	 * @see kr.ync.project.front.service.FmypageService#resvChkinNowList()
	 */
	@Override
	public List<FmypageVO> resvChkinNowList(String MEMBER_ID) throws Exception {
		// TODO Auto-generated method stub
		return dao.resvChkinNowList(MEMBER_ID);
	}

	/* (non-Javadoc)
	 * @see kr.ync.project.front.service.FmypageService#resvChkinFutureList()
	 */
	@Override
	public List<FmypageVO> resvChkinFutureList(String MEMBER_ID) throws Exception {
		// TODO Auto-generated method stub
		return dao.resvChkinFutureList(MEMBER_ID);
	}

	/* (non-Javadoc)
	 * @see kr.ync.project.front.service.FmypageService#resvCancelList()
	 */
	@Override
	public List<FmypageVO> resvCancelList(String MEMBER_ID) throws Exception {
		// TODO Auto-generated method stub
		return dao.resvCancelList(MEMBER_ID);
	}

	/* (non-Javadoc)
	 * @see kr.ync.project.front.service.FmypageService#resvCancel()
	 */
	@Override
	public List<FmypageVO> resvCancel(int BOOKING_IDX) throws Exception {
		// TODO Auto-generated method stub
		return dao.resvCancel(BOOKING_IDX);
	}

}
