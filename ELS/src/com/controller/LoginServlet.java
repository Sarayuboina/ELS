package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DBconnection.LoginDao;
import com.bean.LoginBean;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String id = request.getParameter("uname");
	    String password = request.getParameter("pwd");
	    int login_id=Integer.parseInt(id);
	 
	    LoginBean loginBean = new LoginBean();
	    loginBean.setLogin_id(login_id);
	    loginBean.setPassword(password);
        LoginDao loginDao = new LoginDao();
	 
	    try
	    {
	        String userValidate = loginDao.authenticateUser(loginBean);
	 
	        if(userValidate.equals("Admin_Role"))
	        {
	            System.out.println("Admin's Home");
	 
	            HttpSession session = request.getSession(); //Creating a session
	            session.setAttribute("Admin", login_id); //setting session attribute
	            request.setAttribute("userName", login_id);
	 
	            request.getRequestDispatcher("/adminDashboard.jsp").forward(request, response);
	        }
	        else if(userValidate.equals("Editor_Role"))
	        {
	            System.out.println("Editor's Home");
	 
	            HttpSession session = request.getSession();
	            session.setAttribute("Editor", login_id);
	            request.setAttribute("userName", login_id);
	 
	            request.getRequestDispatcher("/JSP/Editor.jsp").forward(request, response);
	        }
	        else if(userValidate.equals("User_Role"))
	        {
	            System.out.println("User's Home");
	 
	            HttpSession session = request.getSession();
	            session.setMaxInactiveInterval(10*60);
	            session.setAttribute("User", login_id);
	            request.setAttribute("userName", login_id);
	 
	            request.getRequestDispatcher("/JSP/User.jsp").forward(request, response);
	        }
	        else
	        {
	            System.out.println("Error message = "+userValidate);
	            request.setAttribute("errMessage", userValidate);
	 
	            request.getRequestDispatcher("/JSP/Login.jsp").forward(request, response);
	        }
	    }
	    catch (IOException e1)
	    {
	        e1.printStackTrace();
	    }
	    catch (Exception e2)
	    {
	        e2.printStackTrace();
	    }
	}

}
