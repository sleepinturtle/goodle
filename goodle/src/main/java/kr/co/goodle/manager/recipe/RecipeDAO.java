package kr.co.goodle.manager.recipe;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.goodle.manager.recipe.RecipeDTO;
import kr.co.goodle.util.dto.SearchDTO;

@Repository		
public class RecipeDAO {
	
@Autowired
private SqlSession sqlSession;

public RecipeDTO detail( String rcp_no ) {
	RecipeDTO dto = null;
	dto = sqlSession.selectOne("ManageRecipeMapper.detail", rcp_no);
	return dto;
}//detail

public List<RecipeDTO> searchList( SearchDTO dto ) {
	List<RecipeDTO> list = null;
	list = sqlSession.selectList("ManageRecipeMapper.selectList", dto);
	return list;
}//searchList

public int searchListCount( SearchDTO dto ) {
	int totalCount = 0;
	totalCount = sqlSession.selectOne("ManageRecipeMapper.searchListCount", dto);
	return totalCount;
}//searchListCount

}
