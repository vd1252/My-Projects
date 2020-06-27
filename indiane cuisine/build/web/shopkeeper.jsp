<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
if(session.getAttribute("email")==null)
{
 response.sendRedirect("login.jsp");
}
else if(!(session.getAttribute("usertype").equals("shopkeeper")))
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
        
        <%@include file="shopkeeperheader.jsp"%>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        
        <%
            String myURL="", myUNAME="", myPASS="";
                                                           myURL = getServletContext().getInitParameter("URL");
                                                           myUNAME = getServletContext().getInitParameter("UNAME");
                                                           myPASS = getServletContext().getInitParameter("PASS");
                try
                {
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection myconnection=DriverManager.getConnection(myURL, myUNAME, myPASS);
                    try
                    {
            String qu="select image,rname from resturant where shopemail=?";
            PreparedStatement myst=myconnection.prepareStatement(qu);
            myst.setString(1, session.getAttribute("email").toString());
            ResultSet res=myst.executeQuery();
            if(res.next())
            {   
                out.print("<h1><center>Welcome "+ res.getString("rname") +" to Restaurant Panel</center></h1><br><br><br>");
                out.print("<center><img src='cimages/"+res.getString("image")+"' width='450px'></center>");
            
            }
                    }
                    catch(Exception e)
                    {
                        out.print("Error in connection"+e.getMessage());
                    }
                }
                catch(Exception e)
                {
                    out.print("Error in connection"+e.getMessage());
                }

        %>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        
        
        <%@include file="shopkeeperfooter.jsp" %>

    </body>
</html>