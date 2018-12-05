/**
 * FnoticeService.java
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

import kr.ync.project.front.domain.FnoticeVO;

/**
 * FnoticeService.java
*
* @Author	: 김 건 우
* @Date		: 2018. 12. 5.
* @Description
*		
*		File description is here
*		
 */
public interface FnoticeService {
	public List<FnoticeVO> listAll() throws Exception;
}
