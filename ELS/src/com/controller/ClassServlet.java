package com.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DBconnection.ClassDao;
import com.bean.ClassBean;
import com.bean.SubBean;

/**
 * Servlet implementation class ClassServlet
 */
@WebServlet("/")
public class ClassServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private ClassDao userDAO;

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init() {
		// TODO Auto-generated method stub
		userDAO = new ClassDao();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String action = request.getServletPath();
		  switch (action) {
	         case "/insertsub":
			 try {
				insertSub(request, response);
			} catch (IOException | SQLException e2) {
				// TODO Auto-generated catch block
				e2.printStackTrace();
			}
			 break;
	         case "/deletesub":
			 try {
				deleteSub(request, response);
			} catch (SQLException | IOException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
	 		 break;
	         case "/insertstandard":
		     try {
				insertStandard(request, response);
			} catch (SQLException | IOException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
			 break;
		     case "/deletestandard":
			 try {
				deleteStandard(request, response);
			} catch (SQLException | IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		 	 break;
		     case "/listSub":
		     listSub(request, response);
			 break;
		     case "/listStndrd":
			     listStndrd(request, response);
				 break;
			 
		  }
		
	}

	private void listStndrd(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		 List<com.bean.ClassBean> listStndrd = userDAO.selectAllStandard();
	        request.setAttribute("listUser", listStndrd);
	        RequestDispatcher dispatcher = request.getRequestDispatcher("adminStandard.jsp");
	        dispatcher.forward(request, response);
		
	}

	private void listSub(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		 List<com.bean.SubBean> listSub = userDAO.selectAllSubject();
	        request.setAttribute("listUser", listSub);
	        RequestDispatcher dispatcher = request.getRequestDispatcher("adminSubjects.jsp");
	        dispatcher.forward(request, response);
		
	}

	private void deleteStandard(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException {
		// TODO Auto-generated method stub
		int standard_id = Integer.parseInt(request.getParameter("standard_id"));
        userDAO.deleteStandard(standard_id);
        response.sendRedirect("listStndrd");
		
	}

	private void insertStandard(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException {
		// TODO Auto-generated method stub
		String standard_name = request.getParameter("standard_name");
	       
        ClassBean newStndrd = new ClassBean(standard_name);
        userDAO.insertStandard(newStndrd);
        response.sendRedirect("listStndrd");
		
		
	}

	private void deleteSub(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException {
		// TODO Auto-generated method stub
		int sub_id = Integer.parseInt(request.getParameter("sub_id"));
        userDAO.deleteSubject(sub_id);
        response.sendRedirect("listSub");
		
	}

	private void insertSub(HttpServletRequest request, HttpServletResponse response) throws IOException, SQLException {
		// TODO Auto-generated method stub
		String sub_name = request.getParameter("sub_name");
       
        SubBean newSub = new SubBean(sub_name);
        userDAO.insertSubject(newSub);
        response.sendRedirect("listSub");
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
