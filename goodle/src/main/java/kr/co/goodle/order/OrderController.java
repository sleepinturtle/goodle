package kr.co.goodle.order;

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

import com.google.gson.Gson;

import kr.co.goodle.basket.BasketController;
import kr.co.goodle.manager.recipe.RecipeDTO;
import kr.co.goodle.util.dto.MemberDTO;

@Controller
@RequestMapping( value = "/order" )
public class OrderController {

	private final static Logger logger = LoggerFactory.getLogger(BasketController.class);

	@Autowired
	private OrderService service;



	@RequestMapping( value = "/insert", method = RequestMethod.POST )
	public void insert( OrderMainDTO dto, HttpSession session, PrintWriter out ) {
		dto.setMem_no( ( (MemberDTO) session.getAttribute("login_info") ).getMem_no() );
		int successCount = 0;
		
		successCount = service.insert(dto);
		out.print(successCount);
		out.close();
	}//insert

	@RequestMapping( value = "/order_list", method = RequestMethod.GET )
	public String orderList( String [] arr_basket_no, RecipeDTO dto, Model model, HttpSession session ) {
		List<RecipeDTO> list = null;
		if(arr_basket_no != null && arr_basket_no.length > 0) {//장바구니 -> 주문 목록
			list = service.orderList( arr_basket_no );
		}
		model.addAttribute("list", list);



		model.addAttribute( "arr_basket_no", new Gson().toJson( arr_basket_no ) );

		return "/mypage/recipe_order";//jsp file name
	}//orderList

}//class

/*
drop table order_main;

create table order_main (
  order_no int not null auto_increment,
  mem_no int not null,
  card_no int not null,
  order_product_cnt int not null,
  order_amt int not null,
  pay_amt int not null,
  order_date datetime not null,
  order_status int,
  deli_date datetime not null,
  primary key (order_no)
);
// 주문한 레시피의 상세 정보(이름, no)등은 recipeDTO에서 뽑아올것임.

 -- order_no -- 주문번호
 -- mno -- 멤버번호
 -- card_no -- 카드번호
 -- addr_no -- 배송지번호
 -- order_product_cnt -- 주문상품수
 -- order_amt -- 주문금액
 -- discount_amt -- 할인금액
 -- pay_amt -- 결제금액
 -- order_date -- 주문일자
 -- order_status -- 주문상태
 -- 주문상태(1:주문완료, 3:결제완료, 5:판매자확인완료, 7:운송장정보입력완료, 9:택배사인수완료, 11:택배사배송완료, 13:구매자구매확정완료, 15:자동구매결정완료)
 -- 결제사 및 택배사 연동이 없으므로, (3:결제완료, 5:판매자확인완료, 7:운송장정보입력완료, 13:구매자구매확정완료, 15:자동구매결정완료)만 구현한다.

drop table order_detail;

create table order_detail (
  detail_no int not null auto_increment,
  order_no int not null,
  prdt_no int not null,
  detail_qty int not null,
  detail_price int not null,
  detail_amt int not null,
  detail_discount int default null,
  detail_discount_amt int not null,
  detail_pay_amt int not null,
  primary key (detail_no)
);

 -- detail_no -- 주문상세번호
 -- order_no -- 주문번호
 -- prod_no -- 상품번호
 -- detail_qty -- 주문수량
 -- detail_price -- 판매단가
 -- detail_amt -- 주문금액 (주문수량 * 판매단가)
 -- detail_discount -- 할인율
 -- detail_discount_amt -- 할인금액
 -- detail_pay_amt -- 결제금액

drop table common_code;

create table common_code (
  code_no int not null,
  code_class varchar(30) not null,
  code_name varchar(60) not null
);

insert into common_code (code_no, code_class, code_name)
values (1, 'order_status', '주문완료')
, (3, 'order_status', '결제완료')
, (5, 'order_status', '판매자확인완료')
, (7, 'order_status', '운송장정보입력완료')
, (9, 'order_status', '택배사인수완료')
, (11, 'order_status', '택배사배송완료')
, (13, 'order_status', '구매자구매확정완료')
, (15, 'order_status', '자동구매결정완료');
*/
