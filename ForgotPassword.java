package com.onlineQuiz.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.onlineQuiz.bean.ForgotPasswordBean;
import com.onlineQuiz.bean.LoginBean;
import com.onlineQuiz.dao.ForgotPasswordDao;
import com.onlineQuiz.dao.LoginDao;


@WebServlet("/ForgotPassword")
public class ForgotPassword extends HttpServlet {
public HttpSession session;

protected void doGet(HttpServletRequest request, HttpServletResponse response) 
throws ServletException, IOException {
  
  System.out.println("swarna");
  
  String emailid = request.getParameter("emailid");
String password = request.getParameter("password");


System.out.println("11111111");
ForgotPasswordBean loginBean = new ForgotPasswordBean();
loginBean.setemailid(emailid);
loginBean.setpassword(password);

System.out.println("11111111");


ForgotPasswordDao loginDao = new ForgotPasswordDao();
System.out.println("555");
String userValidate = loginDao.authenticateUser(loginBean); 
System.out.println("666666");
System.out.println("servlet 7777"+userValidate);
if(userValidate.equals("SUCCESS")) 
{
session = request.getSession(); 
session.setAttribute("password", password); 

request.setAttribute("swarna", true);

request.getRequestDispatcher("/Signup.jsp").forward(request, response);
}
else
{
        request.setAttribute("Candidatelogin", false);
request.setAttribute("errMessage", userValidate); //If authenticateUser() function returnsother than SUCCESS string it will be sent to Login page again. Here the error message returned from function has been stored in a errMessage key.
request.getRequestDispatcher("/forgotpassword.jsp").forward(request, response);//forwarding the request
}
}
}

