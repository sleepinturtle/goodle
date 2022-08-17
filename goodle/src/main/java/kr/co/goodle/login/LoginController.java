package kr.co.goodle.login;

import java.io.PrintWriter;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.co.goodle.util.dto.MemberDTO;

@Controller
@RequestMapping(value = "/login")
public class LoginController {
	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);
	
	@Autowired
	private LoginService service;
	
	@RequestMapping(value = "/login", method=RequestMethod.POST )
	public void login(MemberDTO dto, PrintWriter out, HttpSession session) {//DTO가 다른 패키지에 있기 때문에 import 받아옴.
		//기존과는 다르게 존재하는 회원이면 정보를 통째로 session에 담는 방식으로 진행
		MemberDTO dtoFromDB = null;
		dtoFromDB = service.login(dto);
		if(dtoFromDB == null) {
			//아이디 없는 사용자 또는 패스워드가 오류 사용자.
			out.print(0);
		}else if(dtoFromDB !=null && dtoFromDB.getMem_no() !=null && dtoFromDB.getMem_no() !="" && dtoFromDB.getMgr_yn() ==1) {//아이디, 패스워드 모두 ok
			//아이디, 패스워드 모두 ok
			out.print(1);
			session.setAttribute("login_info", dtoFromDB);
		}else if(dtoFromDB !=null && dtoFromDB.getMem_no() !=null && dtoFromDB.getMem_no() !="" && dtoFromDB.getMgr_yn() ==0) {//아이디, 패스워드 모두 ok
			//아이디, 패스워드 모두 ok
		out.print(2);
			session.setAttribute("login_info", dtoFromDB);
		}
		
		out.close();
	}//login
	
	@RequestMapping(value="/login_form", method=RequestMethod.GET)
	public String loginForm() {
		return "/login/login_form"; //jsp file name
	}//loginForm
	
	
	@RequestMapping(value="/logout", method = RequestMethod.GET)
	public String logout(HttpSession session) {
		session.invalidate();
		return "main";//jsp file name
	}//logout
}
