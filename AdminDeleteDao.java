package com.onlineQuiz.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.text.ParseException;

import com.onlineQuiz.bean.AdminConfirmBean;
import com.onlineQuiz.util.DBConnection;

public class AdminDeleteDao {
	public static int save1(AdminConfirmBean c)throws ParseException
	{
		int status = 0;
		
		Integer question_no = c.getquestion_no();
		try {
			Connection con = DBConnection.createConnection();
			PreparedStatement ps = con.prepareStatement("delete from question where question_no = ?");
			
			ps.setInt(1, c.getquestion_no());
		}catch(Exception e)
		{
			
		
		}return status;
	}
}
