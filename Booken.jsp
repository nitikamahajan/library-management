
<%@page import="java.sql.*"%>
<%@page import="java.sql.Connection"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c_rt" %>
<%@ taglib uri="http://java.sun.com/jstl/sql_rt" prefix="sql_rt" %>
<html>
    <head>
         <img src="<%=request.getContextPath()%>/images/kiit.jpg" width="100%"/>
       <title>
           New Book Details
       </title>
    </head>
    <body>
        <%
            String bid=request.getParameter("bid");
            String bname=request.getParameter("bname");
            String wname=request.getParameter("wname");
            String tech=request.getParameter("tech");
            
            Class.forName("com.mysql.jdbc.Driver");
            Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/library","root","root");
            String s="insert into bookentry values(?,?,?,?)";
            PreparedStatement p=cn.prepareStatement(s);
            p.setString(1,bid);
            p.setString(2,bname);
            p.setString(3,wname);
            p.setString(4,tech);
            
            int i=p.executeUpdate();
            if(i>0)
            {
                response.sendRedirect("index.jsp");
            }
            
        %>
        
 </body>
</html>