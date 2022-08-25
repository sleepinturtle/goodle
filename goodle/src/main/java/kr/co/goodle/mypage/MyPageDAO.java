package kr.co.goodle.mypage;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.goodle.manager.recipe.RecipeDTO;
import kr.co.goodle.util.dto.MemberDTO;

@Repository

public class MyPageDAO {

	@Autowired
	private SqlSession sqlSession;

	public int deactivate(MemberDTO dto) {
		int successCount = 0;
		successCount = sqlSession.update("MyPageMapper.deactivate", dto); 
		System.out.println(successCount);
		return successCount;
	}

	public List<RecipeDTO> recipe_select() {
		List<RecipeDTO> list = null;
		list = sqlSession.selectList("MyPageMapper.recipe_select");
		return list;
	}

	public int update( MemberDTO dto ) {
		int successCount = 0;
		successCount = sqlSession.update("MyPageMapper.update", dto);
		return successCount;
	}//update
	
	public int paymentInfo(MemberDTO dto) {
		int successCount = 0;
		successCount = sqlSession.update("MyPageMapper.paymentinfo", dto);
		return successCount;
	}

	public int updatePlan(MemberDTO dto) {
		int successCount = 0;
		successCount = sqlSession.update("MyPageMapper.updateplan", dto);
		return successCount;
	}

	public int selectPlan(MemberDTO dto) {
		int successCount = 0;
		successCount = sqlSession.selectOne("MyPageMapper.selectplan", dto);
		return successCount;
	}
}
