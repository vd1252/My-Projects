<%-- 
    Document   : signupajax
    Created on : Oct 5, 2018, 6:39:22 PM
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
                   String q2="select * from subcategory where catid=?";
                   PreparedStatement myst=myconnection.prepareStatement(q2);
                   myst.setString(1, request.getParameter("cat"));
                   ResultSet myres=myst.executeQuery();
                   if(myres.next())//check whether the result found or not
                   {
                        out.print("<table class='table'>"
                              + "<tr>"
                              + "<td>SubCategory Name </td>"
                              + "<td>Update</td>"
                              + "<td>Delete</td>"
                              + "</tr>");
                      do
                      {
                          out.print("<tr>"
                                  + "<td>"+myres.getString("name")+"</td>"
                                  + "<td><a href='updatesubcat.jsp?subcatid="+myres.getString("subcatid")+"'>Update</a></td>"
                                  + "<td><a href='deletesubcat.jsp?subcatid="+myres.getString("subcatid")+"' class='del' id='"+myres.getString("subcatid")+"'>Delete</a></td>"
                                  + "</tr>");
                      }
                      while(myres.next());
                      out.print("</table>");
                   }
                   else
                   {
                        out.print("Subcategory not available");
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
