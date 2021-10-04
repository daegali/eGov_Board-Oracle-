package main.service.Impl;

import org.springframework.stereotype.Repository;

import egovframework.rte.psl.dataaccess.EgovAbstractDAO;
import main.service.BoardVO;

@Repository("boardDAO")
public class BoardDAO extends EgovAbstractDAO{

	public String insertBoard( BoardVO vo ) throws Exception {		
		return (String) insert("boardDAO.insertBoard",vo);
	}
		
}
