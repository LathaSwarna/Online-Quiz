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
}   
.header a {
    -webkit-box-shadow: 0 8px 6px -6px #999;
    -moz-box-shadow: 0 5px 5px -6px #999;
    box-shadow: 0 10px 10px -6px #999;

    /* the rest of your styling */
}  .header-left{
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
.fa-check-square {
  background: green;
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
    margin-top: -230px;
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

 

<sql:setDataSource var="snapshot" driver="oracle.jdbc.driver.OracleDriver" url="jdbc:oracle:thin:@localhost:1521:xe" user="hr" password="hr" />
      
<sql:query dataSource="${snapshot}" var="result">
  Select rownum,question_no,question,option1,option2,option3,option4,correctAnswer from question where rownum<11
</sql:query>    
<br>
<table border="0" width="100%">
<tr>
<th>question_no</th>
<th>question</th>
</tr>
<c:forEach var="row" items="${result.rows}">
<tr>
<td align = "center"><c:out value="${row.question_no}"/></td>
<td colspan = 2 ><c:out value="${row.question}"/></td>
<tr>
</tr><td></td>
<c:set var = "i" scope = "session" value = "${row.correctAnswer}"/>
<c:if test = "${i == 1}">
<td><c:out value="${row.option1}"/> 
<td><c:out value="${row.option2}"/> </td>
<tr>
<td></td>
<td><c:out value="${row.option3}"/></td>
<td><c:out value="${row.option4}"/></td>
<tr>
<hr></hr>
<td></td>
</c:if>
<c:if test = "${i == 2}">
<td><c:out value="${row.option1}"/></td>
<td><c:out value="${row.option2}"/>  <i class="fa fa-check-square" aria-hidden="true"></i> </td>
<tr>
<td></td>
<td><c:out value="${row.option3}"/></td>
<td><c:out value="${row.option4}"/></td>
<tr>
<td></td>
</c:if>
<c:if test = "${i == 3}">
<td><c:out value="${row.option1}"/> </td>
<td><c:out value="${row.option2}"/> </td>
<tr>
<td></td>
<td><c:out value="${row.option3}"/> <i class="fa fa-check-square" aria-hidden="true"></i></td>
<td><c:out value="${row.option4}"/></td>
<tr>
<td></td>
</c:if>
<c:if test = "${i == 4}">
<td><c:out value="${row.option1}"/> </td>
<td><c:out value="${row.option2}"/> </td>
<tr>
<td></td>
<td><c:out value="${row.option3}"/></td>
<td><c:out value="${row.option4}"/> <i class="fa fa-check-square" aria-hidden="true"></i></td>

<tr>
<td></td>
</c:if>
</c:forEach>
</table> 

<br><br>



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