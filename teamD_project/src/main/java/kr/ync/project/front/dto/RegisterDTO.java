/**
 * RegisterDTO.java
*
* @Author	: 김 건 우
* @Date		: 2018. 12. 10.
* @Description
*		
*		File description is here
*		
 */
package kr.ync.project.front.dto;

/**
 * RegisterDTO.java
*
* @Author	: 김 건 우
* @Date		: 2018. 12. 10.
* @Description
*		
*		File description is here
*		
 */

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class RegisterDTO {
	private String MEMBER_ID;

    private String MEMBER_PASSWORD;

    private String MEMBER_PNUMBER;

    private String MEMBER_ADDRESS;
    
    private String NATION_CODE;
    
    private String MEMBER_FIANAME;
    
    private String MEMBER_LANAME;
}
