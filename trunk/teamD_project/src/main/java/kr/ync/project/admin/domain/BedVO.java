package kr.ync.project.admin.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
/**
 * 
 * BedVO.java
 *
 * @Author : 이우호
 * @Date   : 2018. 12. 14.
 * @Description 
 *  호텔 내 객실의 침대에 대한 정보
 *
 */
public class BedVO {
	private String bed_name;

	private int bed_cnt;
	
	
}