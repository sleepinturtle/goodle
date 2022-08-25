package kr.co.goodle.mypage;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.goodle.manager.recipe.RecipeDTO;
import kr.co.goodle.util.dto.MemberDTO;

@Service
public class MyPageService {

	@Autowired
	private MyPageDAO dao;
	
	
	public int deactivate(MemberDTO dto) {
		
		int successCount = 0;
		successCount = dao.deactivate(dto);
		return successCount;
	}


	public List<RecipeDTO> recipe_select() {
		
		List<RecipeDTO> list = null;
		list = dao.recipe_select();
		return list;
	}


	public int update( MemberDTO dto ) {
		int successCount = 0;
		
		
		if(dto.getTel1() != null && !dto.getTel1().equals("")
				&& dto.getTel2() != null && !dto.getTel2().equals("")
				&& dto.getTel3() != null && !dto.getTel3().equals("")
				) {
			dto.setMem_tel(dto.getTel1() + "-" + dto.getTel2() + "-" + dto.getTel3());
		}
		
		if( dto.getEmail1() != null && !dto.getEmail1().equals("")
				&& dto.getEmail2() != null && !dto.getEmail2().equals("")
				) {
			dto.setMem_email(dto.getEmail1() + "@" + dto.getEmail2());
		}
		
		successCount = dao.update( dto );
		if(successCount < 1) {
			return successCount;
		}
		return successCount;
	}//update
	
	public int paymentInfo(MemberDTO dto) {
		int successCount = 0;
	
		if( dto.getCard_exp1() != null && !dto.getCard_exp1().equals("")
				&& dto.getCard_exp2() != null && !dto.getCard_exp2().equals("")
				) {
			dto.setCard_exp(dto.getCard_exp1() + "/" + dto.getCard_exp2());
		}
		
		successCount = dao.paymentInfo(dto);
		if(successCount < 1) {
			return successCount;
		}	
		return successCount;
	
	}//paymentInfo


	public int updatePlan(MemberDTO dto) {
		int successCount = 0;
		successCount = dao.updatePlan( dto );
		return successCount;
	}//updatePlan
	
	public int selectPlan(MemberDTO dto) {
		int successCount = 0;
		successCount = dao.selectPlan( dto );
		return successCount;
	}//updatePlan
	
}
