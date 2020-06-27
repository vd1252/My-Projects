<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<title>Zomato</title>
<!----to include css and strips------------>
        <%@include file="exefiles.jsp" %>
</head>
<body>
    <!----to include header portion------------>
    <div class="banner1">
         <%@include file="header.jsp" %>
    </div>
	
<!-- registration -->
	<div class="breadcrumbs">
		<div class="container-fluid">
			<ol class="breadcrumb breadcrumb1 animated wow slideInLeft" data-wow-delay=".5s">
				<li><a href="index.jsp"><span class="glyphicon glyphicon-home" aria-hidden="true"></span>Home</a></li>
				<li class="active">Login Page</li>
			</ol>
		</div>
            
	</div>
<div class="login-page">
		<div class="container">
			<div class="account_grid">
				<div class="col-md-6 login-left wow fadeInLeft" data-wow-delay="0.4s">
					<h3><font color="purple">NEW CUSTOMERS</font></h3>
					<p>By creating an account with our store, you will be able to move through the checkout process faster, store multiple shipping addresses, view and track your orders in your account and more.</p>
					<a class="acount-btn" href="signup.jsp">Create an Account</a>
			   </div>
			   <div class="col-md-6 login-right wow fadeInRight" data-wow-delay="0.4s">
					<h3><font color="purple">REGISTERED CUSTOMERS</font></h3>
					<p>If you have an account with us, please log in.</p>
					<form method="post">
						<div>
							<span>Email Address<label>*</label></span>
							<input type="email" placeholder="Email Address" required=" " name="em"> 
						</div>
						<div>
							<span>Password<label>*</label></span>
							<input type="password" placeholder="Password" required=" " name="pass"> 
						</div>
                                        <div class ="forgot">
                                            <input type="checkbox" name="ch1">Keep me logged in
                                           
					</div>
						<a class="forgot" href="forgotpassword.jsp">Forgot Your Password?</a>
						<input type="submit" value="Login" name="s1">
                                                  <%
                                            if(request.getParameter("s1")!=null)
                                            {         
                                                        String myURL="", myUNAME="", myPASS="";
                                                        myURL = getServletContext().getInitParameter("URL");
                                                        myUNAME = getServletContext().getInitParameter("UNAME");
                                                        myPASS = getServletContext().getInitParameter("PASS");
                                                        String uname=request.getParameter("em");
                                                        String pass=request.getParameter("pass");
                                                        String SALT="%%%,**,%$^^";
                                            try
                                                {   
                                                    Class.forName("com.mysql.jdbc.Driver");
                                                    Connection myconnection=DriverManager.getConnection(myURL, myUNAME, myPASS);
                                                    try
                                                    {  String q="Select * from signup where email=? and pass=MD5(?)";
                                                       PreparedStatement myst=myconnection.prepareStatement(q);
                                                       myst.setString(1,uname);
                                                       myst.setString(2,pass+SALT);
                                                       ResultSet myres = myst.executeQuery();    
                                                        if(myres.next())
                                                        {
                                                            String nm=myres.getString("name");
                                                            session.setAttribute("uname",nm);
                                                            session.setAttribute("email", myres.getString("email"));
                                                            session.setAttribute("utype", myres.getString("utype"));
                                                            
                                                            if(myres.getString("utype").equals("admin"))
                                                            {
                                                            response.sendRedirect("admin.jsp");
                                                            }
                                                            else
                                                            {
                                                                
                                                                //if(request.getParameter("pid")!= null)
                                                                //  {
                                                                 //     response.sendRedirect("productdetails.jsp?pid="+request.getParameter("pid"));
                                                                 // }
                                                               // else
                                                                //{
                                                                    if(request.getParameter("ch1")!=null)
                                                                    {
                            
                                                               Cookie myCookie=new Cookie("uname",myres.getString("email"));
                                                                        myCookie.setMaxAge(7*24*60*60);
                                                                        response.addCookie(myCookie);
                                                                    }
                                                            response.sendRedirect("index.jsp");    
                                                                   // }
                                                            }
                                                        }
                                                        else
                                                        {
                                                    try
                                                    {  
                                                        String q1="Select * from resturant where shopemail=? and shoppass=MD5(?)";
                                                    
                                                       PreparedStatement myst1=myconnection.prepareStatement(q1);
                                                       myst1.setString(1,uname);
                                                       myst1.setString(2,pass+SALT);
                                                       ResultSet myres1 = myst1.executeQuery();    
                                                        if(myres1.next())
                                                        {
                                                            String nm=myres1.getString("rname");
                                                            session.setAttribute("rid",myres1.getString("rid"));
                                                            session.setAttribute("uname",nm);
                                                            session.setAttribute("email", myres1.getString("shopemail"));
                                                            session.setAttribute("utype", myres1.getString("usertype"));
                                                            session.setAttribute("usertype", myres1.getString("usertype"));
                                                            if(myres1.getString("usertype").equals("shopkeeper"))
                                                            {
                                                                if(request.getParameter("ch1")!=null)
                                                                    {
                            
                                                                       Cookie myCookie=new Cookie("uname",myres1.getString("shopemail"));
                                                                        myCookie.setMaxAge(7*24*60*60);
                                                                        response.addCookie(myCookie);
                                                                    }
                                                             
                                                            response.sendRedirect("shopkeeper.jsp");
                                                            
                                                            }
                                                            
                                                            
                                                        }
                                                        else{
                                                            
                                                           out.print("wrong username and password");     
                                                        }
                                                    }

                                                               
                                                catch(Exception e)
                                                {
                                                    out.print("Error in query"+e.getMessage());
                                                }
                                            }}
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
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>


            <%@include file="footer.jsp" %>
            
</body>
</html>
