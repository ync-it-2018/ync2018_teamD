package kr.ync.project.admin.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Repository;

import kr.ync.project.admin.domain.BoardVO;
import kr.ync.project.admin.persistence.BoardDAO;


@Repository
public class BoardServiceImpl implements BoardService {

   @Inject
   private BoardDAO dao;

   @Override
   public void regist(BoardVO board) throws Exception {
      // TODO Auto-generated method stub
      dao.create(board);
   }

   @Override
   public BoardVO read(Integer bno) throws Exception {
      // TODO Auto-generated method stub
      return dao.read(bno);
   }

   @Override
   public void modify(BoardVO board) throws Exception {
      // TODO Auto-generated method stub
      dao.update(board);
   }

   @Override
   public void remove(Integer bno) throws Exception {
      // TODO Auto-generated method stub
      dao.delete(bno);
   }

   @Override
   public List<BoardVO> listAll() throws Exception {
      // TODO Auto-generated method stub
      return dao.listAll();
   }

//@Override
//public List<BoardVO> listCriteria(Criteria cri) throws Exception {
//	// TODO Auto-generated method stub
//	return dao.listCriteria(cri);
//}
//
//@Override
//public int listCountCriteria(Criteria cri) throws Exception {
//	// TODO Auto-generated method stub
//	return dao.countPaging(cri);
//}
//
//@Override
//public List<BoardVO> listSearchCriteria(SearchCriteria cri) throws Exception {
//	// TODO Auto-generated method stub
//	return dao.listSearch(cri);
//}
//
//@Override
//public int listSearchCount(SearchCriteria cri) throws Exception {
//	// TODO Auto-generated method stub
//	return dao.listSearchCount(cri);
//}

}
