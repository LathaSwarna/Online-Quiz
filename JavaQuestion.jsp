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
<title>Java Question</title>
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



</style>
<body>

<div class="header">
    <div class="header-left">
       
        <Marquee>QuizWave Online Software Test </Marquee>
    </div>
     <div class="gg">
    <a target="_blank" href="Home.jsp">
       <img src="Images\swa.png" height="150px" width="150px" style="height: 70px; width: 75px">
    </a>
 </div>
     <div class="header-right">
        <a href="Home.jsp">Home</a>
        <a href="Home.jsp">Logout</a>
    </div>
 </div>
 <a href="JavaTestInstruction.jsp" class="previous">&laquo; Back</a>
<a href="#" class="next">Next &raquo;</a><br><br>
<body onload="countdown();"> 
	<div> 
		Time Left :: 
		<input id="minutes" type="text" style="width: 10px; 
			border: none; font-size: 16px; 
			font-weight: bold; color: black;"><font size="5"> : 
						</font> 
		<input id="seconds" type="text" style="width: 20px; 
						border: none; font-size: 16px; 
						font-weight: bold; color: black;"> 
	</div> 
</body> 

                   

 <div id='start-test' class="list">
<table style='border: 1px dashed #0aa;Background-color:rgba(255,0,0,0.3); width: 80%; margin-left: 10px;'>
	<tr>
		<td width="55%" valign="top">
		<h3 class="heading1">Instructions:</h3>
		<ul>
			<li>Total number of questions: 10</li>
			<li>Time alloted: 5 minutes</li>
			<li>Each question carry 1 mark, no negative marks.</li>
		</ul><br>
		<tr>
		</table>
		</div>
 
 


<sql:setDataSource var="snapshot" driver="oracle.jdbc.driver.OracleDriver" url="jdbc:oracle:thin:@localhost:1521:xe" user="hr" password="hr" />
      
<sql:query dataSource="${snapshot}" var="result">
  Select rownum,question_no,question,option1,option2,option3,option4,correctAnswer from question where rownum<11
</sql:query>    
<br>
        <FORM ACTION="ShowResult.jsp" METHOD="post" >

<table border="0" width="100%">
<tr>
<th>question_no</th>
<th>question</th>
</tr>
<c:forEach var="row" items="${result.rows}">
<tr>
<td align = "center"><c:out value="${row.question_no}"/></td>
<td colspan = 2  ><c:out value="${row.question}"/></td>
<tr>
</tr><td></td>
<td><input type = "radio" value = 1 name = ${row.question_no} ><c:out value="${row.option1}"/></td>
<td><input type = "radio" value = 2 name = ${row.question_no} ><c:out value="${row.option2}"/></td>
<tr>
<td></td>
<td><input type = "radio" value = 3 name = ${row.question_no}><c:out value="${row.option3}"/></td>
<td><input type = "radio" value = 4 name = ${row.question_no}><c:out value="${row.option4}"/></td>
<tr>
<td></td>
</c:forEach>
</table> 
<br><br>

<center><button type="submit" class="submitbtn" >Submit Test</button></center>
</FORM>

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

<script> 
		//set minutes 
		var mins = 5; 

		//calculate the seconds 
		var secs = mins * 60; 

		//countdown function is evoked when page is loaded 
		function countdown() { 
			setTimeout('Decrement()', 60); 
		} 

		//Decrement function decrement the value. 
		function Decrement() { 
			if (document.getElementById) { 
				minutes = document.getElementById("minutes"); 
				seconds = document.getElementById("seconds"); 

				//if less than a minute remaining 
				//Display only seconds value. 
				if (seconds < 59) { 
					seconds.value = secs; 
				} 

				//Display both minutes and seconds 
				//getminutes and getseconds is used to 
				//get minutes and seconds 
				else { 
					minutes.value = getminutes(); 
					seconds.value = getseconds(); 
				} 
				//when less than a minute remaining 
				//colour of the minutes and seconds 
				//changes to red 
				if (mins < 1) { 
					minutes.style.color = "red"; 
					seconds.style.color = "red"; 
				} 
				//if seconds becomes zero, 
				//then page alert time up 
				if (mins < 0) { 
					alert('time up');
				    window.location.href='ShowResult.jsp';
					minutes.value = 0; 
					seconds.value = 0; 
				} 
				//if seconds > 0 then seconds is decremented 
				else { 
					secs--; 
					setTimeout('Decrement()', 1000); 
				} 
			} 
		} 

		function getminutes() { 
			//minutes is seconds divided by 60, rounded down 
			mins = Math.floor(secs / 60); 
			return mins; 
		} 

		function getseconds() { 
			//take minutes remaining (as seconds) away 
			//from total seconds remaining 
			return secs - Math.round(mins * 60); 
		} 
	</script> 
	
	
	</body>
</html>



		


