package com.onlineQuiz.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.onlineQuiz.bean.SignupBean;
import com.onlineQuiz.util.DBConnection;

public class SignupDao {
	public String signupUser(SignupBean signupBean)
	 {
		 System.out.println("first");
     String candiadte_id = signupBean.getcandiadte_id();
     System.out.println("second");
	 String name = signupBean.getName();
	 String password = signupBean.getPassword();
	// String confirmPassword = signupBean.getConfirmPassword();
	 String emailId = signupBean.getEmail();
	 String gender = signupBean.getGender();
	 String mobileNumber = signupBean.getMobileNumber();
	 String city = signupBean.getCity();
	 System.out.println("333333333333333");
	 Connection con = null;
	 PreparedStatement st = null;
	 
	 
	 try
		{
		 con = DBConnection.createConnection();
		 System.out.println("last");
		 System.out.println("4444444444");
		 String query = "Insert into candidate(candidate_id,Name,password,emailId,gender,mobileNumber,city) values(?,?,?,?,?,?,?)";  //to display
		System.out.println("5555555");	 
		 st = con.prepareStatement(query);
			st.setString(1, candiadte_id);
			st.setString(2, name);
			st.setString(3, password);
		//	st.setString(4, confirmPassword);
		    st.setString(4, emailId);
		    st.setString(5, gender);
			st.setString(6, mobileNumber);
			st.setString(7, city);
			System.out.println("about to execute...");
			int i= st.executeUpdate();
			System.out.println(i);
			
			if (i!=0)  //Just to ensure data has been inserted into the database
			return "SUCCESS"; 
			}
			catch(SQLException e)
			{
			e.printStackTrace();
			}
			return "Oops.. Something went wrong there..!";  // On failure, send a message from here.
			}
	
	 
}
