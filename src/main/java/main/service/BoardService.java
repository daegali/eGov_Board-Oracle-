package main.service;

import java.util.List;

public interface BoardService {
		
			public String insertBoard( BoardVO vo ) throws Exception;
			
			//  게시판 화면 목록
			public List<?> selectBoardList( BoardVO vo ) throws Exception;
}
