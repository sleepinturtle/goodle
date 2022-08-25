package kr.co.goodle.manager.recipe;

public class RecipeDTO {
	
	private String basket_no;
	private String reg_date;     
	private String mem_no;
	private String rcp_no;                       
	private String rcp_name;                
	private String rcp_time;                             
	private String rcp_ingr;     
	private String rcp_desc;                            
	private String rcp_detail;               
	private String thumbnail_path;
	
	
	

	
	
	public String getBasket_no() {
		return basket_no;
	}
	public void setBasket_no(String basket_no) {
		this.basket_no = basket_no;
	}
	public String getReg_date() {
		return reg_date;
	}
	public void setReg_date(String reg_date) {
		this.reg_date = reg_date;
	}

	public String getMem_no() {
		return mem_no;
	}
	public void setMem_no(String mem_no) {
		this.mem_no = mem_no;
	}
	public String getRcp_no() {
		return rcp_no;
	}
	
	public String getThumbnail_path() {
		return thumbnail_path;
	}
	public void setThumbnail_path(String thumbnail_path) {
		this.thumbnail_path = thumbnail_path;
	}
	public void setRcp_no(String rcp_no) {
		this.rcp_no = rcp_no;
	}
	public String getRcp_name() {
		return rcp_name;
	}
	public void setRcp_name(String rcp_name) {
		this.rcp_name = rcp_name;
	}
	public String getRcp_time() {
		return rcp_time;
	}
	public void setRcp_time(String rcp_time) {
		this.rcp_time = rcp_time;
	}
	
	public String getRcp_ingr() {
		return rcp_ingr;
	}
	public void setRcp_ingr(String rcp_ingr) {
		this.rcp_ingr = rcp_ingr;
	}
	public String getRcp_desc() {
		return rcp_desc;
	}
	public void setRcp_desc(String rcp_desc) {
		this.rcp_desc = rcp_desc;
	}
	
	public String getRcp_detail() {
		return rcp_detail;
	}
	public void setRcp_detail(String rcp_detail) {
		this.rcp_detail = rcp_detail;
	}

	
	

}
