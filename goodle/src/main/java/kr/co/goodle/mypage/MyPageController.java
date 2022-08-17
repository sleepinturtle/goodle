package kr.co.goodle.mypage;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/mypage")
public class MyPageController {
	
	@RequestMapping(value="/mypage", method=RequestMethod.GET)
	public String mypage() {
		return "/mypage/my_page";
	}
	
	@RequestMapping(value="/meminfo", method=RequestMethod.GET)
	public String meminfo() {
		return"/mypage/mem_info";
	}
	
	@RequestMapping(value="/payhistory", method=RequestMethod.GET)
	public String payhistory() {
		return"/mypage/pay_history";
	}
	@RequestMapping(value="/favrecipe", method=RequestMethod.GET)
	public String favrecipe() {
		return"/mypage/fav_recipe";
	}
	@RequestMapping(value="/order", method=RequestMethod.GET)
	public String order() {
		return"/mypage/recipe_order";
	}
	@RequestMapping(value="/deactivate", method=RequestMethod.GET)
	public String deactivate() {
		return"/mypage/deactivate";
	}
	@RequestMapping(value="/qna", method=RequestMethod.GET)
	public String qna() {
		return"/board/qnaboard/qnalist";
	}
}
