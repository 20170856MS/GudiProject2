package com.iu.home.licenseadmin;



import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class AdminDAO {

	@Autowired
	private SqlSession sqlSession;
	
	private final String NAMESPACE="com.iu.home.licenseadmin.AdminDAO.";
	
	
	public int orderCancle(Long orderNum) {
		
		return sqlSession.delete(NAMESPACE+"orderCancle",orderNum);
	}
	
	
	public AdminDTO adminList(AdminDTO adminDTO) throws Exception {
		
		return sqlSession.selectOne(NAMESPACE+"adminList", adminDTO);
	}
	
	public int setUpdateRole(AdminRolesDTO adminRoleDTO) {
		
		return sqlSession.update(NAMESPACE+"setUpdateRole", adminRoleDTO);
	}

	
	public int payMentCancle(Long orderNum) {
		
		return sqlSession.delete(NAMESPACE+"payMentCancle", orderNum);
	}
}
