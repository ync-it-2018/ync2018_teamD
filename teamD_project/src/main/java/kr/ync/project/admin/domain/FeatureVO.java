package kr.ync.project.admin.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
/**
 * 
 * FeatureVO.java
 *
 * @Author : 이우호
 * @Date   : 2018. 12. 14.
 * @Description 
 *  호텔과 객실의 편의기능에 대한 정보
 *
 */
public class FeatureVO {
	private String rf_name;
	
	private String room_name;
	
	private String hf_name;
	
	private int hf_idx;
}