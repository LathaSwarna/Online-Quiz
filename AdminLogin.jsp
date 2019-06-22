<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin Login</title>
</head>
<body>
<style>
* {box-sizing: border-box;}

body { 
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
}

.header {
  overflow: hidden;
  background-color: white;
  padding: 20px 10px;
}    .header-left{
            -webkit-box-flex: 0;
    -ms-flex: 0 0 33.333333%;
    flex: 0 0 33.333333%;
    max-width: 33.333333%;
        display: inline-block;

    }
    .header-left h4{
        margin: 0;
    }
    .header-right{
        -webkit-box-flex: 0;
    -ms-flex: 0 0 66.666667%;
    flex: 0 0 66.666667%;
    max-width: 66.666667%;
    }
.header a {
  float: left;
  color: black;
  text-align: center;
  padding: 12px;
  text-decoration: none;
  font-size: 18px; 
  line-height: 25px;
  border-radius: 4px;
}

.header a.logo {
  font-size: 25px;
  font-weight: bold;
}

.header a:hover {
  background-color: rgba(240, 4, 169, 0.726);
  color: black;
}

.header a.active {
  background-color: dodgerblue;
  color: white;
}

.header-right {
  float: right;
}
    .title-header{
        padding: 20px;
    }

@media screen and (max-width: 500px) {
  .header a {
    float: none;
    display: block;
    text-align: left;
  }
  .header-right {
    float: none;
  }  
</style>

</head>
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
}

/* Float cancel and signup buttons and add an equal width */
.cancelbtn, .addbtn {
  float: left;
  width: 20%;
}

/* Add padding to container elements */
.container {
    background-image: url("Images/pexels-photo-743986.jpeg");
    padding: 40px;
    color:rgb(5, 8, 211);
    
    border-style: solid;
    
    border-color: green;
    
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
<style>
.footer{
    width:100%;
    heighth:1000px;
    Background-color:#1abaeb;
    text-align:center;


}
.footer a {
 
  color: black;
  text-align: center;
  padding: 12px;
  text-decoration: none;
  font-size: 18px; 
  line-height: 25px;
  border-radius: 4px;
}

.footer a:hover {
  background-color: rgba(240, 4, 169, 0.726);
  color: black;
}
.fa {
  padding: 2px 5px;
  font-size: 30px;
  text-align: center;
  text-decoration: none;
  }
.fa:hover {
    opacity: 0.7;
}
.fa-facebook-square {
  background: #3B5998;
  color: white;
}
.fa-twitter {
  background: #55ACEE;
  color: white;
}
.fa-google {
  background: #dd4b39;
  color: white;
}
.fa-yahoo {
  background: #430297;
  color: white;
}
.fa-youtube {
  background: #bb0000;
  color: white;
}
.fa-instagram {
  background: #125688;
  color: white;
  
}

</style>
<style>
a {
    text-decoration: none;
    display: inline-block;
    padding: 8px 16px;
}

a:hover {
    background-color: #ddd;
    color: black;
}


.previous {
    background-color:orange;
    color: black;
}

.next {
    background-color: #4CAF50;
    color: white;
}


</style>

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
    float:center;
}

/* Float cancel and loginup buttons and add an equal width */
.cancelbtn, .loginbtn {
  float: center;
  width: 25%;
}

/* Add padding to container elements */
.container {
    background-image: url("Images/pexels-photo-743986.jpeg");
    padding: 40px;
    color:rgba(252, 11, 220, 0.753);
    border-style: solid;
    
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
       float:center;
    }
}
</style>
<body>
<div class="header">
    <div class="header-left">
       
     <div class="header-right">
        <a href="Home.jsp">Logout</a>
    </div>
 </div>
 <a href="AdminAddQuestion.jsp" class="previous">&laquo; Back</a>
<a href="#" class="next">Next &raquo;</a><br><br>


<form action="AdminLogin" method=post onsubmit = "return validate()" style="border:1px solid #ccc">
  <div class="container">
   
    <h1>Admin Login</h1>
    <p>Please fill in this form to login an account.</p>
    

    <label for="uname"><b>User Name</b></label>
    <input type="text" placeholder="Enter User Name" name="userName" required>

    <label for="psw"><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="password" required>
    
    </label>
    
    

    <div class="clearfix">
      <button type="submit" class="loginbtn">Login</button>
      <center><button type="button" class="cancelbtn">Cancel</button></center>
      
    </div>
  </div>
</form>
<div class="footer">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <a href="#home">Home</a>
   <a href="#contact">Contact</a>
        <a href="#Section2">About</a><br><br>
  
  <a href="#" class="fa fa-facebook-square"></a>
<a href="#" class="fa fa-twitter"></a>
<a href="#" class="fa fa-google"></a>
<a href="#" class="fa fa-yahoo"></a>
<a href="#" class="fa fa-youtube"></a>
<a href="#" class="fa fa-instagram"></a><br><br><br><br>
<b>&copy; Copyright 2019 Exam.QuizWave Online Software Test</b>

</div>
    
</body>
</html><html><head>
<meta charset="ISO-8859-1">
<title></title>
</head>
<body>

</body>
</html>