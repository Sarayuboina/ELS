package com.DBconnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.bean.RegStudBean;

public class RegStudDao {
	public String registerUser(RegStudBean registerBean) {
		
	String stud_uname = registerBean.getStud_uname();
	String stud_fname = registerBean.getStud_fname();
	String stud_lname = registerBean.getStud_lname();
	String stud_mail = registerBean.getStud_mail();
	String stud_pass = registerBean.getStud_uname();
	
     Connection con = null;
     Connection con1 = null;
     PreparedStatement preparedStatement = null; 
     PreparedStatement preparedStatement1 = null; 
     try
     {
         con = DBconnection.createConnection();
         String query = "insert into student_info(stud_id,stud_uname,stud_fname,stud_lname,stud_mail,stud_pass) values (NULL,?,?,?,?,?)"; //Insert user details into the table 'USERS'
         preparedStatement = con.prepareStatement(query); //Making use of prepared statements here to insert bunch of data
         preparedStatement.setString(1, stud_uname);
         preparedStatement.setString(2, stud_fname);
         preparedStatement.setString(3, stud_lname);
         preparedStatement.setString(4, stud_mail);
         preparedStatement.setString(5, stud_pass);
         
         int i= preparedStatement.executeUpdate();
         
         if (i!=0)  //Just to ensure data has been inserted into the database
         return "SUCCESS"; 
     }
     catch(SQLException e)
     {
        e.printStackTrace();
        System.out.println("error!!!");
     }       
     return "Oops.. Something went wrong there..!";  // On failure

}
	public String registerUser1(RegStudBean registerBean) {
		String stud_mail = registerBean.getStud_mail();
		String stud_pass = registerBean.getStud_uname();
		int role_id=3;
		 Connection con1 = null;
		 PreparedStatement preparedStatement1 = null; 
		try {
			con1 = DBconnection.createConnection();
	         String query1 = "insert into login_credentials(login_id,user_id,password,role_id) values (NULL,?,?,?)"; //Insert user details into the table 'USERS'
	         preparedStatement1 = con1.prepareStatement(query1); //Making use of prepared statements here to insert bunch of data
	         preparedStatement1.setString(1, stud_mail);
	         preparedStatement1.setString(2, stud_pass);
	         preparedStatement1.setInt(3, role_id);
	         
	         int j= preparedStatement1.executeUpdate();
	         
	         if (j!=0) {
	         //Just to ensure data has been inserted into the database{
	    
	        
	             return "SUCCESS1";}
		}
	         catch(SQLException e)
	         {
	            e.printStackTrace();
	         }       
	         return "Oops.. Something went wrong there..!";  // On failure

	}
}

	
