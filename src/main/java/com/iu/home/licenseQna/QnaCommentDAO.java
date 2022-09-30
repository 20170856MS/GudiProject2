package com.iu.home.licenseQna;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.iu.home.util.CommentPager;

@Repository
public class QnaCommentDAO {
	
	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE = "com.iu.home.licenseQna.QnaCommentDAO.";
	
	public int setCommentAdd(QnaCommentDTO qnaCommentDTO)throws Exception{
		return sqlSession.insert(NAMESPACE+"setCommentAdd",qnaCommentDTO);
	}
	
	public List<QnaCommentDTO> getCommentList(CommentPager commentPager)throws Exception {
		return sqlSession.selectList(NAMESPACE+"getCommentList", commentPager);
	}
	
	public Long getCommentListTotalCount(CommentPager commentPager)throws Exception{
		return sqlSession.selectOne(NAMESPACE+"getCommentListTotalCount", commentPager);
	}
	
	public int setCommentUpdate(QnaCommentDTO qnaCommentDTO)throws Exception {
		return sqlSession.update(NAMESPACE+"setCommentUpdate", qnaCommentDTO);
	}
	
	public int setCommentDelete(QnaCommentDTO qnaCommentDTO)throws Exception {
		return sqlSession.delete(NAMESPACE+"setCommentDelete", qnaCommentDTO);
	}

}
