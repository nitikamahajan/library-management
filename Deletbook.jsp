<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c_rt" %>
<%@ taglib uri="http://java.sun.com/jstl/sql_rt" prefix="sql_rt" %>
<%@page import="java.sql.*" %>
<html>
    <head>
         <img src="<%=request.getContextPath()%>/images/kiit.jpg" width="100%"/>
       <title>
            Delete Book
            </title>
    </head>
    <body>
       <%
           String bid=request.getParameter("bid");
           Class.forName("com.mysql.jdbc.Driver");
            Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/library","root","root");
            
PreparedStatement p=cn.prepareStatement("delete from bookentry where bid=?");
            p.setString(1,bid);
            int i=p.executeUpdate();
            if(i>0)
            {
                response.sendRedirect("index.jsp");
            }
            
       %>

 </body>
</html>