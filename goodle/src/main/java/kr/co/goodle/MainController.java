package kr.co.goodle;

import java.io.PrintWriter;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.co.goodle.util.dto.MemberDTO;

@Controller
public class MainController {
 
	@Autowired
	private MainService service;
	
	@RequestMapping(value = "/main", method = RequestMethod.GET)
	public String start() {
		return "/main";
	}
	
	@RequestMapping(value = "/join", method = RequestMethod.POST)
	public void join(MemberDTO dto, PrintWriter out) {
		System.out.println("컨트롤러 돌아라1 : ");
		int successCount = 0;
		successCount = service.join(dto);
		System.out.println("컨트롤러 돌아라2");
		out.print(successCount);
		out.close();
		
	}
	
	
	@RequestMapping(value = "/dupcheck", method = RequestMethod.GET)
	public void dupCheck(String mem_id, PrintWriter out) {
		int isYN = 0;
		isYN = service.dupCheck(mem_id);
		out.print(isYN);
		out.close();
	}//idCheck
}
