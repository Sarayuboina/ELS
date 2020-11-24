package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DBconnection.RegLectDao;
import com.bean.RegLectBean;
import com.bean.RegStudBean;

/**
 * Servlet implementation class RegLectServlet
 */
@WebServlet("/RegLectServlet")
public class RegLectServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String lect_fname = request.getParameter("fname");
        String lect_lname = request.getParameter("lname");
        String lect_mail = request.getParameter("mail_id");
        String lect_pass = request.getParameter("pwd");
        RegLectBean registerBean1 = new RegLectBean();
        //Using Java Beans - An easiest way to play with group of related data
        
         registerBean1.setLect_fname(lect_fname);
         registerBean1.setLect_lname(lect_lname);
         registerBean1.setLect_mail(lect_mail);
         registerBean1.setLect_pass(lect_pass);
         RegLectDao registerDao = new RegLectDao();
         
        //The core Logic of the Registration application is present here. We are going to insert user data in to the database.
         String userRegistered = ((RegLectDao) registerDao).registerUser(registerBean1);
         String userRegistered1 = ((RegLectDao) registerDao).registerUser1(registerBean1);
         
         if(userRegistered.equals("SUCCESS") && userRegistered1.equals("SUCCESS1"))   //On success, you can display a message to user on Home page
         {
         	 request.setAttribute("errMessage","You have registered successfully");
            request.getRequestDispatcher("/login.jsp").forward(request, response);
         }
         else   //On Failure, display a meaningful message to the User.
         {
            request.setAttribute("errMessage", userRegistered);
            request.getRequestDispatcher("/reg_lect.jsp").forward(request, response);
         }
	}

}
