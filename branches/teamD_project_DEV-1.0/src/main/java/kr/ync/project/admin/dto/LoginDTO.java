package kr.ync.project.admin.dto;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class LoginDTO {
	
	private String uids;
	private String upw;
	private boolean useCookie;

}
