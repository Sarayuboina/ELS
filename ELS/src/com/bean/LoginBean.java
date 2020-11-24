package com.bean;

public class LoginBean {
 private String user_id;
 private String password;
private int login_id,role_id;

 	
	
public LoginBean(int login_id, String user_id, String password, int role_id) {
	// TODO Auto-generated constructor stub
	super();
	this.login_id = login_id;
	this.user_id  =  user_id;
	this.password = password;
	this.setRole_id(role_id);
	
}

	

public String getUser_id() {
	return user_id;
}
public void setUser_id(String user_id) {
	this.user_id = user_id;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}
public int getLogin_id() {
	return login_id;
}
public void setLogin_id(int login_id) {
	this.login_id = login_id;
}



public int getRole_id() {
	return role_id;
}



public void setRole_id(int role_id) {
	this.role_id = role_id;
}

	

 

}
 

