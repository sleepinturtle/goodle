package kr.co.goodle.manager.recipe;

public class RecipeDTO {
	
	private String rcp_no;                       
	private String rcp_name;                
	private String rcp_time;                             
	private String rcp_ingr;                  
	private String rcp_desc;                            
	private String rcp_detail;               
	private String rcp_imgpath;
	
	
	public String getRcp_no() {
		return rcp_no;
	}
	public String getRcp_imgpath() {
		return rcp_imgpath;
	}
	public void setRcp_imgpath(String rcp_imgpath) {
		this.rcp_imgpath = rcp_imgpath;
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
