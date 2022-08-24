package kr.co.goodle.basket;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.goodle.manager.recipe.RecipeDTO;

@Service
public class BasketService {

	@Autowired
	private BasketDAO dao;

	public int delete( RecipeDTO dto ) {
		int successCount = 0;
		successCount = dao.delete( dto );
		return successCount;
	}//delete

	public List<RecipeDTO> list(String mem_no) {
		List<RecipeDTO> list = null;
		list = dao.list(mem_no);
		return list;
	}//list

	public int insert( RecipeDTO dto ) {
		int successCount = 0;
		successCount = dao.insert(dto);
		return successCount;
	}//insert

}//class
