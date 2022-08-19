package kr.co.goodle;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.goodle.util.dto.MemberDTO;

@Repository
public class MainDAO {

	@Autowired
	private SqlSession sqlSession;
	 
	public int join(MemberDTO dto) {
		System.out.println("DAO 돌아라1 : " + dto);
		int successCount = 0;
		successCount = sqlSession.insert("GoodleMapper.join",dto);
		System.out.println("DAO 돌아라2");
		return successCount;
	}

	public int dupCheck(String mem_id) {
		int isYn = 0;
		isYn = sqlSession.selectOne("GoodleMapper.dupcheck",mem_id);
		return isYn;
	}

	public int paymentInfo(MemberDTO dto) {
		int successCount = 0;
		successCount = sqlSession.insert("GoodleMapper.paymentinfo", dto);
		return successCount;
	}

}
