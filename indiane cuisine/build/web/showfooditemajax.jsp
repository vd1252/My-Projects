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
                   String q2="select * from fooditem where f_id=?";
                   PreparedStatement myst=myconnection.prepareStatement(q2);
                   myst.setString(1, request.getParameter("food"));
                   ResultSet myres=myst.executeQuery();
                   if(myres.next())//check whether the result found or not
                   {
                        out.print("<table class='table' border='1px'>"
                              + "<tr>"
                              + "<td>fooditem Name </td>"
                              + "<td>Update</td>"
                              + "<td>Delete</td>"
                              + "</tr>");
                      do
                      {
                          out.print("<tr>"
                                  + "<td>"+myres.getString("itemname")+"</td>"
                                  + "<td><a href='updatefooditems.jsp?i_id="+myres.getString("i_id")+"'>Update</a></td>"
                                  + "<td><a href='deletefooditems.jsp?i_id="+myres.getString("i_id")+"' class='del' id='"+myres.getString("i_id")+"'>Delete</a></td>"
                                  + "</tr>");
                      }
                      while(myres.next());
                      out.print("</table>");
                   }
                   else
                   {
                        out.print("");
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