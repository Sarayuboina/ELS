package com.DBconnection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.bean.ClassBean;
import com.bean.SubBean;

public class ClassDao {
	 private String jdbcURL = "jdbc:mysql://localhost:3306/e_learning_system";
	    private String jdbcUsername = "root";
	    private String jdbcPassword = "root";
	 private static final String INSERT_SUBJECT_SQL = "INSERT INTO subject" + "  (sub_id,sub_name) VALUES " + " (NULL, ?);";
	 private static final String SELECT_ALL_SUBJECT = "select * from subject";
	 private static final String DELETE_SUBJECT_SQL = "delete from subject where sub_id = ?;";
	 private static final String INSERT_STANDARD_SQL = "INSERT INTO standard" + "  (standard_id,standard_name) VALUES " + " (NULL, ?);";
	 private static final String SELECT_ALL_STANDARD = "select * from standard";
	 private static final String DELETE_STANDARD_SQL = "delete from standard where standard_id = ?;";
	   
	 protected Connection getConnection() {
	        Connection connection = null;
	        try {
	            Class.forName("com.mysql.jdbc.Driver");
	            connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
	        } catch (SQLException e) {
	            // TODO Auto-generated catch block
	            e.printStackTrace();
	        } catch (ClassNotFoundException e) {
	            // TODO Auto-generated catch block
	            e.printStackTrace();
	        }
	        return connection;
	    }
	
	 public void insertSubject(SubBean sub) throws SQLException {
	        System.out.println(INSERT_SUBJECT_SQL);
	        // try-with-resource statement will auto close the connection.
	     
	        try (Connection connection = getConnection(); PreparedStatement preparedStatement = connection.prepareStatement(INSERT_SUBJECT_SQL)) {
	            preparedStatement.setString(1, sub.getSub_name());
	          
	            System.out.println(preparedStatement);
	            preparedStatement.executeUpdate();
	        } catch (SQLException e) {
	            printSQLException(e);
	        }
	    }
	 public List < SubBean > selectAllSubject() {

	        // using try-with-resources to avoid closing resources (boiler plate code)
	        List<SubBean> subs = new ArrayList < > ();
	        // Step 1: Establishing a Connection
	        try (Connection connection = getConnection();

	            // Step 2:Create a statement using connection object
	            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_SUBJECT);) {
	            System.out.println(preparedStatement);
	            // Step 3: Execute the query or update query
	            ResultSet rs = preparedStatement.executeQuery();

	            // Step 4: Process the ResultSet object.
	            while (rs.next()) {
	            	int sub_id = rs.getInt("sub_id");
	            	String sub_name = rs.getString("sub_name");
	               
	                subs.add(new SubBean(sub_id, sub_name));
	            }
	        } catch (SQLException e) {
	            printSQLException(e);
	        }
	        return subs;
	    }

	    public boolean deleteSubject(int sub_id) throws SQLException {
	        boolean rowDeleted;
	        try (Connection connection = getConnection(); PreparedStatement statement = connection.prepareStatement(DELETE_SUBJECT_SQL);) {
	            statement.setInt(1, sub_id);
	            rowDeleted = statement.executeUpdate() > 0;
	        }
	        return rowDeleted;
	    }
	    public void insertStandard(ClassBean stndrd) throws SQLException {
	        System.out.println(INSERT_STANDARD_SQL);
	        // try-with-resource statement will auto close the connection.
	       
	        try (Connection connection = getConnection(); PreparedStatement preparedStatement = connection.prepareStatement(INSERT_STANDARD_SQL)) {
	            preparedStatement.setString(1, stndrd.getStandard_name());
	          
	            System.out.println(preparedStatement);
	            preparedStatement.executeUpdate();
	        } catch (SQLException e) {
	            printSQLException(e);
	        }
	    }
	 public List < ClassBean > selectAllStandard() {

	        // using try-with-resources to avoid closing resources (boiler plate code)
	        List < ClassBean > stndrds = new ArrayList < > ();
	        // Step 1: Establishing a Connection
	        try (Connection connection = getConnection();

	            // Step 2:Create a statement using connection object
	            PreparedStatement preparedStatement = connection.prepareStatement(SELECT_ALL_STANDARD);) {
	            System.out.println(preparedStatement);
	            // Step 3: Execute the query or update query
	            ResultSet rs = preparedStatement.executeQuery();

	            // Step 4: Process the ResultSet object.
	            while (rs.next()) {
	            	int standard_id = rs.getInt("standard_id");
	            	String standard_name = rs.getString("standard_name");
	               
	                stndrds.add(new ClassBean(standard_id, standard_name));
	            }
	        } catch (SQLException e) {
	            printSQLException(e);
	        }
	        return stndrds;
	    }

	    public boolean deleteStandard(int standard_id) throws SQLException {
	        boolean rowDeleted;
	        try (Connection connection = getConnection(); PreparedStatement statement = connection.prepareStatement(DELETE_STANDARD_SQL);) {
	            statement.setInt(1, standard_id);
	            rowDeleted = statement.executeUpdate() > 0;
	        }
	        return rowDeleted;
	    }


	private void printSQLException(SQLException ex) {
		// TODO Auto-generated method stub
		 for (Throwable e: ex) {
	            if (e instanceof SQLException) {
	                e.printStackTrace(System.err);
	                System.err.println("SQLState: " + ((SQLException) e).getSQLState());
	                System.err.println("Error Code: " + ((SQLException) e).getErrorCode());
	                System.err.println("Message: " + e.getMessage());
	                Throwable t = ex.getCause();
	                while (t != null) {
	                    System.out.println("Cause: " + t);
	                    t = t.getCause();
	                }
	            }
		 }
	}
}
	            
		
		
	



