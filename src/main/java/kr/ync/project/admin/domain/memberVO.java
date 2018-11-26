package kr.ync.project.admin.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class memberVO {
	private String member_id;

    private String member_password;

    private String member_pnumber;

    private String member_address;
    
    private String member_out;
    
    private String nation_code;
    
    private String member_fianame;
    
    private String member_laname;
    
    private String member_joindate;
}
