package com.iu.home.qnaBoard;

import java.util.List;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.iu.home.util.FileManager;
import com.iu.home.util.Pager;

@Service
public class qnaBoardService implements BoardService {
	
	@Autowired
	private qnaBoardDAO qnaboardDAO;
	@Autowired
	private FileManager fileManager;
	
	@Override
	public List<qnaBoardDTO> getList(Pager pager) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}
	
	@Override
	public qnaBoardDTO getDetail(qnaBoardDTO qnaboardDTO) throws Exception {
		// TODO Auto-generated method stub
		return qnaboardDAO.getDetail(qnaboardDTO);
	}
	
	@Override
	public int setAdd(qnaBoardDTO qnaboardDTO, MultipartFile[] files, ServletContext servletContext) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}
	
	@Override
	public int setUpdate(qnaBoardDTO qnaboardDTO) throws Exception {
		// TODO Auto-generated method stub
		return qnaboardDAO.setUpdate(qnaboardDTO);
	}
	
	@Override
	public int setDelete(qnaBoardDTO qnaboardDTO) throws Exception {
		// TODO Auto-generated method stub
		return qnaboardDAO.setDelete(qnaboardDTO);
	}
	
	
}
