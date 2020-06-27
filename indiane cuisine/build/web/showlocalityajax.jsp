<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
   
           String myURL="", myUNAME="", myPASS="";
                                                           myURL = getServletContext().getInitParameter("URL");
                                                           myUNAME = getServletContext().getInitParameter("UNAME");
                                                           myPASS = getServletContext().getInitParameter("PASS");
                try
                {
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection myconnection=DriverManager.getConnection(myURL, myUNAME, myPASS);
                try
                {
                   String q2="select * from locality where cityid=?";
                   PreparedStatement myst=myconnection.prepareStatement(q2);
                   myst.setString(1, request.getParameter("city"));
                   ResultSet myres=myst.executeQuery();
                   if(myres.next())//check whether the result found or not
                   {
                        out.print("<table class='table' border='1px'>"
                              + "<tr>"
                              + "<td>Locality Name </td>"
                              + "<td>Update</td>"
                              + "<td>Delete</td>"
                              + "</tr>");
                      do
                      {
                          out.print("<tr>"
                                  + "<td>"+myres.getString("locality_name")+"</td>"
                                  + "<td><a href='updatelocality.jsp?locality_id="+myres.getString("locality_id")+"'>Update</a></td>"
                                  + "<td><a href='deletelocality.jsp?locality_id="+myres.getString("locality_id")+"' class='del' id='"+myres.getString("Locality_id")+"'>Delete</a></td>"
                                  + "</tr>");
                      }
                      while(myres.next());
                      out.print("</table>");
                   }
                   else
                   {
                        out.print("Locality not available");
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