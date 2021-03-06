package kr.ync.project.admin.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Repository;

import kr.ync.project.admin.domain.AdminVO;
import kr.ync.project.admin.domain.Criteria;
import kr.ync.project.admin.domain.SearchCriteria;
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
	public memberVO read(String member_id) throws Exception {
		// TODO Auto-generated method stub
		return dao.read(member_id);
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
	
	@Override
	public List<memberVO> listCriteria(Criteria cri) throws Exception {
		// TODO Auto-generated method stub
		return dao.listCriteria(cri);
	}

	@Override
	public int listCountCriteria(Criteria cri) throws Exception {
		// TODO Auto-generated method stub
		return dao.mcountPaging(cri);
	}

	@Override
	public int listSearchCount(SearchCriteria cri) throws Exception {
		// TODO Auto-generated method stub
		return dao.listSearchCount(cri);
	}

	@Override
	public List<memberVO> readbooking(String member_id) throws Exception {
		// TODO Auto-generated method stub
		return dao.readbooking(member_id);
	}

	@Override
	public List<memberVO> readbookingEnd(String member_id) throws Exception {
		// TODO Auto-generated method stub
		return dao.readbookingEnd(member_id);
	}

	@Override
	public List<memberVO> omemberlist(SearchCriteria cri) throws Exception {
		// TODO Auto-generated method stub
		return dao.omemberlist(cri);
	}

	@Override
	public int listomemberCount(SearchCriteria cri) throws Exception {
		// TODO Auto-generated method stub
		return dao.listomemberCount(cri);
	}

	@Override
	public List<AdminVO> memberadminList(SearchCriteria cri) throws Exception {
		// TODO Auto-generated method stub
		return dao.memberadminList(cri);
	}

	@Override
	public int listmemberadminCount(SearchCriteria cri) throws Exception {
		// TODO Auto-generated method stub
		return dao.listmemberadminCount(cri);
	}

	@Override
	public void memberupdate(memberVO memvo) throws Exception {
		// TODO Auto-generated method stub
		dao.memberupdate(memvo);
	}

	@Override
	public void memberDelete(String member_id) throws Exception {
		// TODO Auto-generated method stub
		dao.memberupdate(member_id);
	}

	@Override
	public void memberadminDelete(String admin_id) throws Exception {
		// TODO Auto-generated method stub
		dao.memberadminDelete(admin_id);
	}

	@Override
	public AdminVO adminread(String admin_id) throws Exception {
		// TODO Auto-generated method stub
		return dao.adminread(admin_id);
	}

	@Override
	public void memberadminupdate(AdminVO adminvo) throws Exception {
		// TODO Auto-generated method stub
		dao.memberadminupdate(adminvo);
	}

	@Override
	public void memberadminInserte(AdminVO adminvo) throws Exception {
		// TODO Auto-generated method stub
		dao.memberadminInserte(adminvo);
	}	

}
