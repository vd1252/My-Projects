<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    Thread.sleep(2000);
    String aURL="", aUNAME="", aPASS="";
    aURL = getServletContext().getInitParameter("URL");
    aUNAME = getServletContext().getInitParameter("UNAME");
    aPASS = getServletContext().getInitParameter("PASS");
                try
                {
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection myconnection=DriverManager.getConnection(aURL, aUNAME, aPASS);
                try
                {
                   String q2="delete from menu where m_id=?";
                   PreparedStatement myst=myconnection.prepareStatement(q2);
                   myst.setString(1, request.getParameter("fooditemid"));
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
