package kr.co.goodle.util.dto;

public class MemberDTO {

	
	private String mem_no;
	private String mem_name;
	private String mem_id;
	private String mem_pwd;
	private String mem_tel;
	private String mem_email;
	private String mem_date;
	private String mem_comp;
	private int mem_delyn;
	private int mgr_yn;
	public String getMem_comp() {
		return mem_comp;
	}

	public void setMem_comp(String mem_comp) {
		this.mem_comp = mem_comp;
	}

	private int plan_no;
	
	private String mem_cert1;
	private String mem_cert2;
	private String tel1;
	private String tel2;
	private String tel3;
	private String email1;
	private String email2;
	private String card_name;
	private String card_no;
	private String card_exp;
	private String card_exp1;
	private String card_exp2;
	private String card_cvc;
	private String card_pwd;
	
	private String mem_post;
	private String mem_addr1;
	private String mem_addr2;
	public String getMem_addr1() {
		return mem_addr1;
	}

	public void setMem_addr1(String mem_addr1) {
		this.mem_addr1 = mem_addr1;
	}

	public String getMem_addr2() {
		return mem_addr2;
	}

	public void setMem_addr2(String mem_addr2) {
		this.mem_addr2 = mem_addr2;
	}

	@Override
	
	public String toString() {
		return mem_no
				+ " : " + card_name
				+ " : " + card_exp
				+ " : " + card_cvc
				+ " : " + card_pwd
				+ " : " + card_no
				+ " : " + mem_email
				+ " : " + mem_cert1
				+ " : " + mem_cert2
				+ " : " + mem_post
				+ " : " + mem_addr1
				+ " : " + mem_addr2;
	}
	 
	public String getCard_cvc() {
		return card_cvc;
	}

	public void setCard_cvc(String card_cvc) {
		this.card_cvc = card_cvc;
	}

	public String getMem_post() {
		return mem_post;
	}

	public void setMem_post(String mem_post) {
		this.mem_post = mem_post;
	}

	public String getCard_name() {
		return card_name;
	}

	public void setCard_name(String card_name) {
		this.card_name = card_name;
	}

	public String getCard_no() {
		return card_no;
	}

	public void setCard_no(String card_no) {
		this.card_no = card_no;
	}

	public String getCard_exp() {
		return card_exp;
	}

	public void setCard_exp(String card_exp) {
		this.card_exp = card_exp;
	}

	public String getCard_exp1() {
		return card_exp1;
	}

	public void setCard_exp1(String card_exp1) {
		this.card_exp1 = card_exp1;
	}

	public String getCard_exp2() {
		return card_exp2;
	}

	public void setCard_exp2(String card_exp2) {
		this.card_exp2 = card_exp2;
	}

	

	public String getCard_pwd() {
		return card_pwd;
	}

	public void setCard_pwd(String card_pwd) {
		this.card_pwd = card_pwd;
	}




	

	public String getMem_date() {
		return mem_date;
	}



	public void setMem_date(String mem_date) {
		this.mem_date = mem_date;
	}



	public String getMem_no() {
		return mem_no;
	}


	public void setMem_no(String mem_no) {
		this.mem_no = mem_no;
	}


	public String getMem_id() {
		return mem_id;
	}


	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}


	public String getMem_pwd() {
		return mem_pwd;
	}


	public void setMem_pwd(String mem_pwd) {
		this.mem_pwd = mem_pwd;
	}


	public String getMem_tel() {
		return mem_tel;
	}


	public void setMem_tel(String mem_tel) {
		this.mem_tel = mem_tel;
	}


	public String getMem_email() {
		return mem_email;
	}


	public void setMem_email(String mem_email) {
		this.mem_email = mem_email;
	}

	public int getMgr_yn() {
		return mgr_yn;
	}


	public void setMgr_yn(int mgr_yn) {
		this.mgr_yn = mgr_yn;
	}

	public String getMem_cert1() {
		return mem_cert1;
	}



	public void setMem_cert1(String mem_cert1) {
		this.mem_cert1 = mem_cert1;
	}



	public String getMem_cert2() {
		return mem_cert2;
	}



	public void setMem_cert2(String mem_cert2) {
		this.mem_cert2 = mem_cert2;
	}



	public String getTel1() {
		return tel1;
	}


	public void setTel1(String tel1) {
		this.tel1 = tel1;
	}


	public String getTel2() {
		return tel2;
	}


	public void setTel2(String tel2) {
		this.tel2 = tel2;
	}


	public String getTel3() {
		return tel3;
	}


	public void setTel3(String tel3) {
		this.tel3 = tel3;
	}


	public String getEmail1() {
		return email1;
	}


	public void setEmail1(String email1) {
		this.email1 = email1;
	}


	public String getEmail2() {
		return email2;
	}


	public void setEmail2(String email2) {
		this.email2 = email2;
	}


	


	public String toString(String mang_yn) {
		
		return mang_yn;
	}



	public String getMem_name() {
		return mem_name;
	}



	public void setMem_name(String mem_name) {
		this.mem_name = mem_name;
	}

	public int getMem_delyn() {
		return mem_delyn;
	}

	public void setMem_delyn(int mem_delyn) {
		this.mem_delyn = mem_delyn;
	}

	public int getPlan_no() {
		return plan_no;
	}

	public void setPlan_no(int plan_no) {
		this.plan_no = plan_no;
	}
	
	
}//class

/*
 * DTO의 종류
 * 1. Table DTO : 테이블 컬럼과 동일한 변수를 갖는 DTO
 * 2. View DTO : 화면 요소와 동일한 변수를 갖는 DTO
 * 3. Composite DTO : 복합적인 변수를 갖는 DTO
 * -> 결론은 개발자 맘대로 만드시면 됩니다.
 */
