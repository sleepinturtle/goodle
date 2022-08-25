package kr.co.goodle.manager.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.goodle.util.dto.SearchDTO;
import kr.co.goodle.util.dto.MemberDTO;




@Service
public class MemberService {
	@Autowired MemberDAO dao;
	
	public int replyInsert(MemberDTO dto) {
		System.out.println(333333);
		int successCount = 0;
		successCount = dao.replyInsert( dto );
		System.out.println(244444);
		return successCount;
	}

	public MemberDTO detail( String mem_no ) {
		MemberDTO dto = null;
		dto = dao.detail( mem_no );
		return dto;
	}//detail
	
	public List<MemberDTO> searchList( SearchDTO dto ) {
		List<MemberDTO> list = null;
		list = dao.searchList( dto );
		return list;
	}//searchList

	public int searchListCount( SearchDTO dto ) {
		int totalCount = 0;
		totalCount = dao.searchListCount( dto );
		return totalCount;
	}//searchListCount
	
	

} 
