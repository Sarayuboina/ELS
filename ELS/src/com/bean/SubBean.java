package com.bean;

public class SubBean {
	private String sub_name;
	private int sub_id;

	public SubBean(int sub_id, String sub_name) {
		// TODO Auto-generated constructor stub
		super();
		this.sub_id = sub_id;
		this.sub_name = sub_name;
	}

	public SubBean(String sub_name) {
		// TODO Auto-generated constructor stub
		super();
		this.sub_name = sub_name; 
	}

	public String getSub_name() {
		return sub_name;
	}

	public void setSub_name(String sub_name) {
		this.sub_name = sub_name;
	}

	public int getSub_id() {
		return sub_id;
	}

	public void setSub_id(int sub_id) {
		this.sub_id = sub_id;
	}

}
