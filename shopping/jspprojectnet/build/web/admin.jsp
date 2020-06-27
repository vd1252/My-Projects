<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<!----to include css and strips------------>
                <%
                    if(session.getAttribute("email")==null)
                    {
                        response.sendRedirect("login.jsp");
                    }
                    else if(!session.getAttribute("utype").equals("admin"))
                    {
                        response.sendRedirect("login.jsp");
                    }
                %>
        <%@include file="exefiles.jsp" %>
    </head>
    <body>
	<!----to include header portion------------>
         <%@include file="adminheader.jsp" %>
         <h1>Admin Panel</h1>
          <%@include file="footer.jsp" %>
    </body>
</html>
