package com.controller;

import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang3.RandomStringUtils;

import com.DBconnection.LoginDao;
import com.bean.LoginBean;

public class CustomerServices {

	public CustomerServices(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated constructor stub
	}

	
		public String resetCustomerPassword(String email) throws SQLException {
		    LoginBean customer = LoginDao.findByEmail(email);
		     
		    String randomPassword = RandomStringUtils.randomAlphanumeric(10);
		    customer.setPassword(randomPassword);
		    LoginDao.update(customer);
		     
		    return randomPassword;
		
	}

}
