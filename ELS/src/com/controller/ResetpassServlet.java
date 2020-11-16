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
 * Servlet implementation class ResetpassServlet
 */
@WebServlet("/ResetpassServlet")
public class ResetpassServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//retriving parametrs from jsp page
		
		String opwd=request.getParameter("opwd");
		String npwd=request.getParameter("npwd");
		String cpwd=request.getParameter("cpwd");
		HttpSession session = request.getSession();
		String password=(String) session.getAttribute("pwd");
		String user_id=(String) session.getAttribute("uname");
		
		if(!npwd.equals(cpwd))
		{
			request.setAttribute("msg", "Confirm password does not match with new password");
			getServletContext().getRequestDispatcher("/resetpwd.jsp").forward(request, response);		
		}
		else if(!password.equals("opwd")) {
			request.setAttribute("msg", "Old password is not correct!");
			getServletContext().getRequestDispatcher("/resetpwd.jsp").forward(request, response);	
		}
		else {
			LoginBean lb = new LoginBean();
			lb.setUser_id(user_id);
			lb.setPassword(npwd);	
			
			String sql = "update login_credentials set password=? where user_id=?";
			int i =LoginDao.resetpass(lb,sql);
			
			if(i!=0) {
				request.setAttribute("msg", "Password updated Successfully!");
				getServletContext().getRequestDispatcher("/resetpwd.jsp").forward(request, response);
			}
			else {
				request.setAttribute("msg", "Password not Updated!");
				getServletContext().getRequestDispatcher("/resetpwd.jsp").forward(request, response);
			}
		
		}
	}

}
