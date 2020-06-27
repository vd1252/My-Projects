<%-- 
    Document   : signout.jsp
    Created on : Sep 14, 2018, 6:47:50 PM
    Author     : GTB Student
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    session.invalidate();
    Cookie myCookie=new Cookie("uname","");
    myCookie.setMaxAge(0);
    response.addCookie(myCookie);
    response.sendRedirect("index.jsp");
%>