package com.onlineQuiz.util;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection {
	public static Connection createConnection()
	 {
	 Connection con = null;
	 String url = "jdbc:oracle:thin:@localhost:1521:xe";
	 String username = "hr"; 
	 String password = "hr"; 	 
	 try 
	 {
	 try 
	 {
	 Class.forName("oracle.jdbc.driver.OracleDriver"); 
	 } 
	 catch (ClassNotFoundException e)
	 {
	 e.printStackTrace();
	 }
	 
	 con = DriverManager.getConnection(url, username, password); 
	 System.out.println("Printing connection object "+con);
	 } 
	 catch (Exception e) 
	 {
	 e.printStackTrace();
	 }
	 
	 return con; 
	 }
	}



