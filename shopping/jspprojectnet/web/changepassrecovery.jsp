<%@page import="java.sql.*"%>
<%@page import="javax.mail.*"%>
<%@page import="javax.mail.internet.*"%>
<%@page import="java.util.Properties"%>
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
				<li class="active">Reset password</li>
			</ol>
		</div>
	</div>
        <div class="login">
		<div class="container">
			<h2>Reset password Form</h2>
		
			<div class="login-form-grids animated wow slideInUp" data-wow-delay=".5s">
				 <form method="post" >
                                              
                              
                                                <div>
							
                                                            
							<input type="password" placeholder="Enter New password" required=" " name="newpass"> 
						</div>
                                                <div>
							
							<input type="password" placeholder="Confirm password" required=" " name="cpass"> 
						</div>
                                                 <input type="submit" value="Change Password" name="s1">
                                                                                       
                             
   <%
            if(request.getParameter("username")!=null)
            {
             String username=request.getParameter("username");
        String key = request.getParameter("key");
      
                                Class.forName("com.mysql.jdbc.Driver");
                Connection myconnection=DriverManager.getConnection("jdbc:mysql://localhost/evedb", "root", "");
                try
                {
                   String qu="select * from signup where email=? and secretkey=?";
                   PreparedStatement myst=myconnection.prepareStatement(qu);
                   myst.setString(1, username);
                   myst.setString(2, key);
                   
                    ResultSet myresult=myst.executeQuery();
                    if(myresult.next()==false)
                    {
                        response.sendRedirect("index.jsp");
                    }   
                    else
                    {
                         session.setAttribute("username", username);
                         session.setAttribute("key", key);
                    }
                    
                }
                  catch(Exception e)
                        {
                            out.print("Error in query"+e.getMessage());
                        }
            }
            
    if(request.getParameter("s1")!=null)
    {
        
                        String currpass,password,cpassword;
                       String SALT = "%%%,**,%$^^";
                        password=request.getParameter("newpass");
                        cpassword=request.getParameter("cpass");
                        if(password.equals(cpassword))
                        {
               String myURL="", myUNAME="", myPASS="";
                                                           myURL = getServletContext().getInitParameter("URL");
                                                           myUNAME = getServletContext().getInitParameter("UNAME");
                                                           myPASS = getServletContext().getInitParameter("PASS");
                                       Class.forName("com.mysql.jdbc.Driver");
                                        Connection myconnection=DriverManager.getConnection(myURL, myUNAME, myPASS);
              
               
                    try
                    {
                        String qu2="update signup set pass=MD5(?) where email=? and secretkey=?";
                        PreparedStatement myst2=myconnection.prepareStatement(qu2);
                        myst2.setString(1, password + SALT);
                        myst2.setString(2, session.getAttribute("username").toString());
                        myst2.setString(3, session.getAttribute("key").toString());
                         
                         int row=myst2.executeUpdate();
                         if(row==1)
                         {
                             out.print("Password Changed Successfully");
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
                        else
                        {
                            out.print("Password missmatch");
                        }
                    }
                   
                
                
     
    
%>
     </form>
			</div>
			
		</div>
	</div>
		
          <%@include file="footer.jsp" %>
    </body>
</html>
