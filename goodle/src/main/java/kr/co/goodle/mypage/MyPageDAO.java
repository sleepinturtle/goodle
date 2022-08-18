package kr.co.goodle.mypage;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

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
}
