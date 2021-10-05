package main.service;

import java.util.List;

public interface BoardService {
		
			public String insertBoard( BoardVO vo ) throws Exception;
			
			//  게시판 화면 목록
			public List<?> selectBoardList( BoardVO vo ) throws Exception;
			
			// Total 개수 얻기
			public int selectBoardTotal( BoardVO vo ) throws Exception;
			
			// 게시판 상세보기
			public BoardVO selectBoardDetail( int unq ) throws Exception; 
			
			// 조회수 증가
			public int updateBoardHits( int unq ) throws Exception;
}
