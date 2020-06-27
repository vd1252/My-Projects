<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String a=request.getParameter("term");
    try
            {
                String myURL="", myUNAME="", myPASS="";
                                                           myURL = getServletContext().getInitParameter("URL");
                                                           myUNAME = getServletContext().getInitParameter("UNAME");
                                                           myPASS = getServletContext().getInitParameter("PASS");
                                                    Class.forName("com.mysql.jdbc.Driver");
                                                    Connection myconnection=DriverManager.getConnection(myURL, myUNAME, myPASS);
                try
                {
                    String qu1="select rname from resturant where rname like ?";
                    PreparedStatement myst1=myconnection.prepareStatement(qu1);
                    myst1.setString(1, a+"%");
                    ResultSet row1=myst1.executeQuery();
                    if(row1.next())
                    {
                        
                        String ans="[";
                        do
                        {
                            ans+="\""+row1.getString("rname")+"\",";
                        }
                        while(row1.next());
                       
                        String data=ans.substring(0, ans.length()-1);
                        data+="]";
                        out.print(data);
                        
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