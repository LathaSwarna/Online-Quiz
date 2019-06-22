package com.onlineQuiz.dao;



import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.onlineQuiz.bean.LoginBean;

import com.onlineQuiz.util.DBConnection;

public class LoginDao {
	public String authenticateUser(LoginBean loginBean)
	{
		String emailId = loginBean.getEmailId();
		String password = loginBean.getPassword();
		
		Connection con = null;
		Statement statement = null;
		ResultSet resultset = null;
		
		String emailIdDB = "";
		String passwordDB = "";
		
		try {
			con = DBConnection.createConnection();
			statement =con.createStatement();
			resultset = statement.executeQuery("select emailId, password from candidate");
			
			while(resultset.next())
			{
				emailIdDB = resultset.getString("emailId");
				passwordDB = resultset.getString("password");
				
				System.out.println(emailId);
				System.out.println(password);
				if(emailId.equals(emailIdDB) && password.equals(passwordDB))
				{
				return "SUCCESS"; 
				}
			}
		}
				catch(SQLException e)
				{
				e.printStackTrace();
				}
				return "Invalid user credentials"; 
	}
			
	}	

			
		
		
		
	



