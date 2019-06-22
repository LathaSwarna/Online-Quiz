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
  background-color: white;
}

.navbar a {
  float: right;
  font-size: 18px;
  color: black;
  text-align: center;
  padding: 20px 20px;
  text-decoration: none;
  
  
}
.navbar {
    -webkit-box-shadow: 0 8px 6px -6px #999;
    -moz-box-shadow: 0 5px 5px -6px #999;
    box-shadow: 0 10px 10px -6px #999;

    /* the rest of your styling */
}

.dropdown {
  float: right;
  overflow: hidden;
}

.dropdown .dropbtn {
  font-size: 18px;
  border: none;
  outline: none;
  color: black;
  padding: 14px 16px;
  background-color: inherit;
  font-family: inherit;
  margin: 8px;
  
}

.navbar a:hover, .dropdown:hover .dropbtn {
  background-color: #ddd;
}


.dropdown-content {
  display: none;
  position: absolute;
  background-color: #f9f9f9;
  text-align: left;
  padding: -20px -5px;
  min-width: 160px;
  min-height:-400px;
  box-shadow: 0px 0px 0px 0px rgba(0,0,0,0.1);
  z-index: 1;
 }

.dropdown-content a {
  float: none;
  color: black;
  padding: 10px -10px;
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
.gg{
    margin: -20px;
	padding: -5px;
	height: 8%;
	width: -5%;
	float: left;
	font-family: cursive;
	font-weight: bold;

}
.container {
  position: relative;
  max-width: 1500px;
   margin: 0 auto;
}

.container img {vertical-align: middle;}

.container .content {
  position: absolute;
  bottom: 0;
  background: rgb(0, 0, 0); /* Fallback color */
  background: rgba(0, 0, 0, 0.5); /* Black background with 0.5 opacity */
  color: #f1f1f1;
  width: 100%;
  height: 100%;'
  padding: 180px;
  margin-text: 120px;
}
</style>
</head>
<body>
<div class="navbar">

   
  <a href="#contact">Contact</a>
 
  <div class="dropdown">
    <button class="dropbtn">Admin 
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
 <div class="gg">
    <a target="_blank" href="Home.jsp">
       <img src="Images\swa.png" height="150px" width="150px" style="height: 70px; width: 75px">
    </a>
 </div>
  </div>
 
 <section style ="background-color:blue"></section>
</div>
 <div class="container">
 <section>
  <img src="Images\l1.jpg" alt="Notebook" width="1800px" height="500px"
  style="width:100%">
  </section>
  <div class="content">
    <h1>About</h1>
    <p>  <p>This online examination is mostly used for candidates to check their knowledge on a subject.
     QuizWave online software test motives to create a path for gaining knowledge on IT Sectors. 
     This examination is fully IT based. The questions related to java, sql, HTML, CSS, JavaScript and including other 
     technologies.</p>
  <p>The candidates who are interested in IT sectors, QuizWave test helps them a lot. 
  It endures them to learn more software skills. This Exam marks helps the candidates to get the IT job easily.</p>
  </div>
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
<script>

    