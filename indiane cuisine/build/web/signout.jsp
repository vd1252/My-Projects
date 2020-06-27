
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
session.invalidate();
Cookie myCookie=new Cookie("uname","");
myCookie.setMaxAge(0);
response.addCookie(myCookie);
response.sendRedirect("index.jsp");
%>