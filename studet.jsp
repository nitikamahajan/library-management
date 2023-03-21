<%-- 
    Document   : studet
    Created on : 11 Mar, 2014, 4:05:25 PM
    Author     : ishan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c_rt" %>
<%@ taglib uri="http://java.sun.com/jstl/sql_rt" prefix="sql_rt" %>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt_rt" %>
<html>
    <head>
         <img src="<%=request.getContextPath()%>/images/kiit.jpg" width="100%"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Student Details</title>
    </head>
    <body>
        <%-- 
    Document   : search
    Created on : 26 Feb, 2014, 5:45:48 PM
    Author     : ishan
--%>

<%@page import="java.sql.*"%>

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
    <body bgcolor="greenYellow">
        <h1>Search Book</h1>
        <table border="1">
            <tr>
                <td>Student ID</td>
                <td>First Name</td>
                <td>Last Name</td>
                <td>Branch</td>
                <td>Email</td>
                <td>Mobile</td>
            </tr>
            <%
                String id=request.getParameter("studentid");
                Class.forName("com.mysql.jdbc.Driver");
            Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/library","root","root");
            Statement st=cn.createStatement();
            String s="select * from student where id='"+id+"' ";
ResultSet r=st.executeQuery(s);
while(r.next())
{
    %>
    <tr>
        <td><%=r.getString("id") %></td>
        <td><%=r.getString("fname") %></td>
        <td><%=r.getString("lname") %></td>
        <td><%=r.getString("branch") %></td>
        <td><%=r.getString("email") %></td>
        <td><%=r.getString("mobile") %></td>
    </tr>
    <%
}
            %>
            
        </table>
            <a href="index.jsp">Got To Home</a>
    </body>
</html>

   
