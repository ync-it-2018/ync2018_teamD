package kr.ync.project.admin.service;

import java.util.List;

import kr.ync.project.admin.domain.memberVO;

public interface memberService {
	public void regist(memberVO board) throws Exception;
    
    public memberVO read(Integer bno) throws Exception;
    
    public void modify (memberVO board) throws Exception;
    
    public void remove (Integer bno) throws Exception;
    
    public List<memberVO> listAll() throws Exception;
}
