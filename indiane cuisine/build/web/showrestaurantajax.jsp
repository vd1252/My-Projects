<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%Thread.sleep(3000);
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
                   String q2="select * from resturant where locality_id=?";
                   PreparedStatement myst=myconnection.prepareStatement(q2);
                   myst.setString(1, request.getParameter("locality"));
                   ResultSet myres=myst.executeQuery();
                   if(myres.next())//check whether the result found or not
                   {
                        out.print("<table class='table' border='1px'>"
                              + "<tr>"
                               + "<td><b>Image</b> </td>"
                              + "<td><b>Restaurant Name</b> </td>"
                              + "<td><b>Address </b></td>"
                              + "<td><b>cost for two</b> </td>"
                              + "<td><b>Cuisines </b></td>"
                              + "<td><b>Phone No. </b></td>"
                              + "<td><b>Opens at </b></td>"
                              + "<td><b>Closes at </b></td>"
                              + "<td><b>More Info. & Speciality</b> </td>"
                              + "<td><b>Update</b></td>"
                              + "<td><b>Delete</b></td>"
                              + "</tr>");
                      do
                      {
                          
                          out.print("<tr>"
                                  + "<td><img src='cimages/"+myres.getString("image")+"' width='100px' border='1px'/></td>"
                                  + "<td>"+myres.getString("rname")+"</td>"
                                  + "<td>"+myres.getString("description")+"</td>"  
                                  + "<td>"+myres.getString("cost")+"</td>"
                                  + "<td>"+myres.getString("cuisine")+"</td>"
                                   + "<td>"+myres.getString("phno")+"</td>"
                                   + "<td>"+myres.getString("open")+"</td>"
                                   + "<td>"+myres.getString("close")+"</td>"
                                   + "<td>"+myres.getString("moreinfo")+"</td>"
                                  + "<td><a href='updaterestaurant.jsp?rid="+myres.getString("rid")+"'>Update</a></td>"
                                  + "<td><a href='deleterestaurant.jsp?rid="+myres.getString("rid")+"' class='del' id='"+myres.getString("locality_id")+"'>Delete</a></td>"
                                  + "</tr>");
                      }
                      while(myres.next());
                      out.print("</table>");
                   }
                   else
                   {
                        out.print("locality not available");
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
