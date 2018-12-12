package kr.ync.project.front.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

/**
 * FmypageVO.java
 *
 * @Author : 김 건 우
 * @Date : 2018. 12. 7.
 * @Description
 * 
 * 				File description is here
 * 
 */

@Getter
@Setter
@ToString
public class FmypageVO {

	private int BOOKING_IDX;

	private String BOOKING_IN_DATE;

	private String BOOKING_OUT_DATE;

	private String BOOKING_CANCLE;

	private String ROOM_IDX;

	private int BOOKING_CASH;

	private String BOOKING_PEOPLE;

	private String BOOKING_DATE;

	private String HOTEL_CODE;
	
	private String HOTEL_NAME;

	private String MEMBER_ID;
}
