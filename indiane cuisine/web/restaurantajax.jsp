<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String a=request.getParameter("rname");
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
                    String qu1="select rid from resturant where rname like ?";
                    PreparedStatement myst1=myconnection.prepareStatement(qu1);
                    myst1.setString(1, a);
                    ResultSet row1=myst1.executeQuery();
                    if(row1.next())
                    {
                        out.print(row1.getString("rid"));
                    }
                    else
                    {
                        out.print("No data found");
                    }
             
                }
                catch(Exception e)
                {
                    out.print("Error in query "+e.getMessage());
                }
            }
            catch(Exception e)
            {
                    out.print("Error in connection "+e.getMessage());
            }

%>