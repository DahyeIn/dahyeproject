package com.ezen.tiles;

import java.util.ArrayList;

public class PageDTO {

	int curpage = 1; // 현재페이지
	int perpage = 10; // 페이지 안에 표시될 레코드의 수
	int totalcount; // 전체 레코드의 수

	ArrayList<BoardDTO> list; // 레코드 전체를 저장 목록

	public int getCurpage() {
		return curpage;
	}

	public void setCurpage(int curpage) {
		this.curpage = curpage;
	}

	public int getPerpage() {
		return perpage;
	}

	public void setPerpage(int perpage) {
		this.perpage = perpage;
	}

	public int getTotalcount() {
		return totalcount;
	}

	public void setTotalcount(int totalcount) {
		this.totalcount = totalcount;
	}

	public ArrayList<BoardDTO> getList() {
		return list;
	}

	public void setList(ArrayList<BoardDTO> list) {
		this.list = list;
	}

}
