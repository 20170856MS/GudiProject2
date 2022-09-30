package com.iu.home.licenseList;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.iu.home.licenseQna.QnaDTO;
import com.iu.home.util.Pager;



@Repository
public class LicenseDAO {

	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE = "com.iu.home.licenseList.LicenseDAO.";

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
		return sqlSession.update(NAMESPACE+"setUpdateBook",bookDTO);
	}
	public int setUpdateVideo(VideoDTO videoDTO) throws Exception{
		return sqlSession.update(NAMESPACE+"setUpdateVideo",videoDTO);
	}
	public int setUpdateJob(JobDTO jobDTO) throws Exception{
		return sqlSession.update(NAMESPACE+"setUpdateJob",jobDTO);
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
}
