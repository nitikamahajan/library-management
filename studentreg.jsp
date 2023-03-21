<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Education</title>
<meta name="keywords" content="free css templates, education, school, college, university, templatemo.com" />
<meta name="description" content="Education template is for academic related websites" />
<link href="templatemo_style.css" rel="stylesheet" type="text/css" />

<script type="text/javascript">
function ctck()
{
var sds = document.getElementById("dum");
if(sds == null){alert("You are using a free package.\n You are not allowed to remove the tag.\n");}
}
</script>

<SCRIPT LANGUAGE="JavaScript">
function dil(form)
{
   for(var i=0; i<form.elements.length; i++)
   {
		if(form.elements[i].value == "")
		{
		   alert("Fill out all Fields")
		   document.F1.username.focus()
		   return false
		}
   }

  
   if(!isNaN(document.F1.username.value))
   {
       alert("User Name  must  be  char's & can't be null")
	   document.F1.username.value=""
	   document.F1.username.focus()
	   return false
   }

   if(!isNaN(document.F1.password.value))
   {
       alert("Password  must  be  char's & can't be null")
	   document.F1.password.value=""
	   document.F1.password.focus()
	   return false
   }
   
   return true   
}
</SCRIPT>

</head>
<body>
<div id="templatemo_header_wrapper">
    <div id="templatemo_header">
    	<div id="site_title">
            <h1><a href="http://www.cstpoint.com" target="_parent">
                <img src="images/templatemo_logo.png" alt="Site Title" />
                <span>Quantum University Library</span>
            </a></h1>
        </div>
        <p>Library Management System is a software used to manages the catalog of a library.  This helps to keep the records of whole transactions of the books available in the library.</p>
    
    </div> <!-- end of templatemo_header -->

</div> <!-- end of templatemo_menu_wrapper -->

<div id="templatemo_menu_wrapper">
    <div id="templatemo_menu">
        
        <ul>
           <li><a href="index.jsp">Home</a></li>
                     <li><a href="bookentry.jsp">Book Entry</a></li>
                    <li><a href="Deletebook.jsp">Delete Book</a></li>
                    <li><a href="searchbook.jsp">Search Book</a></li>
                     <li><a href="issuebook.jsp">Issue Book</a></li>
                     <li><a href="studentreg.jsp">Registration</a></li>
                    <li><a href="searchstudent.jsp">Search Student</a></li>
                   </ul>    	
    
    </div> <!-- end of templatemo_menu -->
</div>

