/**
 * FnoticeServiceImpl.java
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

import kr.ync.project.front.domain.FnoticeVO;
import kr.ync.project.front.persistence.FnoticeDAO;

/**
 * FnoticeServiceImpl.java
 *
 * @Author : 김 건 우
 * @Date : 2018. 12. 5.
 * @Description
 * 
 * 				File description is here
 * 
 */

@Repository
public class FnoticeServiceImpl implements FnoticeService {

	@Inject
	private FnoticeDAO dao;

	@Override
	public List<FnoticeVO> listAll() throws Exception {
		// TODO Auto-generated method stub
		return dao.listAll();
	}

}
