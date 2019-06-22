<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Sign Up</title>
</head>
<body>
<style>
body {font-family: Arial, Helvetica, sans-serif;}
* {box-sizing: border-box;}

/* Full-width input fields */
input[type=text], input[type=password] {
    width: 100%;
    padding: 15px;
    margin: 5px 0 22px 0;
    display: inline-block;
    border: none;
    background: #f1f1f1;
}

/* Add a background color when the inputs get focus */
input[type=text]:focus, input[type=password]:focus {
    background-color: #ddd;
    outline: none;
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
      margin-left: 10%;
}

/* Float cancel and signup buttons and add an equal width */
.cancelbtn{
  float: right;
  width: 20%;
    margin-right: 50%;
    margin-top: -5%;
}
.signupbtn {
  float: right;
  width: 20%;
   margin-right: 80%;
}



/* The Modal (background) */
.modal {
    display: none; /* Hidden by default */
    position: fixed; /* Stay in place */
    z-index: 1; /* Sit on top */
    left: 0;
    top: 0;
    width: 100%; /* Full width */
    height: 100%; /* Full height */
    overflow: auto; /* Enable scroll if needed */
    background-color: #474e5d;
    padding-top: 50px;
}

/* Modal Content/Box */
.modal-content {
    background-color: #fefefe;
    margin: 5% auto 15% auto; /* 5% from the top, 15% from the bottom and centered */
    border: 1px solid #888;
    width: 80%; /* Could be more or less, depending on screen size */
}

/* Style the horizontal ruler */
hr {
    border: 1px solid #f1f1f1;
    margin-bottom: 25px;
}
 
/* The Close Button (x) */
.close {
    position: absolute;
    right: 35px;
    top: 15px;
    font-size: 40px;
    font-weight: bold;
    color: #f1f1f1;
}

.close:hover,
.close:focus {
    color: #f44336;
    cursor: pointer;
}

/* Clear floats */
.clearfix::after {
    content: "";
    clear: both;
    display: table;
}

/* Change styles for cancel button and signup button on extra small screens */
@media screen and (max-width: 300px) {
    .cancelbtn, .signupbtn {
       width: 50%;
    }
}
</style>
<body>

<form name = "myform" action="CandidateSignUp" method="post" onsubmit="return validate()">
    <div class="container">
   
      <h1>Sign Up</h1>
      <p>Please fill in this form to create an account.</p>
      <hr>
      <label for="Candidate Id"><b>Candidate Id</b></label>
      <input type="text" placeholder="Enter Candidate Id" Id = "rollNo" name="rollNo">
      
      <label for="name"><b>Name</b></label>
      <input type="text" placeholder=" Enter Name" Id = "name" name="name" >
      
      <label for="psw"><b>Password</b></label>
      <input type="password" placeholder="Enter Password"Id = "password" name="password" >

      <label for="confirm psw"><b>Confirm Password</b></label>
      <input type="password" placeholder="Enter Confirm Password" Id = "confirmPassword" name="confirmPassword" >
     
      <label for="email"><b>Email</b></label>
      <input type="text" placeholder="Enter Email" Id = "emailId" name="emailId" >

      <label for="gender"><b>Gender :</b></label>
      <input type="radio" placeholder="gender" Id = "gender" name="gender" value="male" checked>Male</input>
      <input type="radio" placeholder="gender" Id = "gender" name="gender" value="Female">Female<br><br>   
      
      <label for="Mobile Number"><b>Mobile Number</b></label>
      <input type="text" placeholder="Enter Mobile Number" Id = "mobileNumber" name="mobileNumber" >
      
      <label for="city"><b>City :</b></label>
      <select name = "city" Id = "city">
   <option> CHOOSE CITY</option>
   <option>Bangaluru </option>
   <option>Chennai </option>
   <option>Coimbatore  </option>
   <option>Hyderabad</option>
   <option>Madurai </option>
   <option>Tirupati </option>
 </select><br><br>
 </label>
  <div class="clearfix">
      <center><button type="submit" class="signupbtn">Sign Up</button></center><br><br><br><br>
        <button type="button" class="cancelbtn" onclick="window.location.href='Home.jsp'">Cancel</button>
        
      </div>
    </div>
  </form>
</div>

<script>
function validate()
{

	var candidate_id = document.getElementById("candidate_id").value;
	if(candidate_id.trim() == "")
	  {
	  alert("enter candidate_id no");
	  return false;
  }
else{
	  if(candidate_id.length !=6)
		  {
		  alert("candidate_id must be 6 digits only");	
		    	 return false;	  
		  }
	   }

	
	var name = document.getElementById("name").value;
	 if(name==""){
		 alert("Please fill Name");	
			    	 return false;
	             }
	 else{
		 if(name.length<2)
			 {
			 alert("Name Should Be Minimum 2 Characters");	
	    	 return false;
			 }
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
	  }
	
	var emailId = document.getElementById("emailId").value;
	var reg = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;
	if(email.length==0)
                 return;
            var xmlhttp=new XMLHttpRequest();
            xmlhttp.onreadystatechange=function(){
              if (xmlhttp.readyState==4 && xmlhttp.status==200){
                    if(xmlhttp.responseText==0){
                        document.getElementById('email').value='';
                        alert('Email already exists');
                    }
                else if(xmlhttp.responseText==1){
                      document.getElementById('email').value='';
                      alert('Invalid Email');      
                }
            }

	 if(emailId==""){
		 alert("Please fill mail address");	
			    	 return false;
	             }
	  
	
	var mobileNumber = document.getElementById("mobileNumber").value;
	 
	 if(mobileNumber==""){
		 alert("Please fill mobile number");	
			    	 return false;
	             }
	  else{
		  if(mobileNumber.length!=10){
			  alert("MobileNumber must be 10 digits");	
		    	 return false;
			  
		  }
}
	
	var city = document.getElementById("city").value;
	if(city==""){
			 alert("Please fill city");	
				    	 return false;
		             }
		 	 

		
	function passwordfunction(){
		 alert("Password should have atleast One uppercase,lowercase,speciel,numeric");	
		 	
	}
	function emailfunction(){
		 alert("example@gmail.com");	
}

</script>


  </body>
</html>