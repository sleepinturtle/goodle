package kr.co.goodle.login;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.goodle.util.dto.MemberDTO;

@Service
public class LoginService {

	@Autowired
	private LoginDAO dao;
	
	public MemberDTO login(MemberDTO dto) {
		MemberDTO dtoFromDB = null;
		dtoFromDB = dao.login(dto);
		System.out.println(dtoFromDB.getMem_no());
		return dtoFromDB;
	}//login
	
}//class
