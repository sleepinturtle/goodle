package kr.co.goodle;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class TestController {

	@RequestMapping(value="/test")
	public String test() {
		return "/test";
	}
	@RequestMapping(value="/test2")
	public String test2() {
		return "/test2";
	}
	@RequestMapping(value="/divtest")
	public String divtest() {
		return "/divtest";
	}
	@RequestMapping(value="/datepicker")
	public String datepicker() {
		return "/datepickertest";
	}
}
