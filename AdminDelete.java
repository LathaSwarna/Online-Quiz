package com.onlineQuiz.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.onlineQuiz.bean.AdminConfirmBean;
import com.onlineQuiz.dao.AdminDeleteDao;
import com.onlineQuiz.dao.AdminPageDao;


@WebServlet("/AdminDelete")
public class AdminDelete extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public AdminDelete() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {
			String question_no = request.getParameter("question_no");
			int question_no1 = Integer.parseInt(question_no);
			
			AdminConfirmBean adminConfirmBean = new AdminConfirmBean();
			
			adminConfirmBean.setquestion_no(question_no1);
			int validation = AdminDeleteDao.save1(adminConfirmBean);
			if
			(validation> 0)
			{ 
				request.setAttribute("Delete", true);
			request.getRequestDispatcher("AdminAddQuestion.jsp").forward(request, response);
			}
			else
			{ request.setAttribute("Delete", false);
			request.getRequestDispatcher("AdminQuestionForm.jsp").forward(request, response);
			}
		}
			catch(Exception e)
			{
				
			
	
		}
	}

}
		
