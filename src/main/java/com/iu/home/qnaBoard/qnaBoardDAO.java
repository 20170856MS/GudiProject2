package com.iu.home.qnaBoard;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.iu.home.util.Pager;

@Repository
public class qnaBoardDAO {
	
	@Autowired
	private SqlSession sqlSession;
	
	private final String NAMESPACE="com.iu.home.qnaBoardDAO.";
	
	//글목록보기(list)
	public List<qnaBoardDTO> getList(Pager pager)throws Exception {
		
		return sqlSession.selectList(NAMESPACE+"getList",pager);
	}
	
	//글상세보기(detail)
	public qnaBoardDTO getDetail(qnaBoardDTO qnaboardDTO) {
		
		return sqlSession.selectOne(NAMESPACE+"getDetail",qnaboardDTO);
	}
	//게시글작성(add)
	public int setAdd(qnaBoardDTO qnaboardDTO) {
		
		return sqlSession.insert(NAMESPACE+"setAdd",qnaboardDTO);
	}
	//게시글수정(update)
	public int setUpdate(qnaBoardDTO qnaboardDTO) {
		
		return sqlSession.update(NAMESPACE+"setUpdate",qnaboardDTO);
	}
	//게시글삭제(delete)
	public int setDelete(qnaBoardDTO qnaboardDTO) {
		
		return sqlSession.delete(NAMESPACE+"setDelete",qnaboardDTO);
	}

}
