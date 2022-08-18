package kr.co.goodle.util.dto;

public class MemberDTO {
//util.dto를 공통 dto 패키지로 만듬// freeboardDTO는 자유게시판 안에서만 쓰기 때문에 세부폴더에 넣었지만 // loginDTO는 모든 페이지에서 쓰이기 때문에
	//공통dto 패키지에 넣어줌
	
	private String mem_no;
	private String mem_name;
	private String mem_id;
	private String mem_pwd;
	private String mem_tel;
	private String mem_email;
	private String mem_date;
	private int mem_delyn;
	private int mgr_yn;
	
	private String mem_cert1;
	private String mem_cert2;
	private String tel;
	private String email;
	private String tel1;
	private String tel2;
	private String tel3;
	private String email1;
	private String email2;
	
	private String post_code;
	private String addr1;
	private String addr2;
	
	@Override
	
	public String toString() {
		return mem_no + " : " + mem_id;
	}

	public int getMem_delyn() {
		return mem_delyn;
	}

	public void setMem_delyn(int mem_delyn) {
		this.mem_delyn = mem_delyn;
	}

	public String getTel() {
		return tel;
	}


	public void setTel(String tel) {
		this.tel = tel;
	}



	public String getEmail() {
		return email;
	}



	public void setEmail(String email) {
		this.email = email;
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


	public String getPost_code() {
		return post_code;
	}


	public void setPost_code(String post_code) {
		this.post_code = post_code;
	}


	public String getAddr1() {
		return addr1;
	}


	public void setAddr1(String addr1) {
		this.addr1 = addr1;
	}


	public String getAddr2() {
		return addr2;
	}


	public void setAddr2(String addr2) {
		this.addr2 = addr2;
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
	
	
}//class

/*
 * DTO의 종류
 * 1. Table DTO : 테이블 컬럼과 동일한 변수를 갖는 DTO
 * 2. View DTO : 화면 요소와 동일한 변수를 갖는 DTO
 * 3. Composite DTO : 복합적인 변수를 갖는 DTO
 * -> 결론은 개발자 맘대로 만드시면 됩니다.
 */
