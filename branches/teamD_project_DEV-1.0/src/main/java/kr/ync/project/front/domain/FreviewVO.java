package kr.ync.project.front.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class FreviewVO {
	private int REVIEW_IDX; //호텔주소

	private String REVIEW_TITLE; //리뷰제목
	
	private int REVIEW_CLEAN; //청결도 평점
	
	private int REVIEW_SERVICE; //서비스 평점
	
	private int REVIEW_COMFORT; //편안함 평정
	
	private int REVIEW_STATE;//관리 상태 평점
	
	private int REVIEW_LOCAL; //위치 주변 지역 평점
	
	private int REVIEW_RATE; // 총평점
	
	private String REVIEW_CONTENT; //후기내용
	
	private String REVIEW_DATE; // 리뷰 날짜
	
	private String MEMBER_ID; //회원 아이디
	
	private String HOTEL_CODE; //호텔코드
	
	
}