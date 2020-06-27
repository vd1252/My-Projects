<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
if(session.getAttribute("email")==null)
{
 response.sendRedirect("login.jsp");
}
else if(!(session.getAttribute("utype").equals("admin")))
{
 response.sendRedirect("login.jsp");  
}
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@include file="exefiles.jsp" %>
    </head>
    <body>
        
        <%@include file="adminheader.jsp"%>
        
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        
        <h2><center>Admin Panel</center></h2><br><br>
        <center><img src="images\imagepanel.jpg" alt="Admin Panel"></center>
        
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        
        <%@include file="adminfooter.jsp" %>

    </body>
</html>