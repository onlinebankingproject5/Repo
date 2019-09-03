<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>    
    
<!DOCTYPE html  PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>

<body>

<%
Connection con= null;
PreparedStatement ps = null;
ResultSet rs = null;

String driverName = "com.mysql.jdbc.Driver";
String url = "jdbc:mysql://localhost:3306/banklogin";
String user = "root";
String password = "system";

try {
Class.forName(driverName);
con = DriverManager.getConnection(url, user, password);
//ps = con.prepareStatement(sql);
rs = ps.executeQuery(); 
%>

<script>
function validate(){
var username=document.form.user.value;
var password=document.form.pass.value;
if(username==""){
 alert("Enter Username!");
  return false;
}
if(password==""){
 alert("Enter Password!");
  return false;
}
return true;
}
</script>

<form method="post" action="login.jsp"  onsubmit="javascript:return validate();">
<center><h2 style="color:green">JSP Login Example</h2></center>

       <center>  <input type="text" name="" placeholder="Username">  </center> <br>
    
		 <center><br> <br> <input type="password" name="" placeholder="Password" > </center> <br>

        <center> <br> <br> <input type="submit" name="" value="Login">  </center>

</form>

<% 
}
catch(SQLException sqe)
{
out.println("home"+sqe);
}
%>





</body>
</html>