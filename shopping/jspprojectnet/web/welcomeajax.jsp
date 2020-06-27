<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    Thread.sleep(2000);
    if(request.getParameter("name")!=null)
    {
        String nm=request.getParameter("name");
        out.print("welcome "+nm);
    }
    else if(request.getParameter("email")!=null)
    {
        try
            {
                Class.forName("com.mysql.jdbc.Driver");
                Connection myconnection=DriverManager.getConnection("jdbc:mysql://localhost/evedb", "root", "");
                try
                {
                   String q2="select * from signup where email=?";
                   PreparedStatement myst=myconnection.prepareStatement(q2);
                   myst.setString(1, request.getParameter("email"));
                   ResultSet res=myst.executeQuery();
                   if(res.next())//check whether the result found or not
                   {
                        out.print("<font color='red'>Invalid Username</font>");
                   }
                   else
                   {
                       out.print("<font color='green'>valid Username</font>");
                   }
                }
                catch(Exception e)
                {
                    out.print("Error in query"+e.getMessage());
                }
            }
            catch(Exception e)
            {
                    out.print("Error in connection"+e.getMessage());
            }
    }
    
%>