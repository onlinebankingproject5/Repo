<%@ page import ="java.sql.*" %>
<%
    try{
        String username = request.getParameter("username");   
        String password = request.getParameter("password");
        Class.forName("com.mysql.jdbc.Driver");  // MySQL database connection
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/login?" + "user=root&password=system");    
        PreparedStatement pst = conn.prepareStatement("Select name,password from admin where name=? and password=?");
        pst.setString(1, username);
        pst.setString(2, password);
        ResultSet rs = pst.executeQuery();                        
        if(rs.next())   {   
        	  
        	response.sendRedirect("welcome.jsp");
        }
        else
        	
        	response.sendRedirect("error.jsp");
        	
           //out.println("Invalid login credentials");            
   }
   catch(Exception e){       
       out.println("Something went wrong !! Please try again");       
   }      
%>
