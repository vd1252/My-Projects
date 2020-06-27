<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    Thread.sleep(2000);
    String URL="", UNAME="", PASS="";
                                                           URL = getServletContext().getInitParameter("URL");
                                                           UNAME = getServletContext().getInitParameter("UNAME");
                                                           PASS = getServletContext().getInitParameter("PASS");
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            Connection myconnection=DriverManager.getConnection(URL, UNAME, PASS);
                try
                {
                   String q2="delete from city where cityid=?";
                   PreparedStatement myst=myconnection.prepareStatement(q2);
                   myst.setString(1, request.getParameter("cityid"));
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