/**
 * FAQServiceImpl.java
*
* @Author	: 김 건 우
* @Date		: 2018. 12. 13.
* @Description
*		
*		File description is here
*		
 */
package kr.ync.project.front.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ync.project.front.domain.FAQVO;
import kr.ync.project.front.persistence.FAQDAO;

/**
 * FAQServiceImpl.java
*
* @Author	: 김 건 우
* @Date		: 2018. 12. 13.
* @Description
*		
*		File description is here
*		
 */
@Repository
public class FAQServiceImpl implements FAQService {

	@Inject
	private FAQDAO dao;

	@Override
	public List<FAQVO> FAQList() throws Exception {
		// TODO Auto-generated method stub
		return dao.FAQList();
	}

}
