package com.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang3.RandomStringUtils;

import com.DBconnection.RegLectDao;
import com.bean.RegLectBean;

public class CustomerServices {

	public CustomerServices(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated constructor stub
	}

	
		public String resetCustomerPassword(String email) {
		    RegLectBean customer = RegLectDao.findByEmail(email);
		     
		    String randomPassword = RandomStringUtils.randomAlphanumeric(10);
		     
		    customer.setPassword(randomPassword);
		    RegLectDao.update(customer);
		     
		    return randomPassword;
		
	}

}
