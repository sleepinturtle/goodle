package kr.co.goodle.batch;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;

import kr.co.goodle.batch.OrderMainDTO;

public class GoodleBatchController {

	@Autowired
	private GoodleBatchService service;
	
	@Scheduled( cron = "* * * * * 5" )
	public void autoConfirm() {
		//자동 구매 업데이트 대상을  select
		List<OrderMainDTO> list = null;
		list = service.autoConfirmList();
		//업데이트 수행
		int successCount = 0;
		successCount = service.updateAutoConfirm( list );
	}//autoConfirm
}
