package kr.co.goodle.basket;

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

import kr.co.goodle.manager.recipe.RecipeDTO;
import kr.co.goodle.util.dto.MemberDTO;

@Controller
@RequestMapping( value = "/basket" )
public class BasketController {

	private final static Logger logger = LoggerFactory.getLogger(BasketController.class);

	@Autowired
	private BasketService service;

	

	@RequestMapping( value = "/delete", method = RequestMethod.GET )
	public void delete( RecipeDTO dto, HttpSession session, PrintWriter out ) {
		dto.setMem_no( ( (MemberDTO) session.getAttribute("login_info") ).getMem_no() );

		int successCount = 0;
		successCount = service.delete( dto );
		out.print(successCount);
		out.close();
	}//delete

	@RequestMapping( value = "/list", method = RequestMethod.GET )
	public String list( Model model, HttpSession session ) {
		String mem_no = ( (MemberDTO) session.getAttribute("login_info") ).getMem_no();

		List<RecipeDTO> list = null;
		list = service.list( mem_no );
		model.addAttribute("list", list);
		return "/basket/list";//jsp file name
	}//list

	@RequestMapping( value = "/insert", method = RequestMethod.POST )
	public void insert( RecipeDTO dto, HttpSession session, PrintWriter out ) {
		dto.setMem_no( ( (MemberDTO) session.getAttribute("login_info") ).getMem_no() );

		int successCount = 0;
		successCount = service.insert(dto);
		out.print(successCount);
		out.close();
	}//insert

}//class

/*
drop table basket;

create table basket (
  basket_no int not null auto_increment,
  mno int not null,
  prdt_no int not null,
  buy_qty int not null,
  reg_date datetime not null,
  primary key (basket_no)
);
*/
