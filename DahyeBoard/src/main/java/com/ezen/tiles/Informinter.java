package com.ezen.tiles;

import java.util.ArrayList;

public interface Informinter {

	public void inputdata(String email, String name, String password, String passwordcheck);

	public ArrayList<InformDTO> listout();

	public void delete(String email);

	public InformDTO login(String email, String password);

}
