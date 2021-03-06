package kr.ync.project.front.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
/**
 * 
 * FhotelVO.java
 *
 * @Author : 이승민
 * @Date   : 2018. 12. 13.
 * @Description
 *  호텔의 정보를 받아오는 VO
 *
 */
public class FhotelVO {
	private String address;

	private int room_lowprice;
	
	private float rate;
	
	private int hotel_class;
	
	private String information;
	
	private int hotel_discount;
	
	private String hotel_code;
	
    private String hotel_name;
    
    private String nation_code;

    private String nation_name;

    private String city_name;  
    
    private String hotel_img;
    
    private String ROOM_NAME; //각 객실의 이름
    
    private int ROOM_PRICE;//객실 일반 가격
    
    private int ROOM_IDX;//객실 방번호
	
}