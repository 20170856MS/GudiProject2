package com.iu.home;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.iu.home.util.Pager;

@Repository
public class HomeDAO {

	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE = "com.iu.home.HomeDAO.";

	public List<HomeDTO> getList(Pager pager1) throws Exception{
		return sqlSession.selectList(NAMESPACE+"getList",pager1);
	}
	public List<HomeDTO> getTopList(Pager pager) throws Exception{
		return sqlSession.selectList(NAMESPACE+"getTopList",pager);
	}
	public Long getCount(Pager pager) throws Exception{
		return sqlSession.selectOne(NAMESPACE+"getCount",pager);
	}
	public int setHits(HomeDTO homeDTO) throws Exception{
		return sqlSession.update(NAMESPACE+"setHits",homeDTO);
	}
	public HomeDTO getLicenseName(HomeDTO homeDTO) throws Exception{
		return sqlSession.selectOne(NAMESPACE+"getLicenseName",homeDTO);
	}

	public List<HomeDTO> getDetailBook(HomeDTO homeDTO) throws Exception{
		return sqlSession.selectList(NAMESPACE+"getDetailBook",homeDTO);
	}

	public List<HomeDTO> getDetailVideo(HomeDTO homeDTO) throws Exception{
		return sqlSession.selectList(NAMESPACE+"getDetailVideo",homeDTO);	
	}

	public List<HomeDTO> getDetailJob(HomeDTO homeDTO) throws Exception{
		return sqlSession.selectList(NAMESPACE+"getDetailJob",homeDTO);	
	}

	public List<HomeDTO> getDetailSchedule() throws Exception{
		return sqlSession.selectList(NAMESPACE+"getDetailSchedule");	
	}
		public List<HomeDTO> getDetailSchedule1() throws Exception{
		return sqlSession.selectList(NAMESPACE+"getDetailSchedule1");	
	}

}
