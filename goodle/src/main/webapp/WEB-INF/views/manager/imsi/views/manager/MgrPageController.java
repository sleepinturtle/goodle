package kr.co.goodle.manager;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/mgrpage")
public class MgrPageController {

	@RequestMapping(value="/mgrpage", method = RequestMethod.GET)
	public String mangpage() {
		return "/manager/mgr_page";
	}
}
