/**
 * FnoticeDAOImpl.java
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

import kr.ync.project.front.domain.FnoticeVO;

/**
 * FnoticeDAOImpl.java
*
* @Author	: 김 건 우
* @Date		: 2018. 12. 5.
* @Description
*		
*		File description is here
*		
 */
@Repository
public class FnoticeDAOImpl implements FnoticeDAO{
	
	
	@Inject
	private SqlSession session;
	
	private static String namespace 
	= "kr.ync.project.mapper.FnoticeMapper";
	
	
	@Override
	public List<FnoticeVO> listAll() throws Exception {
		// TODO Auto-generated method stub
		return session.selectList(namespace+".readNotice");
	}
	
}	
