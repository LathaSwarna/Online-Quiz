<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Subject</title>
<style>
* {box-sizing: border-box;}

body { 
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
}

.header {
  overflow: hidden;
  background-color: white;
  padding: 5px 5px;
}
.header a {
  float: right;
  font-size: 10px;
  color: black;
  text-align: center;
  padding: -10px -10px;
  text-decoration: none;
  margin: -5px;
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

.header-right a {
 float: right;
  color: black;
  text-align: center;
  padding: 12px;
  text-decoration: none;
  font-size: 18px; 
  line-height: 25px;
  border-radius: 10px;
  margin-right:-300px;
  }

    .title-header{
        padding: 10px;
    }

@media screen and (max-width: 500px) {
  .header a {
    float: right;
    display: block;
    text-align: right;
 
  }
  .header-right {
    float: none;
    
  }  
</style>
</head>

<style>
.gg{
    margin: 2px;
	padding: 5px;
	height: auto;
	width: auto;
	float: left;
	font-family: cursive;
	font-weight: bold;
	}
.gg img:hover {
	transform: translate3d(0, -4px, 0);
	box-shadow: 0 19px 30px 0 rgba(0.6, 0.5, 0.9, 0.9);
	transition-property: box-shadow, transform;
	transition-duration: 600ms;
	transition-timing-function: cubic-bezier(.26, 1, .29, .99);
}

.con {
  text-align: center;
	font-size: 14px;
	margin-top: 15px;
	margin-bottom: 50px;
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
gg{
    margin: -20px;
	padding: -5px;
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
        
        <a href="Home.jsp">Logout</a>
    </div>
 </div>
<a href="Login.jsp" class="previous">&laquo; Back</a>
<a href="#" class="next">Next &raquo;</a>
 
 
<h2>Online Software Test</h2>
<p><center><b>The best way to improving Software Knowledge to attending QuizWave Test.</b></center></p>
<div>
  <div class="gg">
    <a target="_blank" href="OnlineJavaTest.jsp" >
      <img src="Images/Java1.jpg" alt="Java" width="150" height="150">
    </a>
    <div class="con">Online Java Test</div>
  </div>

  <div class="gg">
    <a target="_blank" href="OnlineSqlTest.jsp">
      <img src="Images/sql.png" alt="sql" width="150" height="150">
    </a>
    <div class="con">Online Sql Test</div>
  </div>

  <div class="gg">
    <a target="_blank" href="OnlineHtmlTest.jsp">
      <img src="Images/html.jpg" alt="Html" width="150" height="150">
    </a>
    <div class="con">Online HTML Test</div>
  </div>

  <div class="gg">
    <a target="_blank" href="OnlineCssTest.jsp">
      <img src="Images/css.jpg" alt="Css" width="150" height="150">
    </a>
    <div class="con">Online CSS Test</div>
  </div>

  <div class="gg">
    <a target="_blank" href="OnlineJavaScriptTest.jsp">
      <img src="Images/javascript.jpg" alt="JavaScript" width="150" height="150">
    </a>
    <div class="con">Online JavaScript Test</div>
  </div>
  
  <div class="gg">
    <a target="_blank" href="">
      <img src="Images/bootsrp.png" alt="Bootstap" width="150" height="150">
    </a>
    <div class="con">Online Bootstap Test</div>
  </div>
  
<div class="gg">
    <a target="_blank" href="OnlineJavaScriptTest.jsp">
      <img src="Images/php.jpg" alt="php" width="150" height="150">
    </a>
    <div class="con">Online Php Test</div>
  </div>

<div class="gg">
    <a target="_blank" href=""OnlineAngularJS.jsp">">
      <img src="Images/angulr.png" alt="AngularJs" width="150" height="150">
    </a>
    <div class="con">Online AngularJs Test</div>
  </div>
  
 
  
  <div class="gg">
    <a target="_blank" href=""OnlineHAdoop.jsp">">
      <img src="Images/hadoop.jpg" alt="Hadoop" width="150" height="150">
    </a>
    <div class="con">Online Hadoop Test</div>
  </div>
  
  <div class="gg">
    <a target="_blank" href="OnlinePython.jsp">
      <img src="Images/python.jpg" alt="Hadoop" width="150" height="150">
    </a>
    <div class="con">Online python Test</div>
  </div>
  
  <br>
  <br>
  
 
  
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>
$(document).ready(function(){

  $("a").on('click', function(event) {

    
    if (this.hash !== "") {
     
      event.preventDefault();

  
      var hash = this.hash;


      $('html, body').animate({
        scrollTop: $(hash).offset().top
      }, 500, function(){
   
       
        window.location.hash = hash;
      });
    } 
  });
});
</script>

<script>
if(${swarna == 'true'}){
	
	alert("Welcome,your Logged in successfully...");
}
}

</script>
</body>
</html>





