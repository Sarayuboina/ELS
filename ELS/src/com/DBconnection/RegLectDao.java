package com.DBconnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.bean.RegLectBean;


public class RegLectDao {
	public String registerUser(RegLectBean registerBean1) {
		
		
		String lect_fname = registerBean1.getLect_fname();
		String lect_lname = registerBean1.getLect_lname();
		String lect_mail = registerBean1.getLect_mail();
		String lect_pass = registerBean1.getLect_pass();
	     Connection con = null;
	     Connection con1 = null;
	     PreparedStatement preparedStatement = null; 
	     PreparedStatement preparedStatement1 = null; 
	     try
	     {
	         con = DBconnection.createConnection();
	         String query = "insert into lecturer_info(lect_id,lect_fname,lect_lname,lect_mail,lect_pass) values (NULL,?,?,?,?)"; //Insert user details into the table 'USERS'
	         preparedStatement = con.prepareStatement(query); //Making use of prepared statements here to insert bunch of data
	         preparedStatement.setString(1, lect_fname);
	         preparedStatement.setString(2, lect_lname);
	         preparedStatement.setString(3, lect_mail);
	         preparedStatement.setString(4, lect_pass);
	         
	         int i= preparedStatement.executeUpdate();
	         
	         if (i!=0)  //Just to ensure data has been inserted into the database
	         return "SUCCESS"; 
	     }
	     catch(SQLException e)
	     {
	        e.printStackTrace();
	     }       
	     return "Oops.. Something went wrong there..!";  // On failure

	}
		public String registerUser1(RegLectBean registerBean1) {
			String lect_mail = registerBean1.getLect_mail();
			String lect_pass = registerBean1.getLect_pass();
			int role_id=2;
			 Connection con1 = null;
			 PreparedStatement preparedStatement1 = null; 
			try {
				con1 = DBconnection.createConnection();
		         String query1 = "insert into login_credentials(login_id,user_id,password,role_id) values (NULL,?,?,?)"; //Insert user details into the table 'USERS'
		         preparedStatement1 = con1.prepareStatement(query1); //Making use of prepared statements here to insert bunch of data
		         preparedStatement1.setString(1, lect_mail);
		         preparedStatement1.setString(2, lect_pass);
		         preparedStatement1.setInt(3, role_id);
		         
		         int j= preparedStatement1.executeUpdate();
		         
		         if (j!=0) {
		         //Just to ensure data has been inserted into the database{
		    
		        	 System.out.println("Success");
		             return "SUCCESS1";}
			}
		         catch(SQLException e)
		         {
		            e.printStackTrace();
		         }       
		         return "Oops.. Something went wrong there..!";  // On failure


}
		
			
		
}
