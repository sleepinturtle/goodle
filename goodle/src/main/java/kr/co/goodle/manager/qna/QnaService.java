package kr.co.goodle.manager.qna;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import kr.co.goodle.util.dto.QnaBoardDTO;
import kr.co.goodle.util.dto.SearchDTO;

@Service
public class QnaService {

	@Autowired
	private QnaDAO dao;

	public int replyInsert(QnaBoardDTO dto) {
		int successCount = 0;
		successCount = dao.replyInsert( dto );
		return successCount;
	}

	public int write( QnaBoardDTO dto ) {
		int successCount = 0;
		successCount = dao.write( dto );
		return successCount;
	}//write
	
	public int update( QnaBoardDTO dto ) {
		int successCount = 0;
		successCount = dao.update( dto );
		return successCount;
	}//update

	public List<QnaBoardDTO> searchList( SearchDTO dto ) {
		List<QnaBoardDTO> list = null;
		list = dao.searchList( dto );
		return list;
	}//searchList

	public int searchListCount( SearchDTO dto ) {
		int totalCount = 0;
		totalCount = dao.searchListCount( dto );
		return totalCount;
	}//searchListCount

	public QnaBoardDTO detail( String board_no ) {

		QnaBoardDTO dto = null;
		dto = dao.detail( board_no );
		return dto;
	}//detail

}//class
