package main.service.Impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import main.service.UserService;
import main.service.UserVO;

@Service("userService")
public class UserServiceImpl implements UserService {
	
		@Resource(name="userDAO")
		public UserDAO userDAO;
	
	/*
	 * 회원등록처리 (save)
	 */
	@Override // Override 객체지향의 다형성(오버라이딩, 오버로딩)
	public String insertUser( UserVO vo ) throws Exception {
		return userDAO.insertUser(vo);
	}
	/*
	 * 아이디 중복 처리
	 */
	@Override
	public int selectUserIdCheck(String userid) throws Exception {
		return userDAO.selectUserIdCheck(userid);
	}

}
