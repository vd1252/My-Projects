<%-- 
    Document   : selectsubcatajax
    Created on : Oct 15, 2018, 6:42:02 PM
    Author     : GTB Student
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%   Thread.sleep(3000);
    try
                {  String URL="", UNAME="", PASS="";
                
                        URL = getServletContext().getInitParameter("URL");
                        UNAME = getServletContext().getInitParameter("UNAME");
                        PASS = getServletContext().getInitParameter("PASS");
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection myconnection=DriverManager.getConnection(URL, UNAME, PASS);
        try
        {
            String qu="select * from locality where cityid=?";
            PreparedStatement myst=myconnection.prepareStatement(qu);
            myst.setString(1, request.getParameter("cityajax"));
            ResultSet res=myst.executeQuery();
            if(res.next())
            {
                out.print("<option>Choose Locality</option>");
                 do
                            {
                                out.print("<option value='"+res.getString("locality_id")+"'>"+res.getString("locality_name")+"</option>");
                            }while(res.next());
            }
            else
            {
                out.print("<option>No locality available</option>");
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
                   