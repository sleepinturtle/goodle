package kr.co.goodle.util.dto;

public class SearchDTO {
/*
 * mapper로 보내는 객체 는 맵 주소와 같이 보낼 객체 하나만 가능하다..
 * 우리는 검색 기능에 제목과 작성자등 여러 가지 객체를 같이 보내서 작동 시키고 싶기에
 * 이 값들을 dto라는 하나의 객체 담아서 mapper에 주소와 여러값이 담긴 dto를 보낸다.
 *  
 */
	private String mem_no;
	private String searchOption;
	private String searchWord;
	private int limitNum;
	private int rcp_no;
	
	@Override
	public String toString() {
		return searchOption + " : " + searchWord;
	}
	
	
	
	public String getMem_no() {
		return mem_no;
	}



	public void setMem_no(String mem_no) {
		this.mem_no = mem_no;
	}



	public String getSearchOption() {
		return searchOption;
	}
	public void setSearchOption(String searchOption) {
		this.searchOption = searchOption;
	}
	public String getSearchWord() {
		return searchWord;
	}
	public void setSearchWord(String searchWord) {
		this.searchWord = searchWord;
	}
	public int getLimitNum() {
		return limitNum;
	}
	public void setLimitNum(int limitNum) {
		this.limitNum = limitNum;
	}
	
	
	public int getRcp_no() {
		return rcp_no;
	}
	public void setRcp_no(int rcp_no) {
		this.rcp_no = rcp_no;
	}
	
}//class
