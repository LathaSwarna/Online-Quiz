
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
 
     
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Java Question1</title>
<style>
* {box-sizing: border-box;}

body { 
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
}

.header {
  overflow: hidden;
  background-color: white;
  padding: 30px 20px;
}  
 .header {
    -webkit-box-shadow: 0 8px 6px -6px #999;
    -moz-box-shadow: 0 5px 5px -6px #999;
    box-shadow: 0 10px 10px -6px #999;

    /* the rest of your styling */
} 
  .header-left{
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
a:link {
  text-decoration: none;
}

a:visited {
  text-decoration: none;
}

a:hover {
  text-decoration: underline;
}

a:active {
  text-decoration: underline;
}
ul li {
  background: #cce5ff;
  margin: 5px;
}
a:hover {
  text-decoration: underline;
}

a:active {
  text-decoration: underline;
}
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

</head>
<style>
.container {
    background-image: url("Images/pexels-photo-743986.jpeg");
    padding: 40px;
    color:rgb(5, 8, 211);
    
    border-style: solid;
    
    border-color: green;
   
}

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

/* Set a style for all buttons */
button {
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 20%;
    opacity: 0.9;
   
}

button:hover {
    opacity:1;
}

/* Extra styles for the cancel button */
.submitbtn {
    padding: 14px 20px;
    background-color: rgb(0, 64, 255);
}
.resultbtn{
     background-color:blue;
     float:right;
}

.center {

margin-left:30%;
}


</style>
<style>
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
    margin: -10px;
    margin-top: -195px;
	padding: -20px -1px;
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
<body>

<div class="header">
   
    <Marquee>QuizWave Online Software Test </Marquee>
    </div>
    <div class="gg">
    <a target="_blank" href="Home.jsp">
       <img src="Images\swa.png" height="150px" width="150px" style="height: 70px; width: 75px">
    </a>
 </div>
   </div>  
     <div class="header-right">
      
        <a href="Home.jsp">Logout</a>
    </div>
    
 </div>
 <a href="JavaTestInstruction.jsp" class="previous">&laquo; Back</a>
<a href="#" class="next">Next &raquo;</a><br><br>
 <button type = "button" class="resultbtn" onclick="window.location.href='JavaResult.jsp'">Show Answers</button>
<br>
<br>
<br>
<br>
 <%
   String candidate_id = request.getParameter("candidate_id");
 String name = (String)session.getAttribute("emailId"); 
 System.out.println("email id is " +name);
try{
	Class.forName("oracle.jdbc.driver.OracleDriver");
 	Connection con = DriverManager.getConnection
 	("jdbc:oracle:thin:@localhost:1521:xe", "hr", "hr");
 	Statement st1 = con.createStatement();
 	String sql1 = "Select candidate_id, name from candidate where emailId = '" +name+"'" ;
 	ResultSet rs1 = st1.executeQuery(sql1);
 	while(rs1.next())	
 	{
 		candidate_id=rs1.getString("candidate_id");
 	 	 name=rs1.getString("name");
}
}catch(ClassNotFoundException ee1)
 {
 ee1.printStackTrace();
 } 
catch(Exception e)
{
	e.printStackTrace();
}

%>
 <%
 int score = 0;
 	
 	try
 {	
 		 		 
 	Class.forName("oracle.jdbc.driver.OracleDriver");
 	Connection cn = DriverManager.getConnection
 	("jdbc:oracle:thin:@localhost:1521:xe", "hr", "hr");
 	Statement st = cn.createStatement();
 	String sql = "Select * from question where subject_id = 1 and question_no<=10";
 	ResultSet rs = st.executeQuery(sql);
 	while(rs.next())
 	{
 	int i = rs.getInt(2);
 	String s=String.valueOf(i);  
 	System.out.println("variable name  is " +s);
 	String ans =request.getParameter(s);
 	System.out.println("answer is " +ans);
 	int corrAns = rs.getInt(8);
 	System.out.println("correct answer is " +rs.getInt(8));
	int result = Integer.parseInt(ans);			
	
 	if (result == corrAns)
 		  score++;
 	
 	}
 	 System.out.println("Score  is " +score);
 
  
 /*	String sql = "Select rollno,name from candidate";
 	ResultSet rs = st.executeQuery(sql);
 	if(rs.next())
 	{
 	 rollNo=rs.getInt("rollno");
 	 name=rs.getString("name");
 	}
 	*/
 	%>
 	
 
<div id="printableArea">

<input align = "right" type="button" onclick="printDiv('printableArea')" value="print" />

<form name = "resultform" action="" method="post" >
    <div class="container">
   
           <div class="center">  <h1>QuizWaveTest Result</h1><br><br>
      <label for="candidate_id"><b>Candidate Id :&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
      &nbsp &nbsp &nbsp &nbsp
      &nbsp
      &nbsp</b></label>
      <label id="candidate_id" name="candidate_id"><%= candidate_id %></label><br><br>
      
      <label for="name"><b>Name :&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
      &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
      &nbsp
      &nbsp</b></label>
      <label id="name" name="name" ><%= name %></label><br><br>
      
      <label for="name"><b>Subject Code :&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
      &nbsp &nbsp </b></label>
      <label id="subject_id" name="subject_id" >001</label><br><br>
      
      <label for="psw"><b>Your Score :&nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp 
      &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
      &nbsp</b></label>
      <label id="Score" name="score" ><%=score %></label><br><br>

      <label for="confirm psw"><b>Total Number of Questions :</b></label>
      <label id="Tnoq" name="Tnoq" >10</label><br><br>
      </div>
     
      </div>
  </form>
 </div>
 	
 	<%
 	
 }catch(ClassNotFoundException ee1)
 {
 ee1.printStackTrace();
 } 
catch(Exception e)
{
	e.printStackTrace();
}  
 %>

 
<div class="footer">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <a href="Home.jsp">Home</a>
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
function printDiv(divName) {
    var printContents = document.getElementById(divName).innerHTML;
    var originalContents = document.body.innerHTML;

    document.body.innerHTML = printContents;

    window.print();

    document.body.innerHTML = originalContents;
}

</script>
