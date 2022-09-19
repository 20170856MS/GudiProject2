package com.iu.home.licenseQna;

import java.util.List;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.iu.home.util.FileManager;
import com.iu.home.util.Pager;

@Service
public class QnaService implements BoardService {
	
	@Autowired
	private QnaDAO qnaDAO;
	
	
	@Override
	public List<QnaDTO> getList(Pager pager) throws Exception {
		// TODO Auto-generated method stub
		Long totalCount = qnaDAO.getCount(pager);
		pager.getNum(totalCount);
		pager.getRowNum();
		return qnaDAO.getList(pager);
	}
	
	@Override
	public QnaDTO getDetail(QnaDTO qnaDTO) throws Exception {
		// TODO Auto-generated method stub
		return qnaDAO.getDetail(qnaDTO);
	}
	
	@Override
	public int setAdd(QnaDTO qnaDTO) throws Exception {
		// TODO Auto-generated method stub
		int result = qnaDAO.setAdd(qnaDTO);

		return result;
	}
	
	@Override
	public int setUpdate(QnaDTO qnaDTO, ServletContext servletContext) throws Exception {
		// TODO Auto-generated method stub
		return qnaDAO.setUpdate(qnaDTO);
	}
	
	@Override
	public int setDelete(QnaDTO qnaDTO) throws Exception {
		// TODO Auto-generated method stub
		return qnaDAO.setDelete(qnaDTO);
	}
	
	public int setReply(QnaDTO qnaDTO)throws Exception {
		
		//QnaDTO qnaDTO = qnaDAO.getDetail(qnaDTO);
		
		qnaDTO.setRef(qnaDTO.getRef());
		qnaDTO.setStep(qnaDTO.getStep());
		qnaDTO.setDepth(qnaDTO.getDepth());
		qnaDAO.setStepUpdate(qnaDTO);
		int result = qnaDAO.setReplyAdd(qnaDTO);
		
		return 0;
	}
	
	
}
