package kr.co.goodle.order;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import kr.co.goodle.manager.recipe.RecipeDTO;

@Service
public class OrderService {

	@Autowired
	private OrderDAO dao;

	@Transactional
	public int insert( OrderMainDTO dto) {
		int successCount = 0;
		successCount = dao.insertOrderMain(dto);//insertOrderMain을 호출하는 시점에서는 dto에 order_no 값이 없다.
		//insertOrderMain을 수행하면서 selectKey가 dto에 order_no 값을 입력한다.
		System.out.println(successCount);
		return successCount;
	}//insert


	public List<RecipeDTO> orderList(String [] arr_basket_no) {
		List<RecipeDTO> list = null;
		list = dao.orderList(arr_basket_no);
		return list;
	}//orderList

}//class
