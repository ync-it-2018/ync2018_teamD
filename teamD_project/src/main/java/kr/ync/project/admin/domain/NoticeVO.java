package kr.ync.project.admin.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class NoticeVO {
	private int rownum; 
	
	private int notice_idx;
	
	private String notice_title;
	
	private String notice_date;
	
	private String notice_days;
	
	private String notice_img;
	
	private String notice_content;
	
	private String notice_chk;
	
	private String admin_id;
}