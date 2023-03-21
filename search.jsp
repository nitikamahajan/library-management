<%-- 
    Document   : search
    Created on : 26 Feb, 2014, 5:45:48 PM
    Author     : ishan
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c_rt" %>
<%@ taglib uri="http://java.sun.com/jstl/sql_rt" prefix="sql_rt" %>

<html>
    <head>
         <img src="<%=request.getContextPath()%>/images/kiit.jpg" width="100%"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Available Books</title>
    </head>
    <body bgcolor="orangered">
        <h1>Search Book</h1>
        <table border="1">
            <tr>
                <td>BID</td>
                <td>Book Name</td>
                <td>Writer Name</td>
                <td>Technology</td>
            </tr>
            <%
                String bid=request.getParameter("bid");
                Class.forName("com.mysql.jdbc.Driver");
            Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/library","root","root");
            Statement st=cn.createStatement();
            String s="select * from bookentry where bid='"+bid+"' ";
ResultSet r=st.executeQuery(s);
while(r.next())
{
    %>
    <tr>
        <td><%=r.getString("bid") %></td>
        <td><%=r.getString("bname") %></td>
        <td><%=r.getString("wname") %></td>
        <td><%=r.getString("tech") %></td>
    </tr>
    <%
}
            %>
            
        </table>
            <a href="index.jsp">Got To Home</a>
    </body>
</html>
