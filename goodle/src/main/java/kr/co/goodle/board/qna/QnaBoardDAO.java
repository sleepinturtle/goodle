package kr.co.goodle.board.qna;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.goodle.util.dto.QnaBoardDTO;
import kr.co.goodle.util.dto.SearchDTO;

@Repository
public class QnaBoardDAO {


	@Autowired
	private SqlSession sqlSession;
	
	public int write( QnaBoardDTO dto) {
		int successCount = 0;
		successCount = sqlSession.insert("QnaBoardMapper.write", dto);
		System.out.println(successCount);
		
		return successCount;
	}//write

	public List<QnaBoardDTO> searchList( SearchDTO dto ) {
		List<QnaBoardDTO> list = null;
		list = sqlSession.selectList("QnaBoardMapper.selectList", dto);
		return list;
	}//searchList

	public int searchListCount( SearchDTO dto ) {
		int totalCount = 0;
		totalCount = sqlSession.selectOne("QnaBoardMapper.searchListCount", dto);
		return totalCount;
	}//searchListCount

	public QnaBoardDTO detail( String board_no ) {
		QnaBoardDTO dto = null;
		dto = sqlSession.selectOne("QnaBoardMapper.detail", board_no);
		return dto;
	}//detail
}
