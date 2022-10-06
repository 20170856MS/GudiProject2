package com.iu.home.licenseList;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.iu.home.licenseQna.QnaDAO;
import com.iu.home.licenseQna.QnaDTO;
import com.iu.home.util.Pager;

@Service
public class LicenseService {

	@Autowired
	private LicenseDAO licenseDAO;

	@Autowired
	private QnaDAO qnaDAO;

	public List<LicenseDTO> getListLikes(LicenseLikeDTO licenseLikeDTO) throws Exception{
		return licenseDAO.getListLikes(licenseLikeDTO);
	}
	
	public int setLikes(ArrDTO arrDTO) throws Exception{
		return licenseDAO.setLikes(arrDTO);
	}
	public List<LicenseDTO> getList(Pager pager) throws Exception{
		Long totalCount = licenseDAO.getCount(pager);
		pager.getNum(totalCount);
		pager.getRowNum();

		return licenseDAO.getList(pager);
	}

	public Long getCount(Pager pager) throws Exception{
		return licenseDAO.getCount(pager);
	}
	public int setHits(LicenseDTO licenseDTO) throws Exception{
		return licenseDAO.setHits(licenseDTO);
	}

	public LicenseDTO getLicenseName(LicenseDTO licenseDTO) throws Exception{
		return licenseDAO.getLicenseName(licenseDTO);
	}

	public List<LicenseDTO> getDetailBook(LicenseDTO licenseDTO) throws Exception{

		return licenseDAO.getDetailBook(licenseDTO);
	}

	public List<LicenseDTO> getDetailVideo(LicenseDTO licenseDTO) throws Exception{

		return licenseDAO.getDetailVideo(licenseDTO);
	}

	public List<LicenseDTO> getDetailJob(LicenseDTO licenseDTO) throws Exception{

		return licenseDAO.getDetailJob(licenseDTO);
	}

	public List<ScheduleDTO> getDetailSchedule(LicenseDTO licenseDTO) throws Exception{

		return licenseDAO.getDetailSchedule(licenseDTO);
	}

	public int setAdd(QnaDTO qnaDTO) throws Exception {
		// TODO Auto-generated method stub
		int result = qnaDAO.setAdd(qnaDTO);

		return result;	
	}

	public int setUpdate(ArrDTO arrDTO) throws Exception{
		if(arrDTO.getSbvj().equals("s")) {			
			for(int i=0;i<arrDTO.getArr1().size();i++) {
				Long scheduleNum = licenseDAO.getScheduleNum(arrDTO).get(i).getScheduleNum();
				ScheduleDTO scheduleDTO = new ScheduleDTO();
				scheduleDTO.setScheduleNum(scheduleNum);
				scheduleDTO.setScheduleName(arrDTO.getArr1().get(i));
				scheduleDTO.setScheduleDate(arrDTO.getArr2().get(i));
				licenseDAO.setUpdateSchedule(scheduleDTO);
			}
		}else if(arrDTO.getSbvj().equals("b")) {//booknum,bookname,bookprice
			for(int i=0;i<arrDTO.getArr1().size();i++) {
				Long bookNum = licenseDAO.getBookNum(arrDTO).get(i).getBookNum();
				BookDTO bookDTO = new BookDTO();
				bookDTO.setBookNum(bookNum);
				bookDTO.setBookName(arrDTO.getArr1().get(i));
				bookDTO.setBookPrice(Long.parseLong(arrDTO.getArr2().get(i)));
				System.out.println(bookDTO.getBookNum());
				System.out.println(bookDTO.getBookName());
				System.out.println(bookDTO.getBookPrice());
				System.out.println("test1");
				licenseDAO.setUpdateBook(bookDTO);
			}
		}else if(arrDTO.getSbvj().equals("v")) {//videonum,videotitle,videolink
			for(int i=0;i<arrDTO.getArr1().size();i++) {
				Long videoNum = licenseDAO.getVideoNum(arrDTO).get(i).getVideoNum();
				VideoDTO videoDTO = new VideoDTO();
				videoDTO.setVideoNum(videoNum);
				videoDTO.setVideoTitle(arrDTO.getArr1().get(i));
				videoDTO.setVideoLink(arrDTO.getArr2().get(i));
				licenseDAO.setUpdateVideo(videoDTO);
			}
		}else if(arrDTO.getSbvj().equals("j")) {//jobnum,jobname,jobintro
			for(int i=0;i<arrDTO.getArr1().size();i++) {
				Long jobNum = licenseDAO.getJobNum(arrDTO).get(i).getJobNum();
				JobDTO jobDTO = new JobDTO();
				jobDTO.setJobNum(jobNum);

				System.out.println(i+arrDTO.getArr1().get(i));
				System.out.println(i+arrDTO.getArr2().get(i));

				jobDTO.setJobName(arrDTO.getArr1().get(i));
				jobDTO.setJobIntro(arrDTO.getArr2().get(i));

				System.out.println(i+jobDTO.getJobName());
				System.out.println(i+jobDTO.getJobIntro());

				licenseDAO.setUpdateJob(jobDTO);
			}
		}
		return 1;
	}
	
