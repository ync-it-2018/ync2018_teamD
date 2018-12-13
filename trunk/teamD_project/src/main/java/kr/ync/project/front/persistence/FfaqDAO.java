/**
 * FAQDAO.java
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

import kr.ync.project.front.domain.FfaqVO;

public interface FfaqDAO {
	public List<FfaqVO> FAQList() throws Exception;
}
