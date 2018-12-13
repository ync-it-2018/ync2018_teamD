package kr.ync.project.admin.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Repository;

import kr.ync.project.admin.domain.FaqVO;
import kr.ync.project.admin.persistence.FaqDAO;

@Repository
public class FaqServiceImpl implements FaqService {
	
	@Inject
	private FaqDAO dao;

	@Override
	public List<FaqVO> FaqList() throws Exception {
		// TODO Auto-generated method stub
		return 	dao.FaqList();
	}

}
