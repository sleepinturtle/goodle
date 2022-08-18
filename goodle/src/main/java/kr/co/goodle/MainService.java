package kr.co.goodle;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.goodle.util.dto.MemberDTO;
@Service
public class MainService {

	@Autowired
	private MainDAO dao;
	
	
	public int join(MemberDTO dto) {
		System.out.println("서비스 돌아라1");
		int successCount = 0;
		if(dto.getTel1() != null && dto.getTel1().equals("")
				&& dto.getTel2() != null && dto.getTel2().equals("")
				&& dto.getTel3() != null && dto.getTel3().equals("")
				) {
			dto.setMem_tel(dto.getTel1() + "-" + dto.getTel2() + "-" + dto.getTel3());
		}
		
		if( dto.getEmail1() != null && dto.getEmail1().equals("")
				&& dto.getEmail2() != null && dto.getEmail2().equals("")
				) {
			dto.setMem_email(dto.getEmail1() + "@" + dto.getEmail2());
		}
		if( dto.getCard_exp1() != null && dto.getCard_exp1().equals("")
				&& dto.getCard_exp2() != null && dto.getCard_exp2().equals("")
				) {
			dto.setCard_exp(dto.getCard_exp1() + "/" + dto.getCard_exp2());
		}
		successCount = dao.join(dto);
		if(successCount < 1) {
			return successCount;
		}
		
		successCount = dao.paymentInfo(dto);
		if(successCount < 1) {
			return successCount;
		}
		
		System.out.println("서비스 돌아라2");
		return successCount;
	}


	public int dupCheck(String mem_id) {
			int isYN = 0;
			isYN = dao.dupCheck(mem_id);
			return isYN;
		}//idCheck
	}


