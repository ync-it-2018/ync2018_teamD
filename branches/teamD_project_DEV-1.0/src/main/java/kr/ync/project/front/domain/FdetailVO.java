package kr.ync.project.front.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class FdetailVO {
	private String address; //호텔주소

	private int room_lowprice; //호텔 
	
	private float rate; //호텔 평점
	
	private int hotel_class; //호텔 등급
	
	private String information; //호텔서술적 상세정보
	
	private int hotel_discount; //호텔 할인율
	
	private String hotel_code; //호텔 구분코드
	
    private String hotel_name;    //호텔 이름

    private String nation_name; //국가코드

    private String city_name; //도시 코드
    
    private int idx; 	
    
    private  String hotel_core_info; //객실 보유수
    
    private String hotel_precautions; //객실  정보
    
    private String hotel_checktime; //체크인아웃시간
    
    private String hotel_etc; //그외정보
    
    private int room_idx;// 각 객실번호
    
    private int room_peoplenum;// 객실안에 들어갈수있는 어른
    
    private int room_bed;// 객실 침대 개수
    
    private int room_price;// 객실 가격
    
    private String room_name; //룸이름
    
    private int room_peoplenum_k;// 객실안에 들어갈수있는 아이
    
	
}