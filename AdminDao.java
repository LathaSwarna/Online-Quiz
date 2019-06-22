package com.onlineQuiz.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.onlineQuiz.bean.AdminBean;
import com.onlineQuiz.bean.LoginBean;
import com.onlineQuiz.util.DBConnection;

public class AdminDao {
	public String authenticateUser(AdminBean adminBean)
	{
		String userName = adminBean.getUserName();
		String password = adminBean.getPassword();
		
		Connection con = null;
		Statement statement = null;
		ResultSet resultset = null;
		
		String userNameDB = "";
		String passwordDB = "";
		
		try {
			con = DBConnection.createConnection();
			statement =con.createStatement();
			System.out.println("manisws");
			
			resultset = statement.executeQuery("select name,password from admindetails");
			
			while(resultset.next())
			{
			
				userNameDB = resultset.getString("name");
				passwordDB = resultset.getString("password");
				
				System.out.println(userName);
				System.out.println(password);
				if(userName.equals(userNameDB) && password.equals(passwordDB))
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