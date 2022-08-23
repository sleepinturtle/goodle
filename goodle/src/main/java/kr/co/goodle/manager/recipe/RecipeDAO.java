package kr.co.goodle.manager.recipe;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.goodle.util.dto.SearchDTO;



@Repository
public class RecipeDAO {

	@Autowired
	private SqlSession sqlSession;

	public int update( RecipeDTO dto ) {
		int successCount = 0;
		successCount = sqlSession.update("ManageRecipeMapper.update", dto);
		return successCount;
	}//update

	public int delete( RecipeDTO dto ) {
		int successCount = 0;
		successCount = sqlSession.delete("ManageRecipeMapper.delete", dto);
		return successCount;
	}//delete


	public RecipeDTO detail( String rcp_no ) {
		RecipeDTO dto = null;
		System.out.println(rcp_no);
		dto = sqlSession.selectOne("ManageRecipeMapper.detail", rcp_no);
		return dto;
	}//detail

	public int write( RecipeDTO dto) {
		int successCount = 0;
		System.out.println(dto);
		successCount = sqlSession.insert("ManageRecipeMapper.write", dto);
		System.out.println(successCount);
		return successCount;
	}//write

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

}//class
