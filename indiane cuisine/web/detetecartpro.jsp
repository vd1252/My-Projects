<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    Thread.sleep(2000);
    try
            {
                Class.forName("com.mysql.jdbc.Driver");
    Connection myconnection=DriverManager.getConnection("jdbc:mysql://localhost/zomato", "root", "");
   
                try
                {
                   String q2="delete from addcart where cartid=? ";
                   PreparedStatement myst=myconnection.prepareStatement(q2);
                   
                   myst.setString(1, request.getParameter("caid"));
                    int row=myst.executeUpdate();
                    if(row==1)
                    {
                        out.println("1");
                    }
                    else
                    {
                        out.println("0");
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
%>



