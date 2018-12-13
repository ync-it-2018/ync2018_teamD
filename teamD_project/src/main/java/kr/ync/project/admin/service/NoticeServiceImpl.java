package kr.ync.project.admin.service;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Repository;

import kr.ync.project.admin.domain.NoticeVO;
import kr.ync.project.admin.persistence.NoticeDAO;


@Repository
public class NoticeServiceImpl implements NoticeService {

   @Inject
   private NoticeDAO dao;

@Override
public List<NoticeVO> listAll() throws Exception {
	// TODO Auto-generated method stub
	return dao.listAll();
}

@Override
public int listCnt() throws Exception {
	// TODO Auto-generated method stub
	return dao.listCnt();
}

@Override
public NoticeVO noticeDetail(int idx) throws Exception {
	// TODO Auto-generated method stub
	return dao.noticeDetail(idx);
}

@Override
public void updateNotice(HashMap ntt) throws Exception {
	// TODO Auto-generated method stub
	dao.updateNotice(ntt);
}

@Override
public void addNotice(NoticeVO nt) throws Exception {
	// TODO Auto-generated method stub
	dao.addNotice(nt);
}

@Override
public void noticeModify(NoticeVO nt) throws Exception {
	// TODO Auto-generated method stub
	dao.noticeModify(nt);
}


}
