<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page isELIgnored="false" %>  
<!DOCTYPE HTML>
<html>
<head>
  <title>Bank Register Form</title>
  <style> body{ color:#FFF700; font-weight:bold; font-style:large;</style>
</head>
<body background="C:\Users\lenovo\Desktop\image.jpg" style="background-size:cover" style="color:white">
<h1 align="center" style="color:aqua">BANKING REGISTRAION FORM</h1>


  <form:form class="" action="register" modelAttribute="customer"  method="post">
  <table cellspacing="15">
  
   <tr align="justify">
    <td color="white">FirstName :</td>
    <td><form:input path="firstName" type="text"/></td>
   </tr>
   
   <tr>
    <td>LastName :</td>
    <td><form:input path="lastName" type="text"/></td>
   </tr>
   
   
   
    <tr>
    <td>UserName:</td>
    <td><form:input path="userInfo.userName" type="text" /></td>
   </tr>
   
   
   <tr>
    <td>Password :</td>
    <td><form:input path="userInfo.password" type="password"/></td>
   </tr>
   
   <tr>
    <td>Gender :</td>
    <td>
     <form:input path="gender" type="text" /> 
     <%-- <form:input path="gender" type="radio" name="Gender"/> Female --%>
    </td>
   </tr>
   
   
   <tr>
    <td>Email :</td>
    <td><form:input path="email" type="text"/></td>
   </tr>
   
   
   <tr>
    <td>Phone no :</td>
    <td>
     <form:input path="phoneNumber" type="text"/>
    </td>
   </tr>
   
   
   <%--  <tr>
    <td>DateOfBirth:</td>
    <td><form:input path="dateOfBirth" type="date"/></td>
   </tr> --%>
   
   
    <tr>
    <td>PAN ID:</td>
    <td><form:input path="panID" type="text"/></td>
   </tr>
   
   
   <tr>
    <td>Hint Question:</td>
	
	 <td><form:select path="hintQuestion" /> 
	 
	<select>
	<option>----select question----</option>
     <option value="your dog name">your dog name</option>
     <option value="which subject you like most">which subject you like most</option>
     <option value="your favorite player">your favorite player</option>
    </select>
    </td>
   </tr>
   
   <tr>
    <td>Answer</td>
    <td><form:input path="answer" type="text"/></td>
   </tr>
   
    <tr>
    <td>Street name :</td>
    <td><form:input path="address.streetName" type="text"/></td>
   </tr>
   
   <tr>
    <td>PINCODE :</td>
    <td><form:input path="address.pincode" type="text"/></td>
   </tr>
   
   <tr>
    <td>District :</td>
    <td><form:input path="address.district" type="text"/></td>
   </tr>
   <tr>
    <td>State :</td>
    <td><form:input path="address.state" type="text"/></td>
   </tr>
   
   
   <tr>
    <td>Account Number :</td>
    <td><form:input path="account.accountNumber" type="text"/></td>
   </tr> 
   
   <tr>
    <td>Branch :</td>
    <td><form:select path="account.branch.branch">
    	<form:option value="NONE" label="--- Select ---" />
        <form:options items="${branchList}"></form:options>
    </form:select></td>
   </tr>
   <tr>
    <td><input type="submit" value="Submit" /></td>
   </tr>
  </table>
 </form:form>
</body>
</html>