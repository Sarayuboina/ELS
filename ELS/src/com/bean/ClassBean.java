package com.bean;

public class ClassBean {
	private String standard_name;
	private int standard_id;

	public ClassBean(int standard_id, String standard_name) {
		// TODO Auto-generated constructor stub
		super();
		this.setStandard_id(standard_id);
		this.standard_name = standard_name;
	}

	public ClassBean(String standard_name) {
		// TODO Auto-generated constructor stub
		super();
		this.standard_name = standard_name;
	}

	public String getStandard_name() {
		return standard_name;
	}

	public void setStandard_name(String standard_name) {
		this.standard_name = standard_name;
	}

	public int getStandard_id() {
		return standard_id;
	}

	public void setStandard_id(int standard_id) {
		this.standard_id = standard_id;
	}

}
