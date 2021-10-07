package main.service.Impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import egovframework.rte.psl.dataaccess.EgovAbstractDAO;
import main.service.UserVO;

@Repository("userDAO")
public class UserDAO extends EgovAbstractDAO {
	
	/*
	 * 회원등록처리 (save)
	 */
	public String insertUser( UserVO vo ) throws Exception {
		return (String) insert("userDAO.insertUser", vo);
	}
	
	/*
	 * 아이디 중복 체크
	 */
	public int selectUserIdCheck(String userid) {
		return (int) select("userDAO.selectUserIdCheck", userid);
	}
	
	/*
	 * 우편번호(주소) 검색
	 */
	public List<?> selectPostList(String dong) {
		return (List<?>) list("userDAO.selectPostLIst", dong);
	}


}
