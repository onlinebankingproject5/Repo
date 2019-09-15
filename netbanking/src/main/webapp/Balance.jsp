<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
    <%@ page isELIgnored="false" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">



<html>
<head>
<meta charset="ISO-8859-1">
<title>Account Summary</title>

<style>
table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 100%;
  background-color: #04E1BB;
}

td, th {
  border: 1px solid #FFFFFF;
  text-align: left;
  padding: 8px;
}

td{
background-color: #E5E5E5;

}

tr:nth-child(even) {
  background-color: #FFFFFF;
}
</style>
</head>

<body>
<center>
<table style="width:50%">

  <tr>
   
    <th> <center>Account Holder Name</center></th> 
    <th> <center>Account Number</center></th>
	<th> <center>Balance</center></th>
	
  </tr>
  
  <tr>
    
    <td><center>${fullName}</center></td> 
    <td> <center>${customer1.account.accountNumber}</center></td>
	<td> <center>${customer1.account.balance}</center></td>
  </tr>
 
</table>
</center>

</body>
</html>