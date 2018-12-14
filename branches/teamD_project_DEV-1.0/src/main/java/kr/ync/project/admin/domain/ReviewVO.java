package kr.ync.project.admin.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
/**
 * 
 * ReviewVO.java
 *
 * @Author : 이우호
 * @Date   : 2018. 12. 14.
 * @Description 
 *  리뷰에 대한 정보
 *
 */
public class ReviewVO {
	private int rownum;
	
	private int review_idx;
	
	private String review_title;

	private int review_clean;
	
	private int review_service;
	
	private int review_comfort;
	
	private int review_state;
	
	private int review_local;
	
	private int review_rate;
	
	private String review_content;
	
	private String review_date;
	
	private String member_id;
	
	private String hotel_code;
	
	private String hotel_name;
	
}