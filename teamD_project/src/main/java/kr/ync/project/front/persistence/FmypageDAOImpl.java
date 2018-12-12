/**
 * FmypageDAOImpl.java
*
* @Author	: 김 건 우
* @Date		: 2018. 12. 5.
* @Description
*		
*		File description is here
*		
 */
package kr.ync.project.front.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import kr.ync.project.front.domain.FmypageVO;

/**
 * FmypageDAOImpl.java
*
* @Author	: 김 건 우
* @Date		: 2018. 12. 5.
* @Description
*		
*		File description is here
*		
 */
@Repository
public class FmypageDAOImpl implements FmypageDAO{
	
	
	@Inject
	private SqlSession session;
	
	private static String namespace 
	= "kr.ync.project.mapper.FmypageMapper";

	/* (non-Javadoc)
	 * @see kr.ync.project.front.persistence.FmypageDAO#resvCompList()
	 */
	@Override
	public List<FmypageVO> resvCompList(String MEMBER_ID) throws Exception {
		// TODO Auto-generated method stub
		
		return session.selectList(namespace+".resvCompList", MEMBER_ID);
	}

	/* (non-Javadoc)
	 * @see kr.ync.project.front.persistence.FmypageDAO#resvChkinNowList()
	 */
	@Override
	public List<FmypageVO> resvChkinNowList(String MEMBER_ID) throws Exception {
		// TODO Auto-generated method stub
		return session.selectList(namespace+".resvChkinNowList",MEMBER_ID);
	}

	/* (non-Javadoc)
	 * @see kr.ync.project.front.persistence.FmypageDAO#resvChkinFutureList()
	 */
	@Override
	public List<FmypageVO> resvChkinFutureList(String MEMBER_ID) throws Exception {
		// TODO Auto-generated method stub
		return session.selectList(namespace+".resvChkinFutureList",MEMBER_ID);
	}

	/* (non-Javadoc)
	 * @see kr.ync.project.front.persistence.FmypageDAO#resvCancelList()
	 */
	@Override
	public List<FmypageVO> resvCancelList(String MEMBER_ID) throws Exception {
		// TODO Auto-generated method stub
		return session.selectList(namespace+".resvCancelList",MEMBER_ID);
	}

	/* (non-Javadoc)
	 * @see kr.ync.project.front.persistence.FmypageDAO#resvCancel()
	 */
	@Override
	public List<FmypageVO> resvCancel(int BOOKING_IDX) throws Exception {
		// TODO Auto-generated method stub
		return session.selectList(namespace+".resvCancel", BOOKING_IDX);
	}
	
	
}	
