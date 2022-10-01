package com.iu.home.licenseQna;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.iu.home.util.Pager;

@Repository
public class QnaDAO {

	@Autowired
	private SqlSession sqlSession;

	private final String NAMESPACE="com.iu.home.licenseQna.QnaDAO.";

	//글목록보기(list)
	public List<QnaDTO> getList(Pager pager)throws Exception {

		return sqlSession.selectList(NAMESPACE+"getList",pager);
	}

	public List<QnaDTO> getDetailList(Pager pager)throws Exception {
		return sqlSession.selectList(NAMESPACE+"getDetailList",pager);
	}

	//글상세보기(detail)
	public QnaDTO getDetail(QnaDTO qnaDTO)throws Exception {

		return sqlSession.selectOne(NAMESPACE+"getDetail",qnaDTO);
	}
	//게시글작성(add)
	public int setAdd(QnaDTO qnaDTO)throws Exception {

		return sqlSession.insert(NAMESPACE+"setAdd",qnaDTO);
	}
	//게시글수정(update)
	public int setUpdate(QnaDTO qnaDTO)throws Exception {

		return sqlSession.update(NAMESPACE+"setUpdate",qnaDTO);
	}
	//게시글삭제(delete)
	public int setDelete(QnaDTO qnaDTO)throws Exception {

		return sqlSession.delete(NAMESPACE+"setDelete",qnaDTO);
	}
	//답글(reply)
	public int setReplyAdd(QnaDTO qnaDTO)throws Exception {

		return sqlSession.insert(NAMESPACE+"setReplyAdd", qnaDTO);
	}
	//순서수정(stepUpdate)
	public int setStepUpdate(QnaDTO qnaDTO)throws Exception {

		return sqlSession.update(NAMESPACE+"setStepUpdate", qnaDTO);
	}

	public Long getCount(Pager pager)throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.selectOne(NAMESPACE+"getCount", pager);
	}

	//fileDetail
	public QnaFileDTO getFileDetail(QnaFileDTO qnaFileDTO)throws Exception {
		return sqlSession.selectOne(NAMESPACE+"getFileDetail", qnaFileDTO);
	}

	//파일추가(addFile)
	public int setAddFile(QnaFileDTO qnaFileDTO)throws Exception {

		return sqlSession.insert(NAMESPACE+"setAddFile", qnaFileDTO);
	}

	//fileDelete
	public int setFileDelete(QnaFileDTO qnaFileDTO)throws Exception {
		return sqlSession.delete(NAMESPACE+"setFileDelete" , qnaFileDTO);
	}

}
