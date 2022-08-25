package kr.co.goodle.batch;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class GoodleBatchService {

	@Autowired
	private GoodleBatchDAO dao;
	
	public List<OrderMainDTO> autoConfirmList() {
		List<OrderMainDTO> list = null;
		list = dao.autoConfirmList();
		return list;
	}

	public int updateAutoConfirm(List<OrderMainDTO> list) {
		int successCount = 0;
		successCount = dao.updateAutoConfirm( list );
		return successCount;
	}

}
