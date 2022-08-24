package kr.co.goodle.basket;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.goodle.manager.recipe.RecipeDTO;

@Repository
public class BasketDAO {

	@Autowired
	private SqlSession sqlSession;

	public int delete( RecipeDTO dto ) {
		int successCount = 0;
		successCount = sqlSession.delete("BasketMapper.delete", dto);
		return successCount;
	}//delete

	public List<RecipeDTO> list(String mem_no) {
		List<RecipeDTO> list = null;
		list = sqlSession.selectList("BasketMapper.list", mem_no);
		return list;
	}//list

	public int insert(RecipeDTO dto) {
		int successCount = 0;
		successCount = sqlSession.insert("BasketMapper.insert", dto);
		return successCount;
	}//insert

}//class