<div id="templatemo_content_wrapper">

	<div id="templatemo_sidebar">
    
    	<div class="sidebar_box">
        	
            <h2>Announcements</h2>
            
            <div class="news_box">
                <a href="#">All books borrowed on 1st march onwards will be entilted for a longer borrowing duration and we have to return by 25 April 2020.</a>
                <p class="post_info">Posted by <a href="#">Admin</a> on <span>April 30, 2020</span></p>
            </div>
            
            <div class="news_box">
                <a href="#">Quantum University library will be closed from 17-31 march 2020. Library will be resume on 1st April 2020</a>
                <p class="post_info">Posted by <a href="#">Admin</a> on <span>March 12, 2020</span></p>
            </div>
            
            <div class="news_box">
                <a href="#">If u have any query please call on university toll free number 011-234545</a>
                <p class="post_info">Posted by <a href="#">Admin</a> on <span>march 14, 2020</span></p>
            </div>
        </div><div class="sidebar_box_bottom"></div>
        
        <div class="sidebar_box">
			
           <h2>JAVA</h2>
            
            <div class="section_w250 float_l">
				<h3>Core Java</h3>            
				<p>oops is a concept of core java so. javatpoint.com ,is realy a very good website we must visit,on this web site,to know java in defth and cstpoint.com.</p>
           </div>
            
            <div class="cleaner"></div>
        
        </div><div class="sidebar_box_bottom"></div>
    
    </div> <!-- end of sidebar -->
    
     <div id="templatemo_content">
    
    	<div class="content_box">
    
    	<td valign="top">

    	
   		   
				  <%  out.print("<font color=blue>STUDENT REGISTRATION ");
	%>
    
    	  <form action="process.jsp" method=post>
            <center>
                <
                <table cellpadding=2 cellspacing=1 border="1" bgcolor="orange">
                    <th bgcolor="orange" colspan=2>
                        <font size=5>Student Registration</font>
                        <br>
                        <font size=2 color="orange"><sup>*</sup> Required Fields</font>
                    </th>
                    <tr bgcolor="orange">
                        <td valign=top colspan=2>
                            <b>Student ID:<sup>*</sup></b>
                            <br>
                            <input type="text" name="id" size=20 value=""  maxlength=10>
                        </td>
                    </tr>
                    
                    <tr bgcolor="orange" >
                        <td valign=top>
                            <b>First Name:<sup>*</sup></b>
                            <br>
                        <input type="text" name="fname" value="" size=20 maxlength=20></td>

                        <td  valign=top>
                            <b>Last Name:<sup>*</sup></b>
                            <br>
                        <input type="text" name="lname" value="" size=20 maxlength=20></td>
                    </tr>

                    <tr bgcolor="orange">
                    <td valign=top>
                    <b>Branch:<sup>*</sup></b>
                    <select name="branch" size="1">
                        <option value="B.TECH CSE">B.TECH CSE</option>
                        <option value="B.TECH ECE">B.TECH ECE</option>
                        <option value="B.TECH EEE">B.TECH EEE</option>
                        <option value="B.TECH CE">B.TECH CE</option>
                        <option value="B.TECH MECH">B.TECH MECH</option>
                        <option value="MBA">MBA</option>
                        <option value="BCA">BCA</option>
                        <option value="MCA">MCA</option>
                    </select>
                    <br>
                    <br>

                    <tr bgcolor="orange">
                        <td valign=top>
                            <b>E-Mail:<sup>*</sup></b>
                            <br>
                            <input type="text" name="email" value="" size=25  maxlength=125>
                        <br></td>

                        <td  valign=top>
                            <b>Mobile No.:<sup>*</sup></b>
                            <br>
                        <input type="text" name="mobile" value="" size=10  maxlength=10></td>
                    </tr>

                    <tr bgcolor="orange">
                        <td  align=center colspan=2>
                            <input type="submit" value="Submit"> <input type="reset"
                                                                        value="Reset">
                        </td>
                    </tr>
                </table>
            </center>
        </form>
             	<h2>JAVA</h2>
            
            <div class="section_w250 float_l">
				<h3>Core Java</h3>            
				<p>oops is a concept of core java so. javatpoint.com ,is realy a very good website we must visit,on this web site,to know java in defth.</p>
           </div>
          
				</form>
  		
			</td>
	
        <%--
        	<h2>Welcome to Education</h2>
            
            <p> <a href="http://www.templatemo.com/page/1" target="_parent">Free Projects</a> are provided by <a href="http://www.javatpoint.com" target="_parent">javatpoint.com</a> for everyone. Feel free to download, edit and apply this project for your personal or business websites. Validate <a href="http://www.javatpoint.com">corejava</a> &amp; <a href="http://www.javatpoint.com">servlet</a>. Credit goes to <a href="http://www.javatpoint.com/">Public Domain Pictures</a> for photos used in this template. Nam ut libero at lacus feugiat tincidunt vitae sed ipsum.</p>
            
          <div class="cleaner_h20"></div>
            
            <div class="image_fl">
	            <img src="images/templatemo_images01.jpg" alt="image" />
            </div>
            
            <div class="section_w250 float_r">
            
            	<ul class="list_01">
                   	  <li>Praesent condimentum magna ut </li>
                      <li>Nunc luctus eros eu enim gravida ut </li>
                      <li>Phasellus nec ante eget felis </li>
                      <li>Morbi pellentesque tellus adipiscing </li>
                      <li>Nunc accumsan sagittis sem, ut </li>
                      <li>Nunc luctus eros eu enim gravida ut </li>
                      <li>Phasellus nec ante eget felis </li>
              </ul>
            
            </div>
            --%>
        
        	<div class="cleaner"></div>
        </div><div class="content_box_bottom"></div>
        
        <div class="content_box">
        
        	<h2>Testimonial</h2>
            
            <div class="section_w250 float_l">
				<h3>Praesent sollicitudin</h3>            
				<p>Nullam faucibus volutpat sapien sit amet tristique. Suspendisse venenatis, urna nec rhoncus suscipit, turpis turpis auctor nisi.</p>
            
            </div>  
            
            <div class="section_w250 float_r">
				<h3>Quisque blandit</h3>            
				<p>Morbi blandit ipsum sed purus vestibulum bibendum. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed nec nibh sed tellus.</p>
            
            </div>            
           
        
        	<div class="cleaner"></div>
        </div><div class="content_box_bottom"></div>
    
    </div> <!-- end of content -->
    
    <div class="cleaner"></div>

</div>

<div id="templatemo_footer_wrapper">

    <div id="templatemo_footer">
    
        <ul class="footer_menu">
            <li><a href="index.jsp">Home</a></li>
                <li><a href="bookentry.jsp">Book Entry</a></li>
                    <li><a href="Deletebook.jsp">Delete Book</a></li>
                    <li><a href="searchbook.jsp">Search Book</a></li>
                     <li><a href="issuebook.jsp">Issue Book</a></li>
                     <li><a href="studentreg.jsp">Registration</a></li>
                    <li><a href="searchstudent.jsp">Search Student</a></li>
               </ul>
                
                Copyright © 2048 <a href="#">Your Company Name</a> | 
                <a href="http://www.quantum.com" target="_parent">Website Projects</a> by <a href="http://www.quantum.com" target="_parent">  quantumuniveristy.com</a></div>
    
</div>
<div align=center>This project  downloaded form <a href='http://www.quantum.com/'>free website projects</a></div></body>
</html>