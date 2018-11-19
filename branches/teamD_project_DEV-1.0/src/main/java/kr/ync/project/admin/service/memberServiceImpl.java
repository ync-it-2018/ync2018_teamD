package kr.ync.project.admin.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Repository;

import kr.ync.project.admin.domain.memberVO;
import kr.ync.project.admin.persistence.memberDAO;

@Repository
public class memberServiceImpl implements memberService {
	
	@Inject
	private memberDAO dao;

	@Override
	public void regist(memberVO board) throws Exception {
		// TODO Auto-generated method stub
		dao.create(board);
	}

	@Override
	public memberVO read(Integer bno) throws Exception {
		// TODO Auto-generated method stub
		return dao.read(bno);
	}

	@Override
	public void modify(memberVO board) throws Exception {
		// TODO Auto-generated method stub
		dao.update(board);
	}

	@Override
	public void remove(Integer bno) throws Exception {
		// TODO Auto-generated method stub
		dao.delete(bno);
	}

	@Override
	public List<memberVO> listAll() throws Exception {
		// TODO Auto-generated method stub
		return dao.listAll();
	}

}