	public int setDel(ArrDTO arrDTO) throws Exception{
		if(arrDTO.getSbvj().equals("s")) {
			for(int i=0;i<arrDTO.getArr1().size();i++) {
				ScheduleDTO scheduleDTO = new ScheduleDTO();
				scheduleDTO.setScheduleName(arrDTO.getArr1().get(i));
				scheduleDTO.setScheduleDate(arrDTO.getArr2().get(i));
				licenseDAO.setDelSchedule(scheduleDTO);
			}
		}else if(arrDTO.getSbvj().equals("b")) {
			for(int i=0;i<arrDTO.getArr1().size();i++) {
				BookDTO bookDTO = new BookDTO();
				bookDTO.setBookName(arrDTO.getArr1().get(i));
				bookDTO.setBookPrice(Long.parseLong(arrDTO.getArr2().get(i)));
				licenseDAO.setDelBook(bookDTO);
			}
		}else if(arrDTO.getSbvj().equals("v")) {
			for(int i=0;i<arrDTO.getArr1().size();i++) {
				VideoDTO videoDTO = new VideoDTO();
				videoDTO.setVideoTitle(arrDTO.getArr1().get(i));
				videoDTO.setVideoLink(arrDTO.getArr2().get(i));

				licenseDAO.setDelVideo(videoDTO);
			}
		}else if(arrDTO.getSbvj().equals("j")) {
			for(int i=0;i<arrDTO.getArr1().size();i++) {
				JobDTO jobDTO = new JobDTO();
				jobDTO.setJobName(arrDTO.getArr1().get(i));
				jobDTO.setJobIntro(arrDTO.getArr2().get(i));
				licenseDAO.setDelJob(jobDTO);
			}
		}
		return 0;
	}
	public int setAdd(ArrDTO arrDTO) throws Exception{
		if(arrDTO.getSbvj().equals("s")) {
			for(int i=0;i<arrDTO.getArr1().size();i++) {
				ScheduleDTO scheduleDTO = new ScheduleDTO();
				scheduleDTO.setScheduleName(arrDTO.getArr1().get(i));
				scheduleDTO.setScheduleDate(arrDTO.getArr2().get(i));
				licenseDAO.setAddSchedule(scheduleDTO);
				Long scheduleNum = licenseDAO.getScheduleNumSeq(scheduleDTO);
				arrDTO.setScheduleNum(scheduleNum);
				licenseDAO.setScheduleLink(arrDTO);
			}
		}else if(arrDTO.getSbvj().equals("b")) {//booknum,bookname,bookprice
			for(int i=0;i<arrDTO.getArr1().size();i++) {
				BookDTO bookDTO = new BookDTO();
				bookDTO.setBookName(arrDTO.getArr1().get(i));
				bookDTO.setBookPrice(Long.parseLong(arrDTO.getArr2().get(i)));
				System.out.println(bookDTO.getBookName());
				System.out.println(bookDTO.getBookPrice());
				System.out.println("test1");
				licenseDAO.setAddBook(bookDTO);
				System.out.println("test2");
				Long bookNum = licenseDAO.getBookNumSeq(bookDTO);
				arrDTO.setBookNum(bookNum);
				licenseDAO.setBookLink(arrDTO);				
			}
		}else if(arrDTO.getSbvj().equals("v")) {//videonum,videotitle,videolink
			for(int i=0;i<arrDTO.getArr1().size();i++) {
				VideoDTO videoDTO = new VideoDTO();
				videoDTO.setVideoTitle(arrDTO.getArr1().get(i));
				videoDTO.setVideoLink(arrDTO.getArr2().get(i));
				licenseDAO.setAddVideo(videoDTO);
				Long videoNum = licenseDAO.getVideoNumSeq(videoDTO);
				arrDTO.setVideoNum(videoNum);
				licenseDAO.setVideoLink(arrDTO);
			}
		}else if(arrDTO.getSbvj().equals("j")) {//jobnum,jobname,jobintro
			for(int i=0;i<arrDTO.getArr1().size();i++) {
				JobDTO jobDTO = new JobDTO();
				jobDTO.setJobName(arrDTO.getArr1().get(i));
				jobDTO.setJobIntro(arrDTO.getArr2().get(i));
				licenseDAO.setAddJob(jobDTO);
				Long jobNum = licenseDAO.getJobNumSeq(jobDTO);
				arrDTO.setJobNum(jobNum);
				licenseDAO.setJobLink(arrDTO);
			}
		}
		return 1;
		}
	

}
