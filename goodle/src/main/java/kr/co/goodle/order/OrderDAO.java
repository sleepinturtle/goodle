package kr.co.goodle.order;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.goodle.manager.recipe.RecipeDTO;

@Repository
public class OrderDAO {

	@Autowired
	private SqlSession sqlSession;

	public int deleteBasketByArray(String [] arr_basket_no) {
		int successCount = 0;
		successCount = sqlSession.delete("OrderMapper.deleteBasketByArray", arr_basket_no);
		return successCount;
	}//deleteBasketByArray

	public int insertOrderDetail(OrderMainDTO dto) {
		int successCount = 0;
		successCount = sqlSession.insert("OrderMapper.insertOrderDetail", dto);
		return successCount;
	}//insertOrderDetail

	public int insertOrderMain(OrderMainDTO dto) {
		int successCount = 0;
		successCount = sqlSession.insert("OrderMapper.insertOrderMain", dto);
		return successCount;
	}//insertOrderMain

	public List<RecipeDTO> orderList(String [] arr_basket_no) {
		List<RecipeDTO> list = null;
		list = sqlSession.selectList("OrderMapper.orderList", arr_basket_no);
		return list;
	}//orderList

}//class
