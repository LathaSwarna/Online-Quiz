package com.onlineQuiz.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.onlineQuiz.bean.AdminConfirmBean;
import com.onlineQuiz.dao.AdminPageDao;

/**
 * Servlet implementation class AdminPageServlet
 */
@WebServlet("/AdminPageServlet")
public class AdminPageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String AdminConfirmBean = null;
	
	public AdminPageServlet() {
		super();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("11111111111");
		try {
			System.out.println("5555");
			String subject_id = request.getParameter("subject_id");
			int subject_id1 = Integer.parseInt(subject_id);
			
			String question_no = request.getParameter("question_no");
			int question_no1 = Integer.parseInt(question_no);
			
			String question = request.getParameter("question");
			String option1 = request.getParameter("option1");
			String option2 = request.getParameter("option2");
			String option3 = request.getParameter("option3");
			String option4 = request.getParameter("option4");
			String correctAnswer = request.getParameter("correctAnswer");
			int correctAnswer1 = Integer.parseInt(correctAnswer);
			System.out.println("11111111111");
			AdminConfirmBean adminConfirmBean = new AdminConfirmBean();
			adminConfirmBean.setsubject_id(subject_id1);
			adminConfirmBean.setquestion_no(question_no1);
			adminConfirmBean.setquestion(question);
			adminConfirmBean.setoption1(option1);
			adminConfirmBean.setoption2(option2);
			adminConfirmBean.setoption3(option3);
			adminConfirmBean.setoption4(option4);
			adminConfirmBean.setcorrectAnswer(correctAnswer1);
			System.out.println("22222");
			int validation = AdminPageDao.save(adminConfirmBean);
			System.out.println("33333");
			if
			(validation> 0)
			{ request.setAttribute("insert", true);
			request.getRequestDispatcher("AdminAddQuestion.jsp").forward(request, response);
			System.out.println("4444");
			}
			else
			{ request.setAttribute("insert", false);
			request.getRequestDispatcher("AdminQuestionForm.jsp").forward(request, response);
			}
		}
			catch(Exception e)
			{
				
			
	
		}
	}

}
