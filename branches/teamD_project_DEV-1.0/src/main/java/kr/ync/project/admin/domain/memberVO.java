package kr.ync.project.admin.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class memberVO {
	private String MEMBER_ID;

    private String MEMBER_PASSWORD;

    private String MEMBER_PNUMBER;

    private String MEMBER_ADDRESS;
    
    private String MEMBER_OUT;
    
    private String NATION_CODE;
    
    private String MEMBER_FIANAME;
    
    private String MEMBER_LANAME;
    
    private String MEMBER_JOINDATE;
}
