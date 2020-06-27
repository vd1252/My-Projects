<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%Thread.sleep(3000);
    try
                {  String URL="", UNAME="", PASS="";
                
                        URL = getServletContext().getInitParameter("URL");
                        UNAME = getServletContext().getInitParameter("UNAME");
                        PASS = getServletContext().getInitParameter("PASS");
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection myconnection=DriverManager.getConnection(URL, UNAME, PASS);
        try
        {
            String qu="select * from resturant where locality_id=?";
            PreparedStatement myst=myconnection.prepareStatement(qu);
            myst.setString(1, request.getParameter("resturant"));
            ResultSet res=myst.executeQuery();
            if(res.next())
            {
                out.print("<option>Choose resturant</option>");
                 do
                            {
                                out.print("<option value='"+res.getString("rid")+"'>"+res.getString("rname")+"</option>");
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
                   