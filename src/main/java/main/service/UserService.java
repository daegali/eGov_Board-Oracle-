package main.service;

public interface UserService {
		
		/*
		 * 회원등록처리 (save)
		 */
		public String insertUser( UserVO vo ) throws Exception;
		
		/*
		 * 아이디 중복 체크
		 */
		public int selectUserIdCheck( String userid ) throws Exception;
}
