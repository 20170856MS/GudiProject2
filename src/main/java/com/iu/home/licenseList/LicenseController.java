package com.iu.home.licenseList;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
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
import com.iu.home.licensemembers.LicenseMembersDTO;
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
	public ModelAndView getInfo(Pager pager,LicenseDTO licenseDTO) throws Exception{
		ModelAndView mv = new ModelAndView();
		pager.setPerPage(10L);
		List<LicenseDTO> ar = licenseService.getList(pager);//여러자격증

		List<ScheduleDTO> ds = new ArrayList<ScheduleDTO>();

		for(int i =0; i<ar.size();i++) {
			//			licenseDTO.setLicenseNum(ar.get(i).getLicenseNum());
			//			ds = licenseService.getDetailSchedule(licenseDTO);
		}
		licenseDTO.setLicenseNum(ar.get(0).getLicenseNum());
		ds = licenseService.getDetailSchedule(licenseDTO);
		mv.addObject("detailSchedule", ds);


		mv.addObject("list",ar);
		mv.addObject("pager",pager);

		mv.setViewName("/info/main");
		return mv;
	}

	@GetMapping("detail")
	public ModelAndView getDetail(HttpServletRequest request, LicenseDTO licenseDTO, Pager pager) throws Exception{
		ModelAndView mv = new ModelAndView();

		int result = licenseService.setHits(licenseDTO);
		LicenseDTO name=licenseService.getLicenseName(licenseDTO);
		List<LicenseDTO> detailBook = licenseService.getDetailBook(licenseDTO);
		List<LicenseDTO> detailVideo = licenseService.getDetailVideo(licenseDTO);
		List<LicenseDTO> detailJob = licenseService.getDetailJob(licenseDTO);
		List<ScheduleDTO> detailSchedule = licenseService.getDetailSchedule(licenseDTO);

		//상세보기 게시판부분
		//		List<QnaDTO> ar = qnaService.getList(pager);
		//		mv.addObject("pager",pager);
		List<QnaDTO> ar = qnaService.getDetailList(pager);
		mv.addObject("pager",pager);

		mv.addObject("name",name);
		mv.addObject("detailBook",detailBook);
		mv.addObject("detailVideo",detailVideo);
		mv.addObject("detailJob",detailJob);
		mv.addObject("detailSchedule",detailSchedule);
		//상세보기 게시판부분
		//		mv.addObject("list",ar);
		mv.addObject("detailList",ar);

		mv.setViewName("/info/detail");
		
		HttpSession session =request.getSession();
		try {
			String grade = ((LicenseMembersDTO) session.getAttribute("check")).getAdminRoleDTOs().get(0).getRoleName();
			mv.addObject("grade",grade);			
		} catch (Exception e) {
		}

		return mv;	
	}
	@GetMapping("detailAjax")
	@ResponseBody
	public Map<String,Object> getDetailAjax(LicenseDTO licenseDTO) throws Exception{

		List<ScheduleDTO> ds = licenseService.getDetailSchedule(licenseDTO);
		List<LicenseDTO> db = licenseService.getDetailBook(licenseDTO);
		List<LicenseDTO> dv = licenseService.getDetailVideo(licenseDTO);
		List<LicenseDTO> dj = licenseService.getDetailJob(licenseDTO);

		Map<String,Object> map = new HashMap<String, Object>();
		map.put("ds", ds);
		map.put("db", db);
		map.put("dv", dv);
		map.put("dj", dj);
		return map;
	}


	@PostMapping(value = "setUpdate", produces = "application/text; charset=utf8")
	@ResponseBody
	public Map<String,Object> setUpdate(ArrDTO arrDTO) throws Exception{
		System.out.println(arrDTO.getSbvj());
		Map<String,Object> map = new HashMap<String, Object>();
		int result = licenseService.setUpdate(arrDTO);

		map.put("result", result);
		return map;
	}

	@GetMapping("add")
	public ModelAndView setAdd(LicenseDTO licenseDTO) throws Exception{
		ModelAndView mv = new ModelAndView();
		System.out.println(licenseDTO.getLicenseNum());

		mv.addObject("dto", licenseDTO);
		mv.setViewName("/info/add");
		return mv;
	}
	
	@PostMapping("setAdd")
	@ResponseBody
	public Map<String,Object> setAdd(ArrDTO arrDTO) throws Exception{
		Map<String,Object> map = new HashMap<String,Object>();
		int result = licenseService.setAdd(arrDTO);
		map.put("result", result);
		return map;
	}
	
	@PostMapping("setDel")
	@ResponseBody
	public Map<String,Object> setDel(ArrDTO arrDTO) throws Exception{
		Map<String,Object> map = new HashMap<String,Object>();

		int result = licenseService.setDel(arrDTO);
		map.put("result", result);
		return map;
	}

	//글추가
	@PostMapping("add")
	public ModelAndView setAdd(LicenseDTO licenseDTO, QnaDTO qnaDTO, MultipartFile [] files, HttpSession session)throws Exception {
		ModelAndView mv = new ModelAndView();
		System.out.println(licenseDTO.getLicenseNum());
		System.out.println(qnaDTO.getWriter());
		System.out.println(qnaDTO.getQnaNum());
		int result =qnaService.setAdd(qnaDTO,files,session.getServletContext());
		String message="글쓰기실패!!!";

		if(result > 0) {
			message="글쓰기완료!!!";
		}
		mv.addObject("result",result);
		mv.addObject("message",message);
		mv.addObject("url","detail?licenseNum="+licenseDTO.getLicenseNum());
		mv.setViewName("common/result");

		return mv;
	}

	@GetMapping("getScheduleAjax")
	@ResponseBody
	public Map<String,Object> getScheduleAjax(LicenseDTO licenseDTO) throws Exception{

		List<ScheduleDTO> sa = licenseService.getDetailSchedule(licenseDTO);

		Map<String,Object> map = new HashMap<String, Object>();
		map.put("sa", sa);
		return map;
	}
	
	
//	@PostMapping("setLicenseLike")
//	@ResponseBody
//	public Map<String,Object> setLicenseLike(LicenseDTO licenseDTO) throws Exception{
//		Map<String,Object> map = new HashMap<String,Object>();
//		int test = licenseService.setLicenseLike(licenseDTO);
//		map.put("test", test);
//	}
	
}
