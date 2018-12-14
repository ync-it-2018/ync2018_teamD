package kr.ync.project.admin.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
/**
 * 
 * HotelVO.java
 *
 * @Author : 이우호
 * @Date   : 2018. 12. 14.
 * @Description 
 *  호텔에 대한 정보
 *
 */
public class HotelVO {
	private int rownum;
	
	private String address;

	private int room_lowprice;
	
	private float rate;
	
	private int hotel_class;
	
	private String information;
	
	private int hotel_discount;
	
	private String hotel_code;
	
    private String hotel_name;    

    private String nation_name;

    private String city_name;  
    
    private String hotel_core_info;  
    
    private String hotel_precautions;  
    
    private String hotel_checktime;  
    
    private String hotel_etc;  
	
}