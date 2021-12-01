package com.ezen.tiles;

import java.util.ArrayList;

public interface BoardInter {

	public void boardinput(String email, String title, String content);

	public ArrayList<BoardDTO> list();

}
