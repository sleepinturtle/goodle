package kr.co.goodle.login;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.goodle.util.dto.MemberDTO;

@Repository
public class LoginDAO {

	@Autowired
	private SqlSession sqlSession;
	
	//주의!! 멤버 테이블 안에 중복되는 아이디가 있다면 selectOne에서 오류날 수 밖에 없다. 하나만 나올줄 예상하여 썼으나 여러값이 나오기 때문.
	
	public MemberDTO login(MemberDTO dto) {
		MemberDTO dtoFromDB = null;
		dtoFromDB = sqlSession.selectOne("LoginMapper.login", dto);
		return dtoFromDB;
	}//login

}//class
