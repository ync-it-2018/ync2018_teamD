package kr.ync.project.front.dto;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class LoginDTO {
	
	private String member_id;
	private String member_password;
	// private boolean useCookie;

}
