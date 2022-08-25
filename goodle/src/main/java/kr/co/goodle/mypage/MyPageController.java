package kr.co.goodle.mypage;

import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.google.gson.Gson;

import kr.co.goodle.manager.recipe.RecipeDTO;
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
	public String meminfo(HttpSession session, Model model) {
		return"/mypage/mem_info";
	}
	@RequestMapping(value="/profile_man", method=RequestMethod.GET)
	public String profileMan() {
		return"/mypage/profile_man";
	}
	@RequestMapping(value="/preference_man", method=RequestMethod.GET)
	public String preferenceMan() {
		return"/mypage/plan_man";
	}
	@RequestMapping(value="/payment_man", method=RequestMethod.GET)
	public String paymentMan() {
		return"/mypage/payment_man";
	}
	
	@RequestMapping(value="/payhistory", method=RequestMethod.GET)
	public String payhistory() {
		return"/mypage/pay_history";
	}
	@RequestMapping(value="/favrecipe", method=RequestMethod.GET)
	public String favrecipe() {
		return"/mypage/fav_recipe";
	}
	
	public int [] lotto() {
		int [] lotto = new int [8];
		for (int i = 0; i < lotto.length; i++) {
			int tmp = (int) (Math.random() * 50 + 1);//중복을 제거 로직 필요.
			if(i == 0) lotto[i] = tmp;//i=0;//중복 비교 대상 없으므로 그냥 입력.
			//i=1;//k = 0번지와 비교.
			//i=2;//k = 0, 1번지와 비교.
			//i=3;//k = 0, 1, 2번지와 비교.
			//i=4;//k = 0, 1, 2, 3번지와 비교.
			//i=5;//k = 0, 1, 2, 3, 4번지와 비교.
			String duplication = "no";
			for (int k = 0; k < i; k++) {
				if(lotto[k] == tmp) {//지금 발생한 tmp는 이미 있는 값이다.//중복
					duplication = "yes";
					break;//입력 안하고 지나 간다.
				}//if
			}//for

			if(duplication.equals("no")) {//비교 결과, 같은 값이 없으면 대입.
				lotto[i] = tmp;
			} else {//비교 결과, 같은 값이 있으면 pass. -> 대입 안했는데, i 증가. -> i--;
				i--;
			}//if

		}//for

		Arrays.sort(lotto);
		return lotto;
	}

	@RequestMapping(value="/select", method=RequestMethod.GET)
	public String recipe_select( Model model, HttpSession session) {

//		String mem_no = ( (MemberDTO) session.getAttribute("login_info") ).getMem_no();
		List<RecipeDTO> list = null;//50 //여기 null 아니라 service, dao연결 //dao selectList
//		list = service.recipe_select(mem_no);
		list = service.recipe_select();

		List<RecipeDTO> week1 = new ArrayList<RecipeDTO>();
		List<RecipeDTO> week2 = new ArrayList<RecipeDTO>();
		List<RecipeDTO> week3 = new ArrayList<RecipeDTO>();
		List<RecipeDTO> week4 = new ArrayList<RecipeDTO>();
		List<RecipeDTO> week5 = new ArrayList<RecipeDTO>();

		int [] tmpArr = lotto();
		for(int i = 0; i < tmpArr.length; i++) {
			RecipeDTO tmpDTO =  list.get(tmpArr[i]); 
			week1.add(tmpDTO);
			week2.add(tmpDTO);
			week3.add(tmpDTO);
			week4.add(tmpDTO);
			week5.add(tmpDTO);
		}

		model.addAttribute("week1", week1 );
		model.addAttribute("week2", week2 );
		model.addAttribute("week3", week3 );
		model.addAttribute("week4", week4 );
		model.addAttribute("week5", week5 );
		model.addAttribute("week1Json", new Gson().toJson( week1 ) );

		//html에서 미리 5주치의 설정된 model 값을 다 가져와서 일단 페이지에 불러놓고 week을 바꿀때마다 이미 설정된 week attr를 뿌려주는 것.
		return"/mypage/recipe_order";
	}
//	@RequestMapping(value="/order", method=RequestMethod.GET)
//	public String order( ) {
//		
//		return"/mypage/recipe_order";
//	}
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
	
	@RequestMapping( value = "/update", method = RequestMethod.POST )
	public void update( MemberDTO dto, HttpSession session, PrintWriter out ) {
		MemberDTO mDto = (MemberDTO) session.getAttribute("login_info");
		dto.setMem_no( mDto.getMem_no() );

		int successCount = 0;
		successCount = service.update( dto );
		out.print(successCount);
		out.close();
	}//update
	
	@RequestMapping( value = "/updatecard", method = RequestMethod.POST )
	public void updateCard( MemberDTO dto, HttpSession session, PrintWriter out ) {
		MemberDTO mDto = (MemberDTO) session.getAttribute("login_info");
		dto.setMem_no( mDto.getMem_no() );
		
		int successCount = 0;
		successCount = service.paymentInfo( dto );
		out.print(successCount);
		out.close();
	}//update
	
	@RequestMapping( value = "/updateplan", method = RequestMethod.POST )
	public void updatePlan( MemberDTO dto, HttpSession session, PrintWriter out ) {
		MemberDTO mDto = (MemberDTO) session.getAttribute("login_info");
		dto.setMem_no( mDto.getMem_no() );
		
		int successCount = 0;
		successCount = service.updatePlan( dto );
		out.print(successCount);
		out.close();
	}//update
	
//	@RequestMapping( value = "/update", method = RequestMethod.POST )
//	public void update(MemberDTO dto, HttpSession session, PrintWriter out ) {
//		
//
//		int successCount = 0;
//		successCount = service.update( dto );
//		out.print(successCount);
//		out.close();
//	}//update
}
