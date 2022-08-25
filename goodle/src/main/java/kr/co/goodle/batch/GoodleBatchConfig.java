package kr.co.goodle.batch;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.scheduling.annotation.EnableScheduling;

@Configuration
@EnableScheduling
public class GoodleBatchConfig {

	@Bean
	public GoodleBatchController createBatchController() {
		return new GoodleBatchController();
	}
}
