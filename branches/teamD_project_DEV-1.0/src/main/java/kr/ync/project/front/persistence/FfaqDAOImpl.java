/**
 * FAQDAOImpl.java
*
* @Author	: 김 건 우
* @Date		: 2018. 12. 13.
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

import kr.ync.project.front.domain.FfaqVO;

@Repository
public class FfaqDAOImpl implements FfaqDAO {

	
	@Inject
	private SqlSession session;

	private static String namespace 
	= "kr.ync.project.mapper.FfaqMapper";
	
	
	@Override
	public List<FfaqVO> FAQList() throws Exception {
		// TODO Auto-generated method stub
		return session.selectList(namespace + ".FAQList");
	}
}
