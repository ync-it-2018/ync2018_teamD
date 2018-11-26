package kr.ync.project.admin.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class RoomVO {
	private int room_idx;

	private int room_peoplenum;
	
	private int room_peoplenum_k;
	
	private int room_bed;
	
	private int room_price;
		
	private String hotel_code;
	
	private String room_name;
	
	private String rimage_idx;
	
	private String rimage_name;
	
}