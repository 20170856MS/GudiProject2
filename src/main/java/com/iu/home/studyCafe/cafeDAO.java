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
	
	
	public List<ReservationDTO> getSeTimeCheck(ReservationDTO reservationDTO) throws Exception{
		return sqlSession.selectList(NAMESPACE+"getSeTimeCheck", reservationDTO);
	}
	
	public int updateSit(CafeRoomDTO cafeRoomDTO) throws Exception{
		return sqlSession.update(NAMESPACE+"updateSit", cafeRoomDTO);
	}
	public int updateDetail(CafeDetailDTO cafeDetailDTO) throws Exception{
		return sqlSession.update(NAMESPACE+"updateDetail", cafeDetailDTO);
	}
	
	public List<AreaDTO> areaList() throws Exception{
		return sqlSession.selectList(NAMESPACE+"areaList");
	}
	public int addList(CafeDTO cafeDTO) throws Exception{
		return sqlSession.insert(NAMESPACE+"addList", cafeDTO);
	}
	
}
