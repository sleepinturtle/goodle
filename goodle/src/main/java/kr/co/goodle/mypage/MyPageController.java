package kr.co.goodle.mypage;

import java.io.PrintWriter;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.co.goodle.util.dto.MemberDTO;

@Controller
@RequestMapping(value = "/mypage")
public class MyPageController {
	
	@Autowired
	private MyPageService service;
	
	
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
	@RequestMapping(value="/deactivate", method=RequestMethod.POST)
	public void deactivate(MemberDTO dto, PrintWriter out, HttpSession session) {
		dto.setMem_no(((MemberDTO) session.getAttribute("login_info")).getMem_no());
		int successCount = 0;
		successCount = service.deactivate(dto);
//		logger.info(dto.toString());
		out.print(successCount);
		out.close();
	}
	@RequestMapping(value="/qna", method=RequestMethod.GET)
	public String qna() {
		return"/board/qnaboard/qnalist";
	}
}
