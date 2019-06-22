package com.onlineQuiz.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.onlineQuiz.bean.LoginBean;

import com.onlineQuiz.dao.LoginDao;

/**
 * Servlet implementation class CandidateLogin
 */
@WebServlet("/CandidateLogin")
public class CandidateLogin extends HttpServlet {
	public HttpSession session;
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CandidateLogin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String emailId = request.getParameter("emailId");
		String password = request.getParameter("password");
		 
		
		LoginBean loginBean = new LoginBean();
		loginBean.setEmailId(emailId);
		loginBean.setPassword(password);
		
		LoginDao loginDao = new LoginDao();
		String userValidate = loginDao.authenticateUser(loginBean); 
		 
		if(userValidate.equals("SUCCESS")) 
		{
			session = request.getSession(); 
			session.setAttribute("emailId", emailId); 	
		//request.setAttribute("emailId", emailId); 
			request.setAttribute("Swarna1", true);
			
			request.getRequestDispatcher("/Subject.jsp").forward(request, response);
		 }
		 else
		 {
	         request.setAttribute("CandidateLogin", false);
		 request.setAttribute("errMessage", userValidate); 
		 request.getRequestDispatcher("/Login.jsp").forward(request, response);
		 }
		
	}

}
