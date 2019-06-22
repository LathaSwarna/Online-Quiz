package com.onlineQuiz.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.onlineQuiz.bean.AdminBean;
import com.onlineQuiz.bean.LoginBean;
import com.onlineQuiz.dao.AdminDao;
import com.onlineQuiz.dao.LoginDao;

/**
 * Servlet implementation class AdminLogin
 */
@WebServlet("/AdminLogin")
public class AdminLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AdminLogin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String userName = request.getParameter("userName");
		String password = request.getParameter("password");
		System.out.println("mani");
		
		AdminBean adminBean = new AdminBean();
		adminBean.setUserName(userName);
		adminBean.setPassword(password);
		System.out.println("maniiii");
		
		AdminDao adminDao = new AdminDao();
		String userValidate = adminDao.authenticateUser(adminBean); 
		 
		if(userValidate.equals("SUCCESS")) 
		 {
			HttpSession session = request.getSession(); 
			session.setAttribute("userName", userName); 
		//request.setAttribute("emailId", emailId); 
			request.setAttribute("swarna2", true);
			
			request.getRequestDispatcher("/AdminAddQuestion.jsp").forward(request, response);
		 }
		 else
		 {
			 request.setAttribute("AdminLogin", false);
				
		 request.setAttribute("errMessage", userValidate); 
		 request.getRequestDispatcher("/AdminLogin.jsp").forward(request, response);
		 }
		
	}
	}


