package com.ezen.tiles;

public class InformDTO {

	String email, name, password, passwordcheck;

	public InformDTO() {
		super();
		// TODO Auto-generated constructor stub
	}

	public InformDTO(String email, String name, String password, String passwordcheck) {
		super();
		this.email = email;
		this.name = name;
		this.password = password;
		this.passwordcheck = passwordcheck;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getPasswordcheck() {
		return passwordcheck;
	}

	public void setPasswordcheck(String passwordcheck) {
		this.passwordcheck = passwordcheck;
	}

}
