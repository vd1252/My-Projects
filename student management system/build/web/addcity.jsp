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
                 <select name="state" class="form-control">
                                            <option>Choose State</option>
<%
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            Connection myconn=DriverManager.getConnection(PATH+PLACE,USERNAME,PASSWORD);
            try
            {
                String q="select * from statetable";
                PreparedStatement myst=myconn.prepareStatement(q);
                ResultSet myresult=myst.executeQuery();
                if(myresult.next())
                {

                    do
                    {

                        out.print("<option value="+myresult.getString("stateid") +">" +myresult.getString("sname") + "</option>");
                    }
                    while(myresult.next());
                }
                else
                {
                    out.print("<option>No State added</option>");
                }
            }
            catch(Exception e)
            {
                out.print("<script type='text/javascript'>");
                            out.print("alert('Error in state query')"+e.getMessage());
                            out.print("</script>");
            }
            finally
            {
              myconn.close();  
            }
        }
        catch(Exception e)
        {
            out.print("<script type='text/javascript'>");
                            out.print("alert('Error in connection')"+e.getMessage());
                            out.print("</script>");
        }
   %>
                                       </select><br>   
                    <input type="text" placeholder="City Name" name="cityname" required=" " >
                    <input type="submit" value="Add City" name="addcity">
                </form>
<%
    if(request.getParameter("addcity")!=null)
    {
        String cname="",sid=" ";
        cname=request.getParameter("cityname");
        sid=request.getParameter("state");
        
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn=DriverManager.getConnection(PATH+PLACE,USERNAME,PASSWORD);
            try
            {
                 String q1="select ctyname from citytable where ctyname=?";
                 PreparedStatement myst1=conn.prepareStatement(q1);
                 myst1.setString(1,cname );
                 ResultSet myresult1=myst1.executeQuery();
                 if(myresult1.next()==true)
                {
                   out.print("<script type='text/javascript'>alert('City already added')</script>");
                
                }
                else
                {
                     String q="insert into citytable (ctyname,stateid) values(?,?)";
                PreparedStatement myst=conn.prepareStatement(q);
                myst.setString(1,cname);
                myst.setString(2,sid);
                    int result=myst.executeUpdate();
                    if(result>0)
                    {
                        out.print("<script type='text/javascript'>alert('City added successfully')</script>");
                    }
                    else
                    {
                        out.print("<script type='text/javascript'>alert('City cannot be added ')</script>");
                    }
                }
            }
            catch(Exception e)
            {
                    out.print("Error in query me"+e.getMessage());
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

