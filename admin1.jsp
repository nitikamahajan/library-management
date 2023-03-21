<%-- 
    Document   : newstaffdb
    Created on : Mar 19, 2020, 6:47:30 PM
    Author     : IT18
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String username=request.getParameter("username");
            String password=request.getParameter("password");
            
            Class.forName("com.mysql.jdbc.Driver");
            Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/library","root","root");
            
            PreparedStatement p=cn.prepareStatement("select * from admin where username=? and password=?");
            p.setString(1,username);
            p.setString(2,password);
            
            ResultSet r=p.executeQuery();
            while(r.next())
            {
                %>
                <jsp:forward page="index.jsp"></jsp:forward>
                <%
            }
            
        %>        
    </body>
</html>
