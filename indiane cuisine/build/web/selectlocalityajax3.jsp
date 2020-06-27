<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%   Thread.sleep(3000);
    try
                {  String URL="", UNAME="", PASS="";
                    String localityid="";
                    
                        URL = getServletContext().getInitParameter("URL");
                        UNAME = getServletContext().getInitParameter("UNAME");
                        PASS = getServletContext().getInitParameter("PASS");
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection myconnection=DriverManager.getConnection(URL, UNAME, PASS);
        try
        {
            String qu="select * from locality where cityid=? " ;
            PreparedStatement myst=myconnection.prepareStatement(qu);
            myst.setString(1, request.getParameter("cityajax"));
            //session.setAttribute("city_id",request.getParameter("cityajax"));
          
            ResultSet res=myst.executeQuery();
            if(res.next())
            {
                out.print("<option>Select Locality</option>");
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