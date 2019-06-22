<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body {
  font-family: Arial, Helvetica, sans-serif;
}

.navbar {
  overflow: hidden;
  background-color: #0000cd;
}

.navbar a {
  float: right;
  font-size: 16px;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}

.dropdown {
  float: right;
  overflow: hidden;
}

.dropdown .dropbtn {
  font-size: 16px;  
  border: none;
  outline: none;
  color: white;
  padding: 14px 16px;
  background-color: inherit;
  font-family: inherit;
  margin: 0;
}

.navbar a:hover, .dropdown:hover .dropbtn {
  background-color: #ddd;
}

.dropdown-content {
  display: none;
  position: absolute;
  background-color: #f9f9f9;
  text-align: left;
  min-width: 160px;
  box-shadow: 0px 8px 10px 0px rgba(0,0,0,0.2);
  z-index: 1;
 }

.dropdown-content a {
  float: none;
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
  text-align: left;
}

.dropdown-content a:hover {
  background-color: #ddd;
}

.dropdown:hover .dropdown-content {
  display: block;
}

.images{
margin-left:2%;
}

.mysilde1{
float: left;
margin-left:30%;
margin-top: -10%;
}
.footer{
    width:100%;
    heighth:1000px;
    Background-color:white;
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
</head>
<body>
<div align="center">

</div>
<div class="navbar">
<img src="Images\swa.png" height=150px width=250px style="height: 97px; width: 102px">
   <a href="#contact">About</a>
  <a href="#contact">Contact</a>
  <div class="dropdown">
    <button class="dropbtn">Admin </a>
      <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content">
     <a href="AdminLogin.jsp">Login</a>
     </div>
  </div> 
   <div class="dropdown">
    <button class="dropbtn">Candidate 
      <i class="fa fa-caret-down"></i>
    </button>
    
    <div class="dropdown-content">
    <a href="Signup.jsp">Signup</a>
     <a href="Login.jsp">Login</a>
     </div>
  </div> 
  <div class="navbar">
  <a href="#home">Home</a>
 </div>
 </div>
 
 <br><br>
 <br><br>
 <div class="images">
<img src="Images\online1.jpeg" height=350px width=1000px style="width: 1500px; ">
</div>


</div>

<br><br>
<br><br>
<div class = "About">
<div class="main" id = "Section2">
<section style ="background-color:blue"></section>
</div>
  <h4>About</h4>
  <p>This online examination is mostly used for candidates to check their knowledge on a subject. QuizWave online software test motives to create a path for gaining knowledge on IT Sectors. This examination is fully IT based. The questions related to java, sql, HTML, CSS, JavaScript and including other technologies.</p>
  <p>The candidates who are interested in IT sectors, QuizWave test helps them a lot. It endures them to learn more software skills. This Exam marks helps the candidates to get the IT job easily. </p>
</div>

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
</html>
    