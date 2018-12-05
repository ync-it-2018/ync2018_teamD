/**
 * FnoticeVO.java
*
* @Author	: 김 건 우
* @Date		: 2018. 12. 5.
* @Description
*		
*		File description is here
*		
 */
package kr.ync.project.front.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

/**
 * FnoticeVO.java
*
* @Author	: 김 건 우
* @Date		: 2018. 12. 5.
* @Description
*		
*		File description is here
*		
 */

@Getter
@Setter
@ToString
public class FnoticeVO {
	private int NOTICE_IDX;
	
	private String NOTICE_TITLE;
	
	private String NOTICE_DATE;
	
	private String NOTICE_DAYS;
	
	private String NOTICE_IMG;
	
	private String NOTICE_CONTENT;
	
	private String ADMIN_ID;
	
}
