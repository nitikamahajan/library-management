
<%@page import="java.sql.*"%>
<%@ page language="java" %>
<%@ page import="java.util.*" %>

<%@ page import="java.io.*" %>
<%@ page import="java.util.*" %>

 <%

    String id=request.getParameter("id");
    String fname=request.getParameter("fname");
    String lname=request.getParameter("lname");
    String branch=request.getParameter("branch");
    String email=request.getParameter("email");
    String mobile=request.getParameter("mobile");
    
    Class.forName("com.mysql.jdbc.Driver");
    Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/library","root","root");
    String st="insert into student values(?,?,?,?,?,?)";
    PreparedStatement p=cn.prepareStatement(st);
    p.setString(1,id);
    p.setString(2,fname);
    p.setString(3,lname);
    p.setString(4,branch);
    p.setString(5,email);
    p.setString(6,mobile);
    
    int i=p.executeUpdate();
    if(i>0)
    {
       response.sendRedirect("index.jsp");
    }

%>

