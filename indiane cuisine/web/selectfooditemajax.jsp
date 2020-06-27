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
            String qu="select * from fooditem where f_id=?";
            PreparedStatement myst=myconnection.prepareStatement(qu);
            myst.setString(1, request.getParameter("fitem"));
            ResultSet res=myst.executeQuery();
            if(res.next())
            {
                out.print(" <table class='table'> "
                        + "<thead>"
                        + " <tr>"
                        + " <th>Food Item</th>"
                        + "<th>Price</th>"
                        + "<th>Discount</th>"
                        + "</tr>"
                        + "</thead>"
                        + "<tbody>");
                                                            
                 do
                            {   out.print("<tr>"
                                   + "<td><input type='checkbox' name='item' value='"+res.getString("itemname")+"'>"+ res.getString("itemname")+"</td>"
                                    + "<td><input type='text' placeholder='Enter Price' required=' ' name='price'></td>"
                                    + "<td><input type='text' placeholder='Enter Discount' required=' ' name='discount'></td>"
                                  +  "<td><input type='file' placeholder='upload image' required=' ' name='rimage'></td>"
                                           + "</tr>");
                                                        
                            }while(res.next());
                 
                 out.print("</tbody>");
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
                   