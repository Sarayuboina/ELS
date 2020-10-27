package com.DBconnection;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.bean.LoginBean;

public class LoginDao {
	public String authenticateUser(LoginBean loginBean)
	{
	    int login_id = loginBean.getLogin_id();
	    String password = loginBean.getPassword();
	 
	    Connection con = null;
	    Statement statement = null;
	    ResultSet resultSet = null;
	 
	    int login_idDB;
	    String passwordDB = "";
	    int roleDB;
	 
	    try
	    {
	        con = DBconnection.createConnection();
	        statement = con.createStatement();
	        resultSet = statement.executeQuery("SELECT * FROM login_credentials INNER JOIN role ON login_credentials.role_id = role.role_id");
	 
	        while(resultSet.next())
	        {
	            login_idDB = resultSet.getInt("login_id");
	            passwordDB = resultSet.getString("password");
	            roleDB = resultSet.getInt("role_id");
	 
	            if(login_id==login_idDB && password.equals(passwordDB) && roleDB==1)
	            return "Admin_Role";
	            else if(login_id==login_idDB && password.equals(passwordDB) && roleDB==2)
	            return "Lecturer_Role";
	            else if(login_id==login_idDB && password.equals(passwordDB) && roleDB==3)
	            return "Student_Role";
	        }
	    }
	    catch(SQLException e)
	    {
	        e.printStackTrace();
	    }
	    return "Invalid user credentials";
	}
}

