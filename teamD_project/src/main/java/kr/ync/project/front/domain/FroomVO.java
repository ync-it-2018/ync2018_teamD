package kr.ync.project.front.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class FroomVO { //중복 룸인덱스 호텔코드
	private int ROOM_IDX;  //각 객실에 대한 번호
	
	private int ROOM_PEOPLENUM;//객실안에 들어갈 수 있는 인원(어른)
	
	private int ROOM_BED;//객실 내부에 있는 침대의 개수
	
	private int ROOM_PRICE;//객실 일반 가격
	
	private String HOTEL_CODE;//호텔을 구분하는 코드호텔코드 국가코드+도시코드+호텔이름
	
	private String ROOM_NAME; //각 객실의 이름

	private int ROOM_PEOPLENUM_K; //객실안에 들어갈 수 있는 인원(어린이)
	
	private int RB_IDX; //침대 번호
	
	private String BED_NAME; //침대이름
	
	private int BED_CNT; //침대 개수
	
	private int RIMAGE_IDX; //객실 이미지 번호
	
	private String RIMAGE_NAME; //객실 이미지 이름
	
	private String RIMAGE_PATH; //객실 이미지 소스
	
	private int RF_IDX;//객실 편의시설 번호
	
	private String RF_NAME; //객실의 편의시설 이름
	
	private int ROOM_INFO_IDX; //객실정보 번호
	
	private String ROOM_INFO_DATE; //객실등록 시간

	
	
	
	
	
	
}