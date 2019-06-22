package com.onlineQuiz.dao;



import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;

import com.onlineQuiz.bean.ForgotPasswordBean;
import com.onlineQuiz.bean.LoginBean;

import com.onlineQuiz.util.DBConnection;

public class ForgotPasswordDao {

public String authenticateUser(ForgotPasswordBean loginbean )
{
String pass= loginbean.getpassword();
String emailid=loginbean.getemailid();
Connection con = null;

PreparedStatement st = null;

try
{
con = DBConnection.createConnection();
System.out.println("dao 111");
String query = "update candidate set password = '"+ loginbean.getpassword()+" "
+ "' Where emailid like '"+loginbean.getemailid() +"'";
      
System.out.println("dao 222"+query);
System.out.println("dao 333");	
st = con.prepareStatement(query);
//	st.setString(1, pass);
System.out.println("before execute update...");

int i= st.executeUpdate(query);

System.out.println("dao 444 "+i);

if (i!=0)  
return "SUCCESS"; 
}	
catch(SQLException e)
{
e.printStackTrace();
}
return "Oops.. Something went wrong there...!";
}
}

