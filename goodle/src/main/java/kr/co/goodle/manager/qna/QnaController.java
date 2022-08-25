package kr.co.goodle.manager.qna;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


import kr.co.goodle.util.dto.MemberDTO;
import kr.co.goodle.util.dto.QnaBoardDTO;
import kr.co.goodle.util.dto.SearchDTO;

@Controller
@RequestMapping(value="/manager/qna")
public class QnaController {

	@Autowired
	private QnaService service;
	
	private final static Logger logger = LoggerFactory.getLogger(QnaController.class);

	@RequestMapping( value = "/reply_insert", method = RequestMethod.POST )
	public void replyInsert( QnaBoardDTO dto, HttpSession session, PrintWriter out ) {

		int successCount = 0;
		successCount = service.replyInsert( dto );
		out.print(successCount);
		out.close();

	}//replyInsert

	@RequestMapping( value = "/update", method = RequestMethod.POST )
	public void update( QnaBoardDTO dto, PrintWriter out ) {
		
		int successCount = 0;
		successCount = service.update( dto );
		out.print(successCount);
		out.close();
	}//update
	
	@RequestMapping( value = "/write", method = RequestMethod.POST )
	public void write( QnaBoardDTO dto, HttpSession session, PrintWriter out ) {

		int successCount = 0;
		successCount = service.write( dto );
		out.print(successCount);
		out.close();
	}//write
	
	@RequestMapping( value = "/write_form", method = RequestMethod.GET )
	public String writeForm() {
		return "/manager/qna/write_form";//jsp file name
	}//writeForm
	
	@RequestMapping( value = "/list", method = RequestMethod.GET )
	public String list( Model model, String userWantPage, SearchDTO dto ) {
		if( userWantPage == null || userWantPage.equals("") ) userWantPage = "1";
		int totalCount = 0, startPageNum = 1, endPageNum = 10, lastPageNum = 1;
		totalCount = service.searchListCount( dto );

		if(totalCount > 10) {//201 -> (201 /10) + (201 % 10 > 0 ? 1 : 0) -> 20 + 1
			lastPageNum = (totalCount / 10) + (totalCount % 10 > 0 ? 1 : 0);
		}//if

		if(userWantPage.length() >= 2) { //userWantPage가 12인 경우 startPageNum는 11, endPageNum는 20.
			String frontNum = userWantPage.substring(0, userWantPage.length() - 1);//12 -> 1
			startPageNum = Integer.parseInt(frontNum) * 10 + 1;// 1 * 10 + 1 -> 11
			endPageNum = ( Integer.parseInt(frontNum) + 1 ) * 10;// (1 + 1) * 10 -> 20
			//userWantPage가 10인 경우, startPageNum는 11, endPageNum는 20.
			String backNum = userWantPage.substring(userWantPage.length() - 1, userWantPage.length());
			if(backNum.equals("0")) {
				startPageNum = startPageNum - 10;// 11 - 10 -> 1
				endPageNum = endPageNum - 10;// 20 - 10 -> 10
			}//if
		}//if

		//endPageNum이 20이고, lastPageNum이 17이라면, endPageNum을 17로 수정해라
		if(endPageNum > lastPageNum) endPageNum = lastPageNum;

		model.addAttribute("startPageNum", startPageNum);
		model.addAttribute("endPageNum", endPageNum);
		model.addAttribute("lastPageNum", lastPageNum);
		model.addAttribute("userWantPage", userWantPage);

		dto.setLimitNum( ( Integer.parseInt(userWantPage) - 1 ) * 10  );
		// 1 -> (1-1)*10 -> 0
		// 2 -> (2-1)*10 -> 10
		// 3 -> (3-1)*10 -> 20

		List<QnaBoardDTO> list = null;
		list = service.searchList( dto );
		model.addAttribute("list", list);
		model.addAttribute("search_dto", dto);
		return "manager/qna/list";//jsp file name
		
	}//list
	
	@RequestMapping( value = "/detail", method = RequestMethod.GET )
	public String detail( String board_no, Model model, HttpSession session ) {
		QnaBoardDTO dto = null;
		MemberDTO mDto = (MemberDTO) session.getAttribute("login_info");
		dto = service.detail( board_no );
		model.addAttribute("detail_dto", dto);
		return "/manager/qna/detail";//jsp file name
	}//detail

}
