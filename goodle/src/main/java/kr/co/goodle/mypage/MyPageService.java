package kr.co.goodle.mypage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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
}
