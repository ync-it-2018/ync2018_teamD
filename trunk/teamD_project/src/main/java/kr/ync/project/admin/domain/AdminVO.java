package kr.ync.project.admin.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class AdminVO {

	private String admin_id;
	
	private String admin_password;
	
	private String admin_email;
	
	private String admin_grade;
	
	private String admin_idx;
	
	private String admin_name;
	
	private String admin_out;
	
	private String sessionkey;
	
	private String sessionlimit;
	
	private boolean adminCookie;

}
