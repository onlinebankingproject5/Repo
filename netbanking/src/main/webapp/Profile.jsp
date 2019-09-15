<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
    <%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="ISO-8859-1">
<title>Profile</title>
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<style>
table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

td, th {
  border: 1px solid #FFFFFF;
  text-align: left;
  padding: 8px;
}

td{
background-color: #E5E5E5;

}

th{
background-color:#04E1BB;

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
   
    <th> <center>Account Number</center></th> 
    <td> <center>${customer1.account.accountNumber}</center></td>

  </tr>
  
 <tr>
   
    <th> <center>Full Name</center></th> 
    <td> <center>${fullName}</center></td>

  </tr>
  
   <tr>
   
    <th> <center>User Name</center></th> 
    <td> <center>${customer1.userInfo.userName}</center></td>

  </tr>
  
   <tr>
	
    <th> <center>password</center></th> 
    <td> <center> <button ><i class="material-icons" style="font-size:12px">border_color</i></button></center></td>

  </tr>
  
   <tr>
   
    <th> <center>Gender</center></th> 
    <td> <center>${customer1.gender}</center></td>

  </tr >
  
   <tr>
   
    <th> <center>Pan Id</center></th> 
    <td> <center>${customer1.panID}</center></td>

  </tr>
  
   <tr>
   
    <th> <center>Phone Number</center></th> 
    <td> <center>${customer1.phoneNumber}</center></td>

  </tr>
  
   <tr>
   
    <th> <center>E.Mail</center></th> 
    <td> <center>${customer1.email}</center></td>

  </tr>
  
   <tr>
   
    <th> <center>Street No.</center></th> 
    <td> <center>${customer1.address.streetName}</center></td>

  </tr> 
  
   <tr>
   
    <th> <center>District</center></th> 
    <td> <center>${customer1.address.district}</center></td>

  </tr>

	<tr>
   
    <th> <center>Pincode</center></th> 
    <td> <center>${customer1.address.pincode}</center></td>

  </tr>
</table>
</center>


</body>
</html>