/**
 * FAQService.java
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

import kr.ync.project.front.domain.FfaqVO;

/**
 * FAQService.java
*
* @Author	: 김 건 우
* @Date		: 2018. 12. 13.
* @Description
*		
*		File description is here
*		
 */
public interface FfaqService {
	public List<FfaqVO> FAQList() throws Exception;
}
