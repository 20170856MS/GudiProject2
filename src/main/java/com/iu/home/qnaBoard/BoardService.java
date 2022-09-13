package com.iu.home.qnaBoard;

import java.util.List;

import javax.servlet.ServletContext;

import org.springframework.web.multipart.MultipartFile;

import com.iu.home.util.Pager;

public interface BoardService {
	
	//글목록
	public List<qnaBoardDTO> getList(Pager pager)throws Exception;
	
	//글조회
	public qnaBoardDTO getDetail(qnaBoardDTO qnaboardDTO)throws Exception;
	
	//글쓰기
	public int setAdd(qnaBoardDTO qnaboardDTO, MultipartFile[]files, ServletContext servletContext)throws Exception;
	
	//글수정
	public int setUpdate(qnaBoardDTO qnaboardDTO)throws Exception;
	
	//글삭제
	public int setDelete(qnaBoardDTO qnaboardDTO)throws Exception;

}
