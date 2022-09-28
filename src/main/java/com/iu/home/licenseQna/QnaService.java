package com.iu.home.licenseQna;

import java.util.List;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.iu.home.util.CommentPager;
import com.iu.home.util.FileManager;
import com.iu.home.util.Pager;

@Service
public class QnaService implements BoardService {
	
	@Autowired
	private QnaDAO qnaDAO;
	
	@Autowired
	private FileManager fileManager;
	
	
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
	public int setAdd(QnaDTO qnaDTO, MultipartFile[]files, ServletContext servletContext) throws Exception {
		// TODO Auto-generated method stub
		int result = qnaDAO.setAdd(qnaDTO);
		String path = "resources/upload/qna";
		
		for(MultipartFile multipartFile: files) {
			if(multipartFile.isEmpty()) {
				continue;
			}
			
			String fileName = fileManager.saveFile(servletContext, path, multipartFile);
			QnaFileDTO qnaFileDTO = new QnaFileDTO();
			qnaFileDTO.setFileName(fileName);
			qnaFileDTO.setOriName(multipartFile.getOriginalFilename());
			qnaFileDTO.setNum(qnaDTO.getQnaNum());
			qnaDAO.setAddFile(qnaFileDTO);
		}

		return result;//qnaDAO.setAdd(qnaDTO)
	}
	
	@Override
	public int setUpdate(QnaDTO qnaDTO, MultipartFile[]files, ServletContext servletContext) throws Exception {
		// TODO Auto-generated method stub
		String path="resources/upload/qna";
		int result = qnaDAO.setUpdate(qnaDTO);
		
		if(result>1) {
			return result;
		}
		
		for(MultipartFile multipartFile : files) {
			if(multipartFile.isEmpty()) {
				continue;
			}
			String fileName = fileManager.saveFile(servletContext, path, multipartFile);
			QnaFileDTO qnaFileDTO = new QnaFileDTO();
			qnaFileDTO.setFileName(fileName);
			qnaFileDTO.setOriName(multipartFile.getOriginalFilename());
			qnaFileDTO.setNum(qnaDTO.getQnaNum());
			
		}
		return result;
	}
	
	@Override
	public int setFileDelete(QnaFileDTO qnaFileDTO, ServletContext servletContext) throws Exception {
		// TODO Auto-generated method stub
		qnaFileDTO = qnaDAO.getFileDetail(qnaFileDTO);
		int result = qnaDAO.setFileDelete(qnaFileDTO);
		String path="resources/upload/qna";
		
		if(result>0) {
			fileManager.deleteFile(servletContext, path, qnaFileDTO);
		}
		
		return result;
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
	
	//comment
		@Autowired
		private QnaCommentDAO qnaCommentDAO;
		
		public List<QnaCommentDTO> getCommentList(CommentPager commentPager)throws Exception {
			commentPager.getRowNum();
			Long totalCount = qnaCommentDAO.getCommentListTotalCount(commentPager);
			commentPager.makePage(totalCount);
			return qnaCommentDAO.getCommentList(commentPager);
		}
		
		
		public int setCommentAdd(QnaCommentDTO qnaCommentDTO)throws Exception {
			return qnaCommentDAO.setCommentAdd(qnaCommentDTO);
			
		}
		
		int setCommentUpdate(QnaCommentDTO qnaCommentDTO) throws Exception {
			return qnaCommentDAO.setCommentUpdate(qnaCommentDTO);
		}
		
		int setCommentDelete(QnaCommentDTO qnaCommentDTO) throws Exception {
			return qnaCommentDAO.setCommentDelete(qnaCommentDTO);
		}

	
	
}
