package kr.co.goodle.manager.recipe;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.goodle.util.dto.SearchDTO;



@Service
public class RecipeService {
	@Autowired RecipeDAO dao;
	
	public RecipeDTO detail( String mem_no ) {
		RecipeDTO dto = null;
		dto = dao.detail(mem_no);
		return dto;
	}//detail
	
	public List<RecipeDTO> searchList( SearchDTO dto ) {
		List<RecipeDTO> list = null;
		list = dao.searchList(dto);
		return list;
	}//searchList

	public int searchListCount( SearchDTO dto ) {
		int totalCount = 0;
		totalCount = dao.searchListCount( dto );
		return totalCount;
	}//searchListCount
	
	

} 
