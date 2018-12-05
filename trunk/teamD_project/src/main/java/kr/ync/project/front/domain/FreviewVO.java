package kr.ync.project.front.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class FreviewVO {
	private int REVIEW_IDX; //호텔주소

	private String REVIEW_TITLE;
	
	private int REVIEW_CLEAN;
	
	private int REVIEW_SERVICE;
	
	private int REVIEW_COMFORT;
	
	private int REVIEW_STATE;
	
	private int REVIEW_LOCAL;
	
	private int REVIEW_RATE;
	
	private String REVIEW_CONTENT;
	
	private String REVIEW_DATE;
	
	private String MEMBER_ID;
	
	private String HOTEL_CODE;
	
	
}