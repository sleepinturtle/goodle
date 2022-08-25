package kr.co.goodle.manager.qna;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


import kr.co.goodle.util.dto.QnaBoardDTO;
import kr.co.goodle.util.dto.SearchDTO;

@Repository
public class QnaDAO {


	@Autowired
	private SqlSession sqlSession;

	public int replyInsert(QnaBoardDTO dto) {
		int successCount = 0;
		successCount = sqlSession.insert("ManageQnaMapper.replyInsert", dto);
		return successCount;
	}

	public int update( QnaBoardDTO dto ) {
		int successCount = 0;
		successCount = sqlSession.update("ManageQnaMapper.update", dto);
		return successCount;
	}//update
	
	public int write( QnaBoardDTO dto) {
		int successCount = 0;
		successCount = sqlSession.insert("ManageQnaMapper.write", dto);
		System.out.println(successCount);
		
		return successCount;
	}//write

	public List<QnaBoardDTO> searchList( SearchDTO dto ) {
		List<QnaBoardDTO> list = null;
		list = sqlSession.selectList("ManageQnaMapper.selectList", dto);
		return list;
	}//searchList

	public int searchListCount( SearchDTO dto ) {
		int totalCount = 0;
		totalCount = sqlSession.selectOne("ManageQnaMapper.searchListCount", dto);
		return totalCount;
	}//searchListCount

	public QnaBoardDTO detail( String board_no ) {
		QnaBoardDTO dto = null;
		dto = sqlSession.selectOne("ManageQnaMapper.detail", board_no);
		return dto;
	}//detail

}//class
