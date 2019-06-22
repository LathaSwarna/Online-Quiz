<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<style>
body {font-family: Arial, Helvetica, sans-serif;}
* {box-sizing: border-box}

/* Full-width input fields */
input[type=text], input[type=password] {
    width: 100%;
    padding: 15px;
    margin: 5px 0 22px 0;
    display: inline-block;
    border: none;
    background: #f1f1f1;
}

input[type=text]:focus, input[type=password]:focus {
    background-color: #ddd;
    outline: none;
}

hr {
    border: 1px solid #f1f1f1;
    margin-bottom: 25px;
}

/* Set a style for all buttons */
button {
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 100%;
    opacity: 0.9;
}

button:hover {
    opacity:1;
}

/* Extra styles for the cancel button */
.cancelbtn {
    padding: 14px 20px;
    background-color: #f44336;
     width: 25%;
     height:10%;
      float: left;
      margin-left:30%;
       margin-top:-4%;
    
}

/* Float cancel and loginup buttons and add an equal width */
 .loginbtn {
  float:center;
  width: 25%;
  height:10%;
  margin-right: 10%;
  
}

/* Add padding to container elements */
.container {
    background-image: url("Images/pexels-photo-743986.jpeg");
    padding: 40px;
    color:rgb(5, 8, 211);
    border-style: solid;
    box-shadow: 2px 1px 2px 2px green;
    border-color: green;
    
}

/* Clear floats */
.clearfix::after {
    content: "";
    clear: both;
    display: table;
}

/* Change styles for cancel button and signup button on extra small screens */
@media screen and (max-width: 300px) {
    .cancelbtn, .loginbtn {
       width: 50%;
     
    }
}
</style>
<body>

<form action="CandidateLogin" method=post onsubmit = "return validate()" style="border:1px solid #ccc">
  <div class="container">
  
    <h1>Login</h1>
    <p>Please fill in this form to login an account.</p>
    <hr>

    <label for="email"><b>Email</b></label> <input type="text" placeholder="Enter Email" Id = "emailId" name="emailId" >

			<label for="psw"><b>Password</b></label>
    <input type="password" placeholder="Enter Password" Id = "password" name="password">
    
    </label>
    
    <div class="clearfix">
       <button type="submit" class="loginbtn">Login</button><br>
       <button type="button" class="cancelbtn" onclick="window.location.href='Home.jsp'">Cancel</button><br><br><br>
      <p> If you are a New User,<a href="Signup.jsp">Click here</a>
      <a href="ForgotPassword.jsp">ForgotPassword</a>
    </div>
  </div>
</form>

<script>
function validate()
{
	var emailId = document.getElementById("emailId").value;
	var reg = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;

	 if(emailId==""){
		 alert("Please fill mail address");	
			    	 return false;
	             }
	 var password = document.getElementById("password").value;
		if(password ==""){
			 alert("Please fill password");	
				    	 return false;
		             }
		else{
			 if(password.length<5)
				 {
				 alert("password Should Be Minimum 4 Characters");	
		    	 return false;
				 }
			  }
}
	
	
</script>

</body>
</html>