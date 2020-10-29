package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DBconnection.RegStudDao;
import com.bean.RegStudBean;

/**
 * Servlet implementation class RegStudServlet
 */
@WebServlet("/RegStudServlet")
public class RegStudServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String stud_uname = request.getParameter("uname");
        String stud_fname = request.getParameter("fname");
        String stud_lname = request.getParameter("lname");
        String stud_mail = request.getParameter("mail_id");
        String stud_pass = request.getParameter("pwd");
        
        RegStudBean registerBean = new RegStudBean();
       //Using Java Beans - An easiest way to play with group of related data
        registerBean.setStud_uname(stud_uname);
        registerBean.setStud_fname(stud_fname);
        registerBean.setStud_lname(stud_lname);
        registerBean.setStud_mail(stud_mail);
        registerBean.setStud_pass(stud_pass);
        RegStudDao registerDao = new RegStudDao();
        
       //The core Logic of the Registration application is present here. We are going to insert user data in to the database.
        String userRegistered = ((RegStudDao) registerDao).registerUser(registerBean);
        String userRegistered1 = ((RegStudDao) registerDao).registerUser1(registerBean);
        
        if(userRegistered.equals("SUCCESS") && userRegistered1.equals("SUCCESS1"))   //On success, you can display a message to user on Home page
        {
        	 request.setAttribute("errMessage","You have registered successfully");
           request.getRequestDispatcher("/login.jsp").forward(request, response);
        }
        else   //On Failure, display a meaningful message to the User.
        {
           request.setAttribute("errMessage", userRegistered);
           request.getRequestDispatcher("/reg_stud.jsp").forward(request, response);
        }
	}

}
