package kr.ync.project.admin.persistence;

import java.util.List;

import kr.ync.project.admin.domain.FaqVO;

public interface FaqDAO {

	public List<FaqVO> FaqList() throws Exception;
	
}
