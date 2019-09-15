
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
    <%@ page isELIgnored="false" %><!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Welcome</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body {
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
}

header {
  background-image:url("banners1.jpg");
  padding-top:1px;
	height: 100px;
  text-align: center;
  font-size: 35px;
  color: white;
}

.topnav {
  overflow: hidden;
  background-color: #333;
}

.topnav a {
  float: left;
  color: #f2f2f2;
  text-align: center;
  padding: 10px 15px;
 text-decoration: none;
  font-size: 17px;
}

.topnav a:hover {
  background-color: #ddd;
 color: black;  
}

.topnav a.active {
  background-color: #4CAF50;
  color: white;
 }

* {box-sizing: border-box;}
body {font-family: Verdana, sans-serif;}
.mySlides {display: none;}
img {vertical-align: middle;}

/* Slideshow container */
.slideshow-container {
  max-width: 100px;
  position: relative;
  margin: auto;
}

/* The dots/bullets/indicators */
.dot {
  height: 15px;
  width: 15px;
  margin: 0 2px;
  background-color: #bbb;
  border-radius: 50%;
  display: inline-block;
  transition: background-color 0.6s ease;
}

.active {
  background-color: #717171;
}

/* Fading animation*/
.fade {
  -webkit-animation-name: fade;
  -webkit-animation-duration: 1.5s;
  animation-name: fade;
  animation-duration: 1.5s;
}

@-webkit-keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

@keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

</style>
</head>


<body oncontextmenu="return false;">

	<div id="header">
		<header>
		<center>
			<h3></h3>
		</center>

		<div style="position: absolute; left: 10px; top: 10px;">


			<h6>
				<p style="color: blue; font-size: 20px;">Welcome ${userinfo.userName}</p>
			</h6>

		</div>

		<div style="position: absolute; right: 10px; top: -50px;">

			<h6>
					<a href="logout.jsp" style="font-size:24px" title="Logout"><i class="fa fa-sign-out" style="font-size:30px;color:red"></i></a>
				</p>
			</h6>

		</div>
		
		<div style="position: absolute; right: 60px; top: -47px;">

			<h6>
					<a href="branches.jsp" style="font-size:24px" title="ContactUs"><i class="fa fa-phone" style="font-size:30px;color:green;"></i></a>
				</p>
			</h6>

		</div>

		
	</div>
	

	<div class="topnav" >
		<h1>
			<a href="welcome.jsp" id="home" >Home</a>
		</h1>
		<h1>
			<a href="accountSummary"> Account Summary </a>
		</h1>
		<h1>
			<a href="profile"> Profile </a>
		</h1>
		<h1>
			<a href="statement"> Statement </a>
		</h1>
		<h1>
			<a href="branchRequest"> Branches </a>
		</h1>
		<h1>
			<a href="link1.html" id="link5"> Payments History </a>
		</h1>
		<h1>
			<a href="link1.html" id="link5"> Fund Transfer </a>
		</h1>
		<h1>
			<a href="link1.html" id="link6"> Pay Bills </a>
		</h1>
		<h1>
			<a href="balance"> Balance </a>
		</h1>

	</div>


	<section>

	<div class="mySlides fade">
		<img src="home.jpg" height="350" width="1280">
	</div>

	<div class="mySlides fade">
		<img src="car.jpg" height="350" width="1280">
	</div>

	<div class="mySlides fade">
		<img src="gold.jpg" height="350" width="1280">
	</div>
	<br>
	<br>
	<div style="text-align: center">
		<span class="dot"></span> <span class="dot"></span> <span class="dot"></span>
	</div>

	<script>
		var slideIndex = 0;
		showSlides();

		function showSlides() {
			var i;
			var slides = document.getElementsByClassName("mySlides");
			var dots = document.getElementsByClassName("dot");
			for (i = 0; i < slides.length; i++) {
				slides[i].style.display = "none";
			}
			slideIndex++;
			if (slideIndex > slides.length) {
				slideIndex = 1
			}
			for (i = 0; i < dots.length; i++) {
				dots[i].className = dots[i].className.replace(" active", "");
			}
			slides[slideIndex - 1].style.display = "block";
			dots[slideIndex - 1].className += " active";
			setTimeout(showSlides, 2000); // Change image every 2 seconds
		}
	</script>
	</section>
</body>
</html>