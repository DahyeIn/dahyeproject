package com.ezen.tiles;

import java.util.ArrayList;

public interface BoardInter {

	public void boardinput(String email, String title, String content);

	public ArrayList<BoardDTO> list();

	public ArrayList<BoardDTO> detail(int no);

	public void boardDelete(int no);

	public void boardModify(int no, String email, String title, String content);

	public void count(int no);
}
