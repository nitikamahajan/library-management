<%-- 
    Document   : issuebook
    Created on : 26 Mar, 2014, 10:40:39 PM
    Author     : ishan
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
   <%@page import="java.sql.*"%>
  <%@page import="java.util.Date"%>
  <%@page import="java.text.*"%>
   <%@page import= "java.text.SimpleDateFormat"%>
   <%@page language="java" %>
   <%@page import= "java.sql.Timestamp"%>
  <%@page import= "java.sql.PreparedStatement"%>
  
<html>
    

    <head>
         <img src="<%=request.getContextPath()%>/images/kiit.jpg" width="100%"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        java.sql.Date date=new java.sql.Date(new java.util.Date().getTime());

        
java.sql.Date tom=new java.sql.Date(new java.util.Date().getTime());
tom.setDate(tom.getDate()+10);


       String studentid = request.getParameter("studentid");
       String bid= request.getParameter("bid");
       String issuedate=request.getParameter("issuedate");
       String returndate=request.getParameter("returndate");
        
       try
               {
           Class.forName("com.mysql.jdbc.Driver");
	    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/library","root","root");
String sql = "insert into issuebook(studentid,bid,issuedate,returndate) values (?,?,?,?)";

PreparedStatement pst = con.prepareStatement(sql);
pst.setString(1,studentid);
pst.setString(2,bid);
pst.setString(3, issuedate);
pst.setString(4, returndate);
int p=pst.executeUpdate();







if(p>0)
    {
    %>
    <jsp:forward page="isue.jsp"/>
    <%
    }

pst.close();


}
       catch(ClassNotFoundException e){
out.println("Couldn't load database driver: " + e.getMessage());
}

catch(SQLIntegrityConstraintViolationException e)
        {
    out.println("<h1>Book is already been issued<h1>");
    }
       

%>

 
    </body>
</html>
