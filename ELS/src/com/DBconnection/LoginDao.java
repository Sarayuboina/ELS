package com.DBconnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.bean.LoginBean;

public class LoginDao {
	public String authenticateUser(LoginBean loginBean)
	{
	    String user_id = loginBean.getUser_id();
	    String password = loginBean.getPassword();
	 
	    Connection con = null;
	    Statement statement = null;
	    ResultSet resultSet = null;
	 
	    String user_idDB;
	    String passwordDB = "";
	    int roleDB;
	 
	    try
	    {
	        con = DBconnection.createConnection();
	        statement = con.createStatement();
	        resultSet = statement.executeQuery("SELECT * FROM login_credentials INNER JOIN role ON login_credentials.role_id = role.role_id");
	 
	        while(resultSet.next())
	        {
	            user_idDB = resultSet.getString("user_id");
	            passwordDB = resultSet.getString("password");
	            roleDB = resultSet.getInt("role_id");
	 
	            if(user_id.equals(user_idDB) && password.equals(passwordDB) && roleDB==1)
	            return "Admin_Role";
	            else if(user_id.equals(user_idDB) && password.equals(passwordDB) && roleDB==2)
	            return "Lecturer_Role";
	            else if(user_id.equals(user_idDB) && password.equals(passwordDB) && roleDB==3)
	            return "Student_Role";
	        }
	    }
	    catch(SQLException e)
	    {
	        e.printStackTrace();
	    }
	    return "Invalid user credentials";
	}

	public static int resetpass(LoginBean lb, String sql) {
		int i=0;
		Connection con1 = null;
		 con1 = DBconnection.createConnection();
		 
		 try {
			PreparedStatement ps=con1.prepareStatement(sql);
			ps.setString(1,lb.getPassword());
			ps.setString(2,lb.getUser_id());
			i=ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return i;
	}

	public static LoginBean findByEmail(String email) {
		// TODO Auto-generated method stub
		LoginBean customer = null;
		Connection con2 = null;
		 con2 = DBconnection.createConnection();
		
		 ResultSet rs= null;
		 try (
			 PreparedStatement preparedStatement = con2.prepareStatement("SELECT * FROM login_credentials WHERE user_id = ?");) {
				 preparedStatement.setString(1, email);
				 rs = preparedStatement.executeQuery();
				 while (rs.next()) {
					    int login_id = rs.getInt("login_id");
		                String user_id = rs.getString("user_id");
		               
		                String password = rs.getString("password");
		       
		                int role_id = rs.getInt("role_id");
		              
		                customer = new LoginBean(login_id,user_id,password,role_id);
		            }
			 }
			 
		         catch (SQLException e) {
		            e.printStackTrace();;
		        }
		       
				return customer;
			 
		 }
		 
		

	public static boolean update(LoginBean customer) throws SQLException {
		// TODO Auto-generated method stub
		Connection con3 = null;
		 con3 = DBconnection.createConnection();
		 boolean rowUpdated;
	        try (
	            PreparedStatement statement = con3.prepareStatement("UPDATE login_credentials SET password = ? WHERE user_id = ?");) {
	        	 statement.setString(1, customer.getPassword());
		         statement.setString(2, customer.getUser_id());

	            rowUpdated = statement.executeUpdate() > 0;
	        }
	       
    return rowUpdated;
		
		
	}

	
	}


