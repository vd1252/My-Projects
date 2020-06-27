<%//
    //if(!"administrator".equals(session.getAttribute("usertype")))
    //{
      //  response.sendRedirect("loginpage.jsp");
  //  }
//%>

<%@include file="disp.jsp" %>
<%@include file="adminheader.jsp" %>
<%@page import="java.sql.*" %>
<%@include file="databaseinfo.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add State</title>
    </head>
    <body>
<div class="login">
<div class="container">
        <h2>Add State</h2>
        <div class="login-form-grids animated wow slideInUp" data-wow-delay=".5s">
                <form name="form2">
                    <input type="text" placeholder="State" name="statename" required=" " >
                    <input type="submit" value="Add State" name="addstate">
                </form>
<%
    if(request.getParameter("addstate")!=null)
    {
        String sname="";
        sname=request.getParameter("statename");
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn=DriverManager.getConnection(PATH+PLACE,USERNAME,PASSWORD);
            try
            {
                 String q1="select sname from statetable where sname=?";
                 PreparedStatement myst1=conn.prepareStatement(q1);
                 myst1.setString(1,sname );
                 ResultSet myresult1=myst1.executeQuery();
                 if(myresult1.next()==true)
                {
                   out.print("<script type='text/javascript'>alert('State already added')</script>");
                
                }
                else
                {
                     String q="insert into statetable (sname) values(?)";
                PreparedStatement myst=conn.prepareStatement(q);
                myst.setString(1,request.getParameter("statename"));
                    int result=myst.executeUpdate();
                    if(result>0)
                    {
                        out.print("<script type='text/javascript'>alert('State added successfully')</script>");
                    }
                    else
                    {
                        out.print("<script type='text/javascript'>alert('State cannot be added ')</script>");
                    }
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
    }
%>
        </div>
</div>
</div>
    </body>
</html>

