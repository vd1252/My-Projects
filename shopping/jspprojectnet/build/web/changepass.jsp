<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<%
    if(session.getAttribute("email")==null)
    {
        response.sendRedirect("login.jsp");
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
         <%@include file="header.jsp" %>
         <div class="breadcrumbs">
		<div class="container">
			<ol class="breadcrumb breadcrumb1 animated wow slideInLeft" data-wow-delay=".5s">
				<li><a href="index.html"><span class="glyphicon glyphicon-home" aria-hidden="true"></span>Home</a></li>
				<li class="active">Change Password Page</li>
			</ol>
		</div>
	</div>
         <div class="register">
		<div class="container">
			<h2>Change Password</h2>
			<div class="login-form-grids">
				<form method="post">
					<input type="password" placeholder="Current Password" required=" " name="currpass">
					<input type="password" placeholder="New Password" required=" " name="newpass">
					<input type="password" placeholder="Password Confirmation" required=" " name="cpass" >
					<input type="submit" value="Change Password" name="s1">
                                </form>
<%
    if(request.getParameter("s1")!=null)
    {
        String currpass,password,cpassword;
        currpass=request.getParameter("currpass");
        password=request.getParameter("newpass");
        cpassword=request.getParameter("cpass");
        if(password.equals(cpassword))
        {
            try
            {
                Class.forName("com.mysql.jdbc.Driver");
                Connection myconnection=DriverManager.getConnection("jdbc:mysql://localhost/evedb", "root", "");
                try
                {
                   String qu="update signup set pass=? where email=? and pass=?";
                   PreparedStatement myst=myconnection.prepareStatement(qu);
                   myst.setString(1, password);
                   myst.setString(2, session.getAttribute("email").toString());
                    myst.setString(3, currpass);
                    int row=myst.executeUpdate();
                    if(row==1)
                    {
                        out.print("Password Changed");
                    }
                    else
                    {
                        out.print("Current Password is wrong");
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
        else
        {
            out.print("Password missmatch");
        }
    }
%>
				</form>
			</div>
			<div class="register-home">
				<a href="index.html">Home</a>
			</div>
		</div>
	</div>
		
          <%@include file="footer.jsp" %>
    </body>
</html>
