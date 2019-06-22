package com.onlineQuiz.bean;

public class AdminConfirmBean {
	private int subject_id;
	private int question_no;
	private String question;
	private String option1;
	private String option2;
	private String option3;
	private String option4;
	private int correctAnswer;
	public int getsubject_id() {
		return subject_id;
	}
	public void setsubject_id(int subject_id) {
		this.subject_id = subject_id;
	}
	public int getquestion_no() {
		return question_no;
	}
	public void setquestion_no(int question_no) {
		this.question_no = question_no;
	}
	public String getquestion() {
		return question;
	}
	public void setquestion(String question) {
		this.question = question;
	}
	public String getoption1() {
		return option1;
	}
	public void setoption1(String option1) {
		this.option1 = option1;
	}
	public String getoption2() {
		return option2;
	}
	public void setoption2(String option2) {
		this.option2 = option2;
	}
	public String getoption3() {
		return option3;
	}
	public void setoption3(String option3) {
		this.option3 = option3;
	}
	public String getoption4() {
		return option4;
	}
	public void setoption4(String option4) {
		this.option4 = option4;
	}
	public int getcorrectAnswer() {
		return correctAnswer;
	}
	public void setcorrectAnswer(int correctAnswer) {
		this.correctAnswer = correctAnswer;
	}
	
	


}
