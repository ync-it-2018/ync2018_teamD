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

import kr.ync.project.front.domain.FAQVO;

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

@Repository
public class FAQDAOImpl implements FAQDAO {

	
	@Inject
	private SqlSession session;

	private static String namespace 
	= "kr.ync.project.mapper.FAQMapper";
	
	
	@Override
	public List<FAQVO> FAQList() throws Exception {
		// TODO Auto-generated method stub
		return session.selectList(namespace + ".FAQList");
	}
}
