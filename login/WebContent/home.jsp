<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home</title>
</head>
<body>

<form method="post" action="login.jsp">
<center><h2 style="color:green">Login</h2></center>

  <center>  <input type="text" name="name" placeholder="Username">  </center> <br>
    
		 <center><br> <br> <input type="password" name="psw" placeholder="Password" > </center> <br>

        <center> <br> <br> <input type="submit" name="" value="Login">  </center>
</form>


</body>
</html>