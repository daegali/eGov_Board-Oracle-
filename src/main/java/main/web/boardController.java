package main.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class boardController {
	
	@RequestMapping("/boardWrite.do")
	public String boardWrite() {
		return "board/boardWrite";
	}
}
