package kr.co.goodle.manager.recipe;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.goodle.util.dto.MemberDTO;
import kr.co.goodle.util.dto.SearchDTO;



@Service
public class RecipeService {

	@Autowired
	private RecipeDAO dao;

	public int update( RecipeDTO dto ) {
		int successCount = 0;
		successCount = dao.update( dto );
		return successCount;
	}//update

	public int delete( RecipeDTO dto ) {
		int successCount = 0;
		successCount = dao.delete( dto );
		return successCount;
	}//delete

	
	public RecipeDTO detail( String rcp_no ) {
		RecipeDTO dto = null;
		dto = dao.detail(rcp_no);
		return dto;
	}//detail

	public int write( RecipeDTO dto ) {
		int successCount = 0;
		successCount = dao.write( dto );
		return successCount;
	}//write

	public List<RecipeDTO> searchList( SearchDTO dto ) {
		List<RecipeDTO> list = null;
		list = dao.searchList( dto );
		return list;
	}//searchList

	public int searchListCount( SearchDTO dto ) {
		int totalCount = 0;
		totalCount = dao.searchListCount( dto );
		return totalCount;
	}//searchListCount

}//class
