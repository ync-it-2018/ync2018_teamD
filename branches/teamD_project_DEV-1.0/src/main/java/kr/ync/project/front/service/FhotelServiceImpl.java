package kr.ync.project.front.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Repository;

import kr.ync.project.front.domain.FhotelVO;
import kr.ync.project.front.persistence.FhotelDAO;


@Repository
public class FhotelServiceImpl implements FhotelService {

   @Inject
   private FhotelDAO dao;

   @Override
   public void regist(FhotelVO board) throws Exception {
      // TODO Auto-generated method stub
      dao.create(board);
   }

   @Override
   public FhotelVO read(String hotel_code) throws Exception {
      // TODO Auto-generated method stub
      return dao.read(hotel_code);
   }

   @Override
   public void modify(FhotelVO board) throws Exception {
      // TODO Auto-generated method stub
      dao.update(board);
   }

   @Override
   public void remove(Integer bno) throws Exception {
      // TODO Auto-generated method stub
      dao.delete(bno);
   }

   @Override
   public List<FhotelVO> listAll() throws Exception {
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