package com.iu.home;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.iu.home.util.Pager;

@Service
public class HomeService {
	
	@Autowired
	private HomeDAO homeDAO;
	
	public List<HomeDTO> getList(Pager pager) throws Exception{
		Long totalCount = homeDAO.getCount(pager);
		pager.getNum(totalCount);
		pager.getRowNum();
		
		return homeDAO.getList(pager);
	}
	
	public List<HomeDTO> getTopList(Pager pager) throws Exception{
		Long totalCount = homeDAO.getCount(pager);
		pager.getNum(totalCount);
		pager.getRowNum();
		
		return homeDAO.getTopList(pager);
	}
	public Long getCount(Pager pager) throws Exception{
		return homeDAO.getCount(pager);
	}
	public int setHits(HomeDTO homeDTO) throws Exception{
		return homeDAO.setHits(homeDTO);
	}
	
	public HomeDTO getLicenseName(HomeDTO homeDTO) throws Exception{
		return homeDAO.getLicenseName(homeDTO);
	}
	
	public List<HomeDTO> getDetailBook(HomeDTO homeDTO) throws Exception{
		
		return homeDAO.getDetailBook(homeDTO);
	}
	
	public List<HomeDTO> getDetailVideo(HomeDTO homeDTO) throws Exception{
		
		return homeDAO.getDetailVideo(homeDTO);
	}
	
	public List<HomeDTO> getDetailJob(HomeDTO homeDTO) throws Exception{
		
		return homeDAO.getDetailJob(homeDTO);
	}
	
	public List<HomeDTO> getDetailSchedule() throws Exception{
		
		return homeDAO.getDetailSchedule();
	}

	public List<HomeDTO> getDetailSchedule1() throws Exception {
		// TODO Auto-generated method stub
		return homeDAO.getDetailSchedule1();
	}
		
}
