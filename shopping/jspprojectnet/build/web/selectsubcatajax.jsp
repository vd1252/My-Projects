<%-- 
    Document   : selectsubcatajax
    Created on : Oct 15, 2018, 6:42:02 PM
    Author     : GTB Student
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    try
    {
        Class.forName("com.mysql.jdbc.Driver");
        Connection myconnection=DriverManager.getConnection("jdbc:mysql://localhost/evedb", "root", "");
        try
        {
            String qu="select * from subcategory where catid=?";
            PreparedStatement myst=myconnection.prepareStatement(qu);
            myst.setString(1, request.getParameter("category"));
            ResultSet res=myst.executeQuery();
            if(res.next())
            {
                out.print("<option>Choose Subcategory</option>");
                do
                {
                    out.print("<option value='"+res.getString("subcatid")+"'>"+res.getString("name")+"</option>");
                }while(res.next());
            }
            else
            {
                out.print("<option>No Catgeory available</option>");
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
                   