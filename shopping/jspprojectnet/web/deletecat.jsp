<%-- 
    Document   : deletecat
    Created on : Oct 9, 2018, 6:41:41 PM
    Author     : GTB Student
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    Thread.sleep(2000);
    try
            {
                Class.forName("com.mysql.jdbc.Driver");
                Connection myconnection=DriverManager.getConnection("jdbc:mysql://localhost/evedb", "root", "");
                try
                {
                   String q2="delete from category where catid=?";
                   PreparedStatement myst=myconnection.prepareStatement(q2);
                   myst.setString(1, request.getParameter("catid"));
                    int row=myst.executeUpdate();
                    if(row==1)
                    {
                        out.println("1");//deleted
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
