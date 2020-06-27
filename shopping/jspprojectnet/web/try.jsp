<%-- 
    Document   : try
    Created on : Nov 12, 2018, 6:20:09 PM
    Author     : GTB Student
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       
        <%
            String pagename;
            
        if(session.getAttribute("admin")!=null)    
        {
            pagename="adminheader.jsp";
        }
        else
        {
            pagename="signup.jsp";
        }
        %>
        <jsp:forward page="<%=pagename%>"/>
         <h1>Hello World!</h1>
    </body>
</html>
