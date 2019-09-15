<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    <%@ page isELIgnored="false" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="ISO-8859-1">
<title>Branches</title>
</head>
<body>

<center>
<h1 >List Of Branches:</h1>

<h3>select the state from below options</h3>

<form:form method="get" action="branches" modelAttribute="branch">

<form:select path="state">
    	<%-- <form:option value="NONE" label="--- Select ---" /> --%>
        <form:options items="${stateList}"></form:options>
    </form:select>


<br>
<br>
 <input type="submit" value="View" />
</form:form>

<br>

<br>


<c:forEach items="${branches}" var="branch">

<h5 style="color:blue">Branch :    ${branch.branch}</h5>
 <%-- <c:out value="${branch.branch}"></c:out> --%>
<h5>IFSC Code :</h5>
<h5>City :</h5>
<h5>Contact Number :</h5>

</c:forEach>

</center>


</body>
</html>