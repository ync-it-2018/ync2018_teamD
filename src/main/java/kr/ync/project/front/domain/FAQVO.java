/**
 * FAQVO.java
*
* @Author	: 김 건 우
* @Date		: 2018. 12. 13.
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
 * FAQVO.java
*
* @Author	: 김 건 우
* @Date		: 2018. 12. 13.
* @Description
*		
*		File description is here
*		
 */
@Getter
@Setter
@ToString
public class FAQVO {
	
	private int FAQ_IDX;
	
	private String FAQ_TITLE;
	
	private String FAQ_CONTENT;
	
	private String ADMIN_ID;
	
	private String DATE;

	private int FAQ_PREFERENCE;
}
