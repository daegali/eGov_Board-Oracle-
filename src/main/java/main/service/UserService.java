package main.service;

import java.util.List;

public interface UserService {
		
		/*
		 * 회원등록처리 (save)
		 */
		public String insertUser( UserVO vo ) throws Exception;
		
		/*
		 * 아이디 중복 체크
		 */
		public int selectUserIdCheck( String userid ) throws Exception;
		
		/*
		 * 우편번호(주소) 검색
		 */
		public List<?> selectPostList(String dong) throws Exception;
}	
