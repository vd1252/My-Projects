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
         <%@include file="header.jsp" %>
        <div class="breadcrumbs">
		<div class="container">
			<ol class="breadcrumb breadcrumb1 animated wow slideInLeft" data-wow-delay=".5s">
				<li><a href="index.html"><span class="glyphicon glyphicon-home" aria-hidden="true"></span>Home</a></li>
				<li class="active">Login Page</li>
			</ol>
		</div>
	</div>s
        <div class="login">
		<div class="container">
			<h2>Login Form</h2>
		
			<div class="login-form-grids animated wow slideInUp" data-wow-delay=".5s">
				<form method="post">
					<input type="email" placeholder="Email Address" required=" " name="em">
					<input type="password" placeholder="Password" required=" " name="pass">
                                        <div class="forgot">
                                            <label><input type="checkbox" name="ch1">Keep Me Login</label>
					</div>
					<div class="forgot">
						<a href="forgotpwd.jsp">Forgot Password?</a>
					</div>
					<input type="submit" value="Login" name="s1">
<%
    if(request.getParameter("s1")!=null)
    {
        String uname=request.getParameter("em");
        String pass=request.getParameter("pass");
        String SALT = "#$%#$%%$%^t$%#";
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            Connection myconnection=DriverManager.getConnection("jdbc:mysql://localhost/evedb", "root", "");
            try
            {
                String qu="select * from signup where email=? and pass=MD5(?)";
                PreparedStatement myst=myconnection.prepareStatement(qu);
                myst.setString(1, uname);
                myst.setString(2, pass + SALT);
                ResultSet myres=myst.executeQuery();
                if(myres.next())
                {
                    String nm=myres.getString("name");
                    session.setAttribute("uname", nm);
                    session.setAttribute("email", myres.getString("email"));//unique
                    session.setAttribute("utype", myres.getString("utype"));
                    if(myres.getString("utype").equals("admin"))
                    {
                        response.sendRedirect("admin.jsp");
                    }
                    else
                    {
                        if(request.getParameter("ch1")!=null)
                        {
                            Cookie myCookie=new Cookie("uname",myres.getString("email"));
                            myCookie.setMaxAge(7*24*60*60);
                            response.addCookie(myCookie);
                        }
                        if(request.getParameter("pid")!=null)
                        {
                            response.sendRedirect("productdetails.jsp?pid="+request.getParameter("pid"));
                        }
                        else
                        {
                            
                            response.sendRedirect("index.jsp");
                        }
                    }
                }
                else
                {
                    out.print("Wrong Username and password");
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
				</form>
			</div>
			<h4>For New People</h4>
			<p><a href="signup.jsp">Register Here</a> (Or) go back to <a href="index.jsp">Home<span class="glyphicon glyphicon-menu-right" aria-hidden="true"></span></a></p>
		</div>
	</div>
		
          <%@include file="footer.jsp" %>
    </body>
</html>
