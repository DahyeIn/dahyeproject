package com.ezen.tiles;

public class BoardDTO {

	int no;
	String email, title, content, reg_date;
	int hit_count;

	public BoardDTO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public BoardDTO(int no, String email, String title, String content, String reg_date, int hit_count) {
		super();
		this.no = no;
		this.email = email;
		this.title = title;
		this.content = content;
		this.reg_date = reg_date;
		this.hit_count = hit_count;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getReg_date() {
		return reg_date;
	}

	public void setReg_date(String reg_date) {
		this.reg_date = reg_date;
	}

	public int getHit_count() {
		return hit_count;
	}

	public void setHit_count(int hit_count) {
		this.hit_count = hit_count;
	}

}
