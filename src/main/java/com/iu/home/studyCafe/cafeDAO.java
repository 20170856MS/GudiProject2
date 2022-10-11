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
	
	public List<cafeDTO> getList() throws Exception{
		return sqlSession.selectList(NAMESPACE+"getList");
	}
	
	public cafeDetailDTO getDetail(cafeDTO cafeDTO) throws Exception{
		return sqlSession.selectOne(NAMESPACE+"getDetail", cafeDTO);
	}
	
	public List<cafeRoomDTO> getRoomList(cafeDetailDTO cafeDetailDTO) throws Exception{
		return sqlSession.selectList(NAMESPACE+"getRoomList", cafeDetailDTO);
	}

	public int addDate(reservationDTO reservationDTO) throws Exception{
		return sqlSession.insert(NAMESPACE+"addDate", reservationDTO);
	}
	
	public List<reListDTO> getReList(Long reserNum) throws Exception{
		return sqlSession.selectList(NAMESPACE+"getReList", reserNum);
	}
	
	
	public int updateDetail(cafeDetailDTO cafeDetailDTO) throws Exception{
		return sqlSession.update(NAMESPACE+"updateDetail", cafeDetailDTO);
	}
	
}
