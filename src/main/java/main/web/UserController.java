package main.web;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import main.service.UserService;
import main.service.UserVO;

@Controller
public class UserController {
		
	
		@Resource(name = "userService")
		private UserService userService;
	
		/*
		 * 회원등록화면
		 */
		@RequestMapping("/userWrite.do")
		public String userWrite() {
			return "user/userWrite";	
		}
		
		/*
		 * 회원등록처리 (저장)
		 */
		@RequestMapping("/userWriteSave.do")
		@ResponseBody
		public String insertUser( UserVO vo ) throws Exception {
			
			String msg = "";
			String result = userService.insertUser(vo);
			System.out.println("result: " + result);
			// String result = null; (성공)
			if(result == null) {
				msg="ok";
			}
			return msg;
		}
		
		/*
		 * 아이디 중복 체크
		 */
		@RequestMapping("/idcheck.do")
		@ResponseBody
		public String selectUserIdCheck(String userid) throws Exception {
			
			String msg = "";
			int count = userService.selectUserIdCheck(userid);
			if (count == 0) {
				msg="ok";
			}
			return msg;
		}
		
}
