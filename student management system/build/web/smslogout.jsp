<%-- 
    Document   : smslogout
    Created on : 25 Mar, 2019, 5:05:50 PM
    Author     : HP
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
           if(session.getAttribute("teacherfname")!=null&&session.getAttribute("teacherlname")!=null)
           {
               session.removeAttribute("teacherfname");//extra security
               session.removeAttribute("teacherlname");
           }
           else if(session.getAttribute("aname")!=null)
           {
               session.removeAttribute("aname");//extra security
               
           }
           session.invalidate();
           Cookie mycookie1=new Cookie("teacherusername","0");
            mycookie1.setMaxAge(0);
            response.addCookie(mycookie1);
            
             Cookie mycookie2=new Cookie("teacherfname","0");
            mycookie2.setMaxAge(0);
            response.addCookie(mycookie2);
            
             Cookie mycookie3=new Cookie("teacherlname","0");
            mycookie3.setMaxAge(0);
            response.addCookie(mycookie3);
                       response.sendRedirect("homepage.jsp");
           %>
    </body>
</html>
