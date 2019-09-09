<%@page import="com.netbanking.model.UserInfo"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>LOGIN</title>
</head>
<body background="">


	
	<form:form class="" action="login" modelAttribute="userInfo" method="post">

		<center>
			<form:input type="text" path="userName" name="" placeholder="Username"/>
			
		</center>
		<br>

		<center>
			<br> <br> <form:input type="password" path="password" name=""
				placeholder="Password"/> <br>
		</center>
		<br>
		<center>
		${msg}
		</center>
		
		<center>
			<br> <br> <input type="submit" name="" value="Login">
		</center>
	</form:form>



</body>
</html>