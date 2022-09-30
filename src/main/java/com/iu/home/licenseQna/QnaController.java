package com.iu.home.licenseQna;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.iu.home.licenseQna.QnaCommentDTO;
import com.iu.home.licensemembers.LicenseMembersDTO;
import com.iu.home.util.CommentPager;
import com.iu.home.util.Pager;

@Controller
@RequestMapping("/qna/*")
public class QnaController {

	@Autowired
	private QnaService qnaService;
	private HttpSession session;

	//글목록
	@GetMapping("list")
	public ModelAndView getList(Pager pager)throws Exception {
		ModelAndView mv = new ModelAndView();

		List<QnaDTO> ar = qnaService.getList(pager);
		mv.addObject("pager",pager);
		mv.addObject("list",ar);
		//mv.addObject("Qna");
		mv.setViewName("qna/list");
		return mv;
	}
	//글상세
	@GetMapping("detail")
	public ModelAndView getDetail(QnaDTO qnaDTO)throws Exception {
		ModelAndView mv = new ModelAndView();
		qnaDTO = qnaService.getDetail(qnaDTO);
		mv.addObject("detail", qnaDTO);
		mv.setViewName("qna/detail");
		return mv;
	}

	//글쓰기
	@GetMapping("add")
	public String setAdd(HttpSession session)throws Exception {
		LicenseMembersDTO licenseMembersDTO=(LicenseMembersDTO)session.getAttribute("member");
		//		if(licenseMembersDTO != null) {
		return "qna/add";
		//		}else {
		//			return "redirect:../member/login";
		//		}
		// 나중에 로그인해서만 할 수 있게 할 때 수정

	}


	@PostMapping("add")
	public ModelAndView setAdd(QnaDTO qnaDTO, MultipartFile [] files, HttpSession session)throws Exception {
		ModelAndView mv = new ModelAndView();
		System.out.println(qnaDTO.getWriter());
		System.out.println(qnaDTO.getQnaNum());
		int result =qnaService.setAdd(qnaDTO,files,session.getServletContext());
		String message="글쓰기실패!!!";

		if(result > 0) {
			message="글쓰기완료!!!";
		}
		mv.addObject("result",result);
		mv.addObject("message",message);
		mv.addObject("url", "list");
		mv.setViewName("common/result");

		return mv;
	}
	//글수정
	@GetMapping("update")
	public ModelAndView setUpdate(QnaDTO qnaDTO,ModelAndView mv)throws Exception {
		qnaDTO = qnaService.getDetail(qnaDTO);
		mv.addObject("qnaDTO",qnaDTO);
		mv.setViewName("qna/update");
		return mv;
	}

	@PostMapping("update")
	public String setUpdate(QnaDTO qnaDTO, MultipartFile[]files, HttpSession session)throws Exception {
		int result = qnaService.setUpdate(qnaDTO, files, session.getServletContext());
		return "redirect:./detail?qnaNum="+qnaDTO.getQnaNum();
	}

	//글삭제
	@GetMapping
	public String setDelete(QnaDTO qnaDTO)throws Exception {
		//int result = qnaService.setDelete(qnaDTO);
		qnaService.setDelete(qnaDTO);
		return "redirect:list";
	}

	// 답글 	
	//	@GetMapping("reply")
	//	public ModelAndView setReply(QnaDTO qnaDTO, ModelAndView mv)throws Exception {
	//		mv.addObject("qnaDTO", qnaDTO);
	//		mv.setViewName("qna/reply");
	//		return mv;
	//	}
	//	
	//	@PostMapping("reply")
	//	public String setReply(QnaDTO qnaDTO)throws Exception {
	//		int result = qnaService.setReply(qnaDTO);
	//		return "redirect:./list";
	//	}

	//파일삭제
	@PostMapping("fileDelete")
	@ResponseBody
	public int setFileDelete(QnaFileDTO qnaFileDTO, HttpSession session)throws Exception {
		int result = qnaService.setFileDelete(qnaFileDTO, session.getServletContext());
		return result;
	}

	//댓글
	@PostMapping("commentAdd")
	@ResponseBody
	public String setCommentAdd(QnaCommentDTO qnaCommentDTO)throws Exception {
		ModelAndView mv = new ModelAndView();

		int result = qnaService.setCommentAdd(qnaCommentDTO);
		String jsonResult="{\"result\":\""+result+"\"}";
		return jsonResult;
	}

	//	@GetMapping("commentList")
	//	public ModelAndView getCommentList(CommentPager commentPager)throws Exception {
	//		ModelAndView mv = new ModelAndView();
	//		List<QnaCommentDTO> ar = qnaService.getCommentList(commentPager);
	//		System.out.println("CommentList");
	//		System.out.println(ar.size());
	//		mv.addObject("commentList",ar);
	//		mv.setViewName("common/commentList");
	//		return mv;
	//	}

	//리스트
	@GetMapping("commentList")
	@ResponseBody
	public Map<String, Object> getCommentList(CommentPager commentPager)throws Exception {
		List<QnaCommentDTO> ar = qnaService.getCommentList(commentPager);
		System.out.println("CommentList");
		System.out.println(ar.size());
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("list", ar);
		map.put("pager", commentPager);

		return map;

	}
	//수정
	@PostMapping("commentUpdate")
	@ResponseBody
	public int setCommentUpdate(QnaCommentDTO qnaCommentDTO)throws Exception {
		int result = qnaService.setCommentUpdate(qnaCommentDTO);
		return result;
	}
	//삭제
	@PostMapping("commentDelete")
	@ResponseBody
	public int setCommentDelete(QnaCommentDTO qnaCommentDTO)throws Exception {
		int result = qnaService.setCommentDelete(qnaCommentDTO);
		return result;
	}


}
