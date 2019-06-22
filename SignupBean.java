package com.onlineQuiz.bean;

public class SignupBean {
        private String candiadte_id;
		private String name;
		private String password;
	    private String emailId;
		private String gender;
		private String mobileNumber;
		private String city;
		public String getcandiadte_id() {
			return candiadte_id ;
		}
		public void setCandiadte_id(String candiadte_id) {
			this.candiadte_id = candiadte_id;
		}
		public String getName() {
			return name;
		}
		public void setName(String name) {
			this.name = name;
		}
		public String getPassword() {
			return password;
		}
		public void setPassword(String password) {
			this.password = password;
		}
		public String getEmail() {
			return emailId;
		}
		public void setEmail(String emailId) {
			this.emailId = emailId;
		}
		public String getGender() {
			return gender;
		}
		public void setGender(String gender) {
			this.gender = gender;
		}
		public String getMobileNumber() {
			return mobileNumber;
		}
		public void setMobileNumber(String mobileNumber) {
			this.mobileNumber = mobileNumber;
		}
		public String getCity() {
			return city;
		}
		public void setCity(String city) {
			this.city = city;
		}
		
	}



