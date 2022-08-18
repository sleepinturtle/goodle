package kr.co.goodle.manager.member;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.goodle.util.dto.SearchDTO;



@Repository
public class MemberDAO {
	
	@Autowired
	private SqlSession sqlSession;
	
	
	public MemberDTO detail( String mem_no ) {
		MemberDTO dto = null;
		dto = sqlSession.selectOne("ManageMemberMapper.detail", mem_no);
		return dto;
	}//detail
	
	public List<MemberDTO> searchList( SearchDTO dto ) {
		List<MemberDTO> list = null;
		list = sqlSession.selectList("ManageMemberMapper.selectList", dto);
		return list;
	}//searchList

	public int searchListCount( SearchDTO dto ) {
		int totalCount = 0;
		totalCount = sqlSession.selectOne("ManageMemberMapper.searchListCount", dto);
		return totalCount;
	}//searchListCount

}
