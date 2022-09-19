package com.iu.home.licenseQna;

import java.util.List;

import javax.servlet.ServletContext;

import org.springframework.web.multipart.MultipartFile;

import com.iu.home.util.Pager;

public interface BoardService {
	
	//글목록
	public List<QnaDTO> getList(Pager pager)throws Exception;
	
	//글조회
	public QnaDTO getDetail(QnaDTO qnaDTO)throws Exception;
	
	//글쓰기
	public int setAdd(QnaDTO qnaDTO)throws Exception;
	
	//글수정
	public int setUpdate(QnaDTO qnaDTO, ServletContext servletContext)throws Exception;
	
	//글삭제
	public int setDelete(QnaDTO qnaDTO)throws Exception;

}
