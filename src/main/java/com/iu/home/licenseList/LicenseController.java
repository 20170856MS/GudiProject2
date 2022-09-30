package com.iu.home.licenseList;

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

import com.iu.home.licenseQna.QnaDTO;
import com.iu.home.licenseQna.QnaService;
import com.iu.home.util.Pager;

@Controller
@RequestMapping(value="/info/*")
public class LicenseController {
	
	@Autowired
	private LicenseService licenseService;
	
	@Autowired
	private QnaService qnaService;
	
	private HttpSession session;
	
	@GetMapping("main")
	public ModelAndView getInfo(Pager pager) throws Exception{
		ModelAndView mv = new ModelAndView();
		pager.setPerPage(10L);
		
		List<LicenseDTO> ar = licenseService.getList(pager);

		mv.addObject("list",ar);
		mv.addObject("pager",pager);
		mv.setViewName("/info/main");
		return mv;
	}
	
	@GetMapping("detail")
	public ModelAndView getDetail(LicenseDTO licenseDTO, Pager pager) throws Exception{
		ModelAndView mv = new ModelAndView();
		
		int result = licenseService.setHits(licenseDTO);
		LicenseDTO name=licenseService.getLicenseName(licenseDTO);
		List<LicenseDTO> detailBook = licenseService.getDetailBook(licenseDTO);
		List<LicenseDTO> detailVideo = licenseService.getDetailVideo(licenseDTO);
		List<LicenseDTO> detailJob = licenseService.getDetailJob(licenseDTO);
		List<LicenseDTO> detailSchedule = licenseService.getDetailSchedule(licenseDTO);
		//상세보기 게시판부분
		List<QnaDTO> ar = qnaService.getList(pager);
		mv.addObject("pager",pager);
		
		mv.addObject("name",name);
		mv.addObject("detailBook",detailBook);
		mv.addObject("detailVideo",detailVideo);
		mv.addObject("detailJob",detailJob);
		mv.addObject("detailSchedule",detailSchedule);
		//상세보기 게시판부분
		mv.addObject("list",ar);
		
		mv.setViewName("/info/detail");
		return mv;	
	}
	@GetMapping("detailAjax")
	@ResponseBody
	public Map<String,Object> getDetailAjax(LicenseDTO licenseDTO) throws Exception{

		
		List<LicenseDTO> dj = licenseService.getDetailJob(licenseDTO);
		
		Map<String,Object> map = new HashMap<String, Object>();
		map.put("dj", dj);
		return map;
	}

	
	@GetMapping("update")
	public ModelAndView setUpdate(LicenseDTO licenseDTO) throws Exception{
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("/info/update");
		return mv;
	}
	
	@GetMapping("add")
	public ModelAndView setAdd(LicenseDTO licenseDTO) throws Exception{
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("/info/add");
		return mv;
	}
	//글추가
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
		//mv.addObject("url", "detail");
		mv.setViewName("common/result");
		
		return mv;
	}

}
