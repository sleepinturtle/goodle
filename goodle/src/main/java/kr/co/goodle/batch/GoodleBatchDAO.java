package kr.co.goodle.batch;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


@Repository
public class GoodleBatchDAO {

	@Autowired
	private SqlSession sqlSession;
	
	public List<OrderMainDTO> autoConfirmList() {
		List<OrderMainDTO> list = null;
		list = sqlSession.selectList("BatchMapper.autoConfirmList");
		return list;
	}

	public int updateAutoConfirm(List<OrderMainDTO> list) {
		int successCount = 0;
		successCount = sqlSession.update("BatchMapper.updateAutoConfirm", list);
		return successCount;
	}

}
