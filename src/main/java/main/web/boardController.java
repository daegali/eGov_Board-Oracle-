package main.web;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import main.service.BoardService;
import main.service.BoardVO;

@Controller
public class boardController {
	
	@Resource(name="boardService")
	private BoardService boardService;
	
	@RequestMapping("/boardWrite.do")
	public String boardWrite() {
		return "board/boardWrite";
	}
	
	@RequestMapping("/boardWriteSave.do")
	@ResponseBody
	public String insertBoard( BoardVO vo) throws Exception {
		
		// ajax에 결과값을 전달해줘야 한다.
		
		// result값은 정상 실행 시 == null;
		String result = boardService.insertBoard(vo);
		String msg = "";
		if( result == null ) {
			System.out.println("저장완료");
			msg="ok";
		}else {
			msg="fail";
		}
		return msg;
	}
	
	@RequestMapping("/boardList.do")
	public String selectBoardList( BoardVO vo, ModelMap model ) throws Exception {
		
		List<?> list = boardService.selectBoardList(vo);
		System.out.println("BoardList: " + list);
		model.addAttribute("resultList", list);
		return "board/boardWrite";
	}
	
}
