package kr.ync.project.admin.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class FaqVO {

	private String faq_idx;
	
	private String faq_title;
	
	private String faq_content;
	
	private String faq_date;
	
	private String admin_id;
	
	private String faq_preference;
	
	private String faq_out;

}
