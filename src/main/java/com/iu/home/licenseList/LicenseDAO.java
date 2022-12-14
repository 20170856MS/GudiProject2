package com.iu.home.licenseList;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.iu.home.util.Pager;



@Repository
public class LicenseDAO {

	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE = "com.iu.home.licenseList.LicenseDAO.";

	
	
	public int setLikes(ArrDTO arrDTO) throws Exception{
		return sqlSession.insert(NAMESPACE+"setLikes",arrDTO);
	}
	
	public List<LicenseDTO> getListLikes(LicenseLikeDTO licenseLikeDTO) throws Exception{
		return sqlSession.selectList(NAMESPACE+"getListLikes",licenseLikeDTO);
	}
	public List<LicenseDTO> getList(Pager pager) throws Exception{
		return sqlSession.selectList(NAMESPACE+"getList",pager);
	}

	public Long getCount(Pager pager) throws Exception{
		return sqlSession.selectOne(NAMESPACE+"getCount",pager);
	}
	public int setHits(LicenseDTO licenseDTO) throws Exception{
		return sqlSession.update(NAMESPACE+"setHits",licenseDTO);
	}
	public LicenseDTO getLicenseName(LicenseDTO licenseDTO) throws Exception{
		return sqlSession.selectOne(NAMESPACE+"getLicenseName",licenseDTO);
	}

	public List<LicenseDTO> getDetailBook(LicenseDTO licenseDTO) throws Exception{
		return sqlSession.selectList(NAMESPACE+"getDetailBook",licenseDTO);
	}

	public List<LicenseDTO> getDetailVideo(LicenseDTO licenseDTO) throws Exception{
		return sqlSession.selectList(NAMESPACE+"getDetailVideo",licenseDTO);	
	}

	public List<LicenseDTO> getDetailJob(LicenseDTO licenseDTO) throws Exception{
		return sqlSession.selectList(NAMESPACE+"getDetailJob",licenseDTO);	
	}

	public List<ScheduleDTO> getDetailSchedule(LicenseDTO licenseDTO) throws Exception{
		return sqlSession.selectList(NAMESPACE+"getDetailSchedule",licenseDTO);	
	}

	public int setUpdateSchedule(ScheduleDTO scheduleDTO) throws Exception{
		return sqlSession.update(NAMESPACE+"setUpdateSchedule",scheduleDTO);
	}
	public int setUpdateBook(BookDTO bookDTO) throws Exception{
		System.out.println("test2");
		return sqlSession.update(NAMESPACE+"setUpdateBook",bookDTO);
	}
	public int setUpdateVideo(VideoDTO videoDTO) throws Exception{
		return sqlSession.update(NAMESPACE+"setUpdateVideo",videoDTO);
	}
	public int setUpdateJob(JobDTO jobDTO) throws Exception{
		return sqlSession.update(NAMESPACE+"setUpdateJob",jobDTO);
	}
	
	public int setAddSchedule(ScheduleDTO scheduleDTO) throws Exception{
		return sqlSession.insert(NAMESPACE+"setAddSchedule",scheduleDTO);
	}
	public int setAddBook(BookDTO bookDTO) throws Exception{
		return sqlSession.insert(NAMESPACE+"setAddBook",bookDTO);
	}
	public int setAddVideo(VideoDTO videoDTO) throws Exception{
		return sqlSession.insert(NAMESPACE+"setAddVideo",videoDTO);
	}
	public int setAddJob(JobDTO jobDTO) throws Exception{
		return sqlSession.insert(NAMESPACE+"setAddJob",jobDTO);
	}
	
	
	public List<ArrDTO> getScheduleNum(ArrDTO arrDTO) throws Exception{
		return sqlSession.selectList(NAMESPACE+"getScheduleNum",arrDTO);
	}
	public List<ArrDTO> getBookNum(ArrDTO arrDTO) throws Exception{
		return sqlSession.selectList(NAMESPACE+"getBookNum",arrDTO);
	}
	public List<ArrDTO> getVideoNum(ArrDTO arrDTO) throws Exception{
		return sqlSession.selectList(NAMESPACE+"getVideoNum",arrDTO);
	}
	public List<ArrDTO> getJobNum(ArrDTO arrDTO) throws Exception{
		return sqlSession.selectList(NAMESPACE+"getJobNum",arrDTO);
	}
	
	public Long getScheduleNumSeq(ScheduleDTO scheduleDTO) throws Exception{
		return sqlSession.selectOne(NAMESPACE+"getScheduleNumSeq",scheduleDTO);
	}
	public int setScheduleLink(ArrDTO arrDTO) throws Exception{
		return sqlSession.insert(NAMESPACE+"setScheduleLink",arrDTO);
	}
	
	public Long getBookNumSeq(BookDTO bookDTO) throws Exception{
		return sqlSession.selectOne(NAMESPACE+"getBookNumSeq",bookDTO);
	}
	public int setBookLink(ArrDTO arrDTO) throws Exception{
		return sqlSession.insert(NAMESPACE+"setBookLink",arrDTO);
	}
	
	public Long getVideoNumSeq(VideoDTO videoDTO) throws Exception{
		return sqlSession.selectOne(NAMESPACE+"getVideoNumSeq",videoDTO);
	}
	public int setVideoLink(ArrDTO arrDTO) throws Exception{
		return sqlSession.insert(NAMESPACE+"setVideoLink",arrDTO);
	}
	
	public Long getJobNumSeq(JobDTO jobDTO) throws Exception{
		return sqlSession.selectOne(NAMESPACE+"getJobNumSeq",jobDTO);
	}
	public int setJobLink(ArrDTO arrDTO) throws Exception{
		return sqlSession.insert(NAMESPACE+"setJobLink",arrDTO);
	}
	
	public int setDelSchedule(ScheduleDTO scheduleDTO)throws Exception{
		return sqlSession.delete(NAMESPACE+"setDelSchedule",scheduleDTO);
	}
	public int setDelBook(BookDTO bookDTO)throws Exception{
		return sqlSession.delete(NAMESPACE+"setDelBook",bookDTO);
	}
	public int setDelVideo(VideoDTO videoDTO)throws Exception{
		System.out.println(videoDTO.getVideoTitle());
		System.out.println(videoDTO.getVideoLink());
		return sqlSession.delete(NAMESPACE+"setDelVideo",videoDTO);
	}
	public int setDelJob(JobDTO jobDTO)throws Exception{
		return sqlSession.delete(NAMESPACE+"setDelJob",jobDTO);
	}
	public int setDelLikes(ArrDTO arrDTO)throws Exception{
		return sqlSession.delete(NAMESPACE+"setDelLikes",arrDTO);
	}
}
