<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    Thread.sleep(2000);
    if(request.getParameter("name")!=null){
    String nm=request.getParameter("name");
    out.print("<font color='green'> welcome "+nm+"</font>");
    }
    else if(request.getParameter("email")!=null)
    {
        try
            {
                Class.forName("com.mysql.jdbc.Driver");
                Connection myconnection=DriverManager.getConnection("jdbc:mysql://localhost/zomato", "root", "");
                try
                {
                   String q2="select * from signup where email=?";
                   PreparedStatement myst=myconnection.prepareStatement(q2);
                   myst.setString(1, request.getParameter("email"));
                   ResultSet res=myst.executeQuery();
                   if(res.next())//check whether the result found or not
                   {
                        out.print("<img src='images/wrong.png' width='30px' height='30px'><font color='red'>Invalid Username</font><img src='images/wrong.png' width='30px' height='30px'>");
                   }
                   else
                   {
                       out.print("<img src='images/tick.jpg' width='30px' height='30px'><font color='green'>valid Username</font><img src='images/tick.jpg' width='30px' height='30px'>");
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