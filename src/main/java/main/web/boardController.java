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
		return "board/main";
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
		
		int pageNum=3;
		// 페이징 처리
		// 총 데이터 개수
		int total = boardService.selectBoardTotal(vo);
		// total 페이지 얻기
		int totalPage = (int) Math.ceil( (double)total/pageNum );
		// viewPage 가져오기
		int viewPage = vo.getViewPage();
		
		// 사용자의 페이지 조작을 제어
		if (viewPage > totalPage || viewPage < 1) {
			 viewPage = 1 ;
		}
		
		// 사용자가 1 -> 클릭 1,3 // 2 -> 4,6
		// startIndex = (1-1) *3 +1
		// endIndex = (2-1)*3 + 1
		int startIndex = (viewPage - 1) * pageNum + 1;
		int endIndex = startIndex + (pageNum - 1) ;
		// total - > 5
		// 1p -> 5, 2-> 2
		// 역순 정렬
		int startRowNo =  total - (viewPage-1) *pageNum;
			
		vo.setStartIndex(startIndex);
		vo.setEndIndex(endIndex);
				
		List<?> list = boardService.selectBoardList(vo);
		System.out.println("BoardList: " + list);
		
		model.addAttribute("resultList", list);
		model.addAttribute("total", total);
		model.addAttribute("totalPage",totalPage);
		model.addAttribute("rowNum",startRowNo);
		
		return "board/boardList";
	}
	
	@RequestMapping("/boardDetail.do")
	public String selectBoardDetailView( BoardVO vo, ModelMap model ) throws Exception {
		
		// 조회수 처리
		boardService.updateBoardHits(vo.getUnq());
		
		BoardVO boardVO = boardService.selectBoardDetail(vo.getUnq());
		
		// Java에서 줄바꿈 적용하기
		String content = boardVO.getContent(); 
		boardVO.setContent(content.replace("\n", "<br>"));
		
		model.addAttribute("boardDetail", boardVO);
		return "board/boardDetail";
		
	}
		
}
