package kr.co.goodle;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.goodle.util.dto.MemberDTO;
@Service
public class MainService {

	@Autowired
	private MainDAO dao;
	
	
	public int join(MemberDTO dto) {
		int successCount = 0;
		if(dto.getTel1() != null && dto.getTel1().equals("")
				&& dto.getTel2() != null && dto.getTel2().equals("")
				&& dto.getTel3() != null && dto.getTel3().equals("")
				) {
			dto.setTel(dto.getTel1() + "-" + dto.getTel2() + "-" + dto.getTel3());
		}
		
		if( dto.getEmail1() != null && dto.getEmail1().equals("")
				&& dto.getEmail2() != null && dto.getEmail2().equals("")
				) {
			dto.setEmail(dto.getEmail1() + "@" + dto.getEmail2());
		}
		successCount = dao.join(dto);
		return successCount;
	}


	public int dupCheck(String mem_id) {
			int isYN = 0;
			isYN = dao.dupCheck(mem_id);
			return isYN;
		}//idCheck
	}


