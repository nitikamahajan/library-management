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
            String repassword=request.getParameter("repassword");
            String phone=request.getParameter("phone");
            String address=request.getParameter("address");
            String desig=request.getParameter("desig");
            
            Class.forName("com.mysql.jdbc.Driver");
            Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/library","root","root");
            String s="insert into admin values(?,?,?,?,?,?)";
            PreparedStatement p=cn.prepareStatement(s);
            p.setString(1,username);
            p.setString(2,password);
            p.setString(3,repassword);
            p.setString(4,phone);
            p.setString(5,address);
            p.setString(6,desig);
            int i=p.executeUpdate();
            if(i>0)
            {
                %>
                <jsp:forward page="admin.jsp"></jsp:forward>
                <%
            }
            else
            {
                %>
                <jsp:include page="newstaff.jsp"></jsp:include>
                <%
            }
        %>        
    </body>
</html>
