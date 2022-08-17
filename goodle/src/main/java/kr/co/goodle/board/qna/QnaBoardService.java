package kr.co.goodle.board.qna;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.goodle.util.dto.QnaBoardDTO;
import kr.co.goodle.util.dto.SearchDTO;

@Service
public class QnaBoardService {

	@Autowired
	private QnaBoardDAO dao;
	
	public int write( QnaBoardDTO dto ) {
		int successCount = 0;
		successCount = dao.write( dto );
		return successCount;
	}//write
	
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
}
