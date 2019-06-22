package com.onlineQuiz.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.text.ParseException;

import com.onlineQuiz.bean.AdminConfirmBean;
import com.onlineQuiz.util.DBConnection;

public class AdminPageDao {

	public static int save(AdminConfirmBean b)throws ParseException
	{
		int status = 0;
		
		Integer subject_id = b.getsubject_id();
		Integer question_no = b.getquestion_no();
		String question = b.getquestion();
		String option1 = b.getoption1();
		String option2 = b.getoption2();
		String option3 = b.getoption3();
		String option4 = b.getoption4();
		Integer correctAnswer = b.getcorrectAnswer();
		
		try {
			Connection con = DBConnection.createConnection();
			PreparedStatement ps = con.prepareStatement("Insert into question(subject_id,question_no,"
					+ "question,option1,option2,option3,option4,correctAnswer)values(?,?,?,?,?,?,?,?)");
			
			ps.setInt(1, b.getsubject_id());
			ps.setInt(2, b.getquestion_no());
			ps.setString(3, b.getquestion());
			ps.setString(4, b.getoption1());
			ps.setString(5, b.getoption2());
			ps.setString(6, b.getoption3());
			ps.setString(7, b.getoption4());
			ps.setInt(8, b.getcorrectAnswer());
			status = ps.executeUpdate();
		}catch(Exception e)
		{
			System.out.println(e);
		}
		return status;
	}
}
