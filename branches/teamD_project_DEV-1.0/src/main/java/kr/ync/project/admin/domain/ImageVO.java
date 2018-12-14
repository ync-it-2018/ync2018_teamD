package kr.ync.project.admin.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
/**
 * 
 * ImageVO.java
 *
 * @Author : 이우호
 * @Date   : 2018. 12. 14.
 * @Description 
 *  호텔, 객실 이미지에 대한 정보
 *
 */
public class ImageVO {
	private int rimage_idx;
	
	private String rimage_name;
	
	private String rimage_path;
	
	private int room_idx;
	
	private String hotel_code;
	
	private int himg_idx;
	
	private String himg_name;
	
	private String himg_path;

	
}