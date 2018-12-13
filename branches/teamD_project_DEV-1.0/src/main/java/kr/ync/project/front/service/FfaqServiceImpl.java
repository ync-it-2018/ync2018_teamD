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

import org.springframework.stereotype.Repository;

import kr.ync.project.front.domain.FfaqVO;
import kr.ync.project.front.persistence.FfaqDAO;

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
public class FfaqServiceImpl implements FfaqService {

	@Inject
	private FfaqDAO dao;

	@Override
	public List<FfaqVO> FAQList() throws Exception {
		// TODO Auto-generated method stub
		return dao.FAQList();
	}

}
