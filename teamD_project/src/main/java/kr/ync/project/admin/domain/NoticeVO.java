package kr.ync.project.admin.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
/**
 * 
 * NoticeVO.java
 *
 * @Author : 이우호
 * @Date   : 2018. 12. 14.
 * @Description 
 *  공지사항에 대한 정보
 *
 */
public class NoticeVO {
	private int rownum; 
	
	private int notice_idx;
	
	private String notice_title;
	
	private String notice_date;
	
	private String notice_end;
	
	private String notice_days;
	
	private String notice_img;
	
	private String notice_content;
	
	private String notice_chk;
	
	private String admin_id;
}