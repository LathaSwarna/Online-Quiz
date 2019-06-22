<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
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
.btn {
    padding: 14px 20px;
    background-color: #f44336;
     width: 25%;
     height:10%;
      float: right;
      margin-right:30%;
       margin-top: 1%;
    
}

/* Float cancel and loginup buttons and add an equal width */
 .btn2 {
  float:center;
  width: 25%;
  height:10%;
  margin-left: 10%;
  
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

<form action="ForgotPassword" method="get" onsubmit = "return validate()">
<div class="topnava">

</div>

<br><br>

    <div class ="candidateid-box">
    <h1>Set Password</h1>
    
    <div class="textbox">
    <input type="text"placeholder="Email ID" Id="emailid" name="emailid">
    </div>
    <div class="textbox">
    <input type="password"placeholder="New Password" Id="password" name="password">
 </div>   
 
 <div class="textbox">
    <input type="password"placeholder= "Confrim Password" Id="confrimPassword" name="confrim Password">
 </div>   
 
 <br><br>
    <button type="submit" class="btn">Cancel</button>
     <button type="submit" class="btn2">Submit</button>
  <!--   <button type="submit" class="addbtn">Add</button>-->
   </form>
   <script>
   function validate()
{
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
	
	var confirmPassword = document.getElementById("confirmPassword").value;
	if(confirmPassword==""){
		 alert("Enter your confirm password");	
			    	 return false;
	             }
	  else{
		  if(confirmPassword != password){
			  alert("Confirm Password is not matched");	
		    	 return false;
		  }
		  var emailId = document.getElementById("emailId").value;
	var reg = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;

	 if(emailId==""){
		 alert("Please fill email address");	
			    	 return false;
	             }
   }
   }
   </script>
	  
</body>
</html>