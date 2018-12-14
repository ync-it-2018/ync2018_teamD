package kr.ync.project.admin.persistence;

import java.util.List;

import kr.ync.project.admin.domain.FaqVO;

public interface FaqDAO {

	public List<FaqVO> FaqList() throws Exception;

	public int FaqCount() throws Exception;

	public void FAQDelete(String faq_idx) throws Exception;
	
}
