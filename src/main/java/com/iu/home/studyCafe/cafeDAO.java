package com.iu.home.studyCafe;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class cafeDAO {
	
	@Autowired
	private SqlSession sqlSession;
	private final String NAMESPACE="com.iu.home.studyCafe.cafeDAO.";
	
	public List<CafeDTO> getList() throws Exception{
		return sqlSession.selectList(NAMESPACE+"getList");
	}
	
	public CafeDetailDTO getDetail(CafeDTO cafeDTO) throws Exception{
		return sqlSession.selectOne(NAMESPACE+"getDetail", cafeDTO);
	}
	
	public List<CafeRoomDTO> getRoomList(CafeDetailDTO cafeDetailDTO) throws Exception{
		return sqlSession.selectList(NAMESPACE+"getRoomList", cafeDetailDTO);
	}

	public int addDate(ReservationDTO reservationDTO) throws Exception{
		return sqlSession.insert(NAMESPACE+"addDate", reservationDTO);
	}
	
	public List<ReListDTO> getReList(Long reserNum) throws Exception{
		return sqlSession.selectList(NAMESPACE+"getReList", reserNum);
	}
	
	
	public List<ReservationDTO> getSeTimeCheck(String seDate) throws Exception{
		return sqlSession.selectList(NAMESPACE+"getSeTimeCheck", seDate);
	}
	
	public int updateSit(CafeRoomDTO cafeRoomDTO) throws Exception{
		return sqlSession.update(NAMESPACE+"updateSit", cafeRoomDTO);
	}
	
}
