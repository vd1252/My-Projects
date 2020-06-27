<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

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
				<li class="active">Add City</li>
			</ol>
		</div>
	</div>
        <div class="login">
		<div class="container">
                    
                    <h1><center><font color="purple">Add City</font></center></h1><br><br>
		
			<div class="login-form-grids animated wow slideInUp" data-wow-delay=".5s">
                            <div class="mysubmit-btn">
				<form method="post">
                                    <center><b><input type="text" placeholder="City,State" required=" " name="city"><br><br>
                                    <input type="submit" value="Add" name="s1">
                                    <br><br><br>
		
					
                                        <%
    if(request.getParameter("s1")!=null)
    {
        String city=request.getParameter("city");
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
                String qu="insert into city(city) value(?)";
                PreparedStatement myst=myconnection.prepareStatement(qu);
                myst.setString(1, request.getParameter("city"));
                int i=myst.executeUpdate();
                if(i==1)
                {
                    out.print("City Added");
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