<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String cname="";
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
                String qu="select * from city where cityid=?";
                PreparedStatement myst=myconnection.prepareStatement(qu);
                myst.setString(1, request.getParameter("cityid"));
               ResultSet res=myst.executeQuery();
                if(res.next())
                {
                    cname=res.getString("city");
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
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<!----to include css and strips------------>
         <%@include file="exefiles.jsp" %>
    </head>
    <body>
	<!----to include header portion------------>
         <%@include file="adminheader.jsp" %>
        <div class="breadcrumbs">
		<div class="container">
			<ol class="breadcrumb breadcrumb1 animated wow slideInLeft" data-wow-delay=".5s">
				<li><a href="index.html"><span class="glyphicon glyphicon-home" aria-hidden="true"></span>Home</a></li>
				<li class="active">Update City</li>
			</ol>
		</div>
	</div>
        <div class="login">
		<div class="container">
                    
                    <h1><center><font color="purple">Update City</font></center></h1><br><br>
		
			<div class="login-form-grids animated wow slideInUp" data-wow-delay=".5s">
                            <div class="mysubmit-btn">
				<form method="post">
                                    <center><b><input type="text" placeholder="City,State" required=" " name="city" value="<% out.print(cname);%>"><br><br>
                                    <input type="submit" value="Update" name="s1">
                                    <br><br><br>
		
					
                                        <%
    if(request.getParameter("s1")!=null)
    {
        String city=request.getParameter("city");
         String URL="", UNAME="", PASS="";
                                                           URL = getServletContext().getInitParameter("URL");
                                                           UNAME = getServletContext().getInitParameter("UNAME");
                                                           PASS = getServletContext().getInitParameter("PASS");
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            Connection myconnection=DriverManager.getConnection(URL, UNAME, PASS);
            try
            {
                 String qu="update city set city=? where cityid=?";
                PreparedStatement myst=myconnection.prepareStatement(qu);
                myst.setString(1, request.getParameter("city"));
                myst.setString(2, request.getParameter("cityid"));
                int i=myst.executeUpdate();
                if(i==1)
                {
                    response.sendRedirect("managecity.jsp");
                }
                else
                {
                    out.print("problem");
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
                                    </b></center><br><br><br>
				</form>
			</div>
                    </div>
			</div>
	</div>
		
          <%@include file="adminfooter.jsp" %>
    </body>
</html>