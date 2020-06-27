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
                   String q2="select * from product where subcatid=?";
                   PreparedStatement myst=myconnection.prepareStatement(q2);
                   myst.setString(1, request.getParameter("subcat"));
                   ResultSet myres=myst.executeQuery();
                   if(myres.next())//check whether the result found or not
                   {
                        out.print("<table class='table'>"
                              + "<tr>"
                               + "<td>Image </td>"
                              + "<td>Product Name </td>"
                              + "<td>Update</td>"
                              + "<td>Delete</td>"
                              + "</tr>");
                      do
                      {
                          
                          out.print("<tr>"
                                  + "<td><img src='uploads/"+myres.getString("image")+"' width='250px' border='1px'/></td>"
                                  + "<td>"+myres.getString("pname")+"</td>"
                                  + "<td><a href='updateproduct.jsp?pid="+myres.getString("pid")+"'>Update</a></td>"
                                  + "<td><a href='deleteproduct.jsp?pid="+myres.getString("pid")+"' class='del' id='"+myres.getString("subcatid")+"'>Delete</a></td>"
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
