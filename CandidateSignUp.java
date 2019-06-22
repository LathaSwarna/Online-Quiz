package com.onlineQuiz.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.onlineQuiz.bean.SignupBean;

import com.onlineQuiz.dao.SignupDao;



/**
 * Servlet implementation class CandidateSignUp
 */
@WebServlet("/CandidateSignUp")
public class CandidateSignUp extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CandidateSignUp() {
        super();
        // TODO Auto-generated constructor stub
    }

		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String candiadte_id = request.getParameter("candiadte_id");  //Here we have to give same names as gave in HTML
		String name = request.getParameter("name");
		String password = request.getParameter("password");
		//String confirmPassword = request.getParameter("confirmPassword");
		String emailId = request.getParameter("emailId");
		String gender = request.getParameter("gender");

		String mobileNumber = request.getParameter("mobileNumber");
		String city = request.getParameter("city");
		
		SignupBean signupBean = new SignupBean();
		signupBean.setCandiadte_id(candiadte_id);
		signupBean.setName(name);
		signupBean.setPassword(password);
		//signupBean.setConfirmPassword(confirmPassword);
		signupBean.setEmail(emailId);
		signupBean.setGender(gender);
		signupBean.setMobileNumber(mobileNumber);
		signupBean.setCity(city);
		
		SignupDao signupDao = new SignupDao();
	 
		String userSignup = signupDao.signupUser(signupBean);
		if(userSignup.equals("SUCCESS"))   
		{
			request.setAttribute("Swarna", true);
		request.getRequestDispatcher("/Home.jsp").forward(request, response);
		}
		else   
		{
			request.setAttribute("CandidateSignUp", false);
		request.setAttribute("errMessage", userSignup);
		request.getRequestDispatcher("/Signup.jsp").forward(request, response);
		}
		}
}

