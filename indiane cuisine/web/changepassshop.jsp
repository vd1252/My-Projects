<%@page import="java.io.File"%>
<%@page import="org.apache.commons.fileupload.FileUploadException"%>
<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.commons.fileupload.FileItemFactory"%>
<%@page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
<%@page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
         <%@include file="shopkeeperheader.jsp" %>
        <div class="breadcrumbs">
		<div class="container">
			<ol class="breadcrumb breadcrumb1 animated wow slideInLeft" data-wow-delay=".5s">
				<li><a href="admin.jsp"><span class="glyphicon glyphicon-home" aria-hidden="true"></span>Home</a></li>
				<li class="active">Change password</li>
			</ol>
		</div>
	</div>
        
        <!----Add Resturant----------->
        <div class="login-page">
		<div class="container">
                    
			<div class="col-md-3"></div>
			   <div class="col-md-6 login-right wow fadeInRight" data-wow-delay="0.4s" >
                               <center><h3><font color="purple">Change Password Page</font></h3></center>
                               <center>
                                   <form method="post" >
                                                 <div>
							
							<input type="password" placeholder="Current Password" required=" " name="currpass"> 
						</div>
                              
                                                <div>
							
                                                            
							<input type="password" placeholder="Enter New password" required=" " name="newpass"> 
						</div>
                                                <div>
							
							<input type="password" placeholder="Confirm password" required=" " name="cpass"> 
						</div>
                                                 <input type="submit" value="Change Password" name="s1">
                                                 <%
    if(request.getParameter("s1")!=null)
    {
        String currpass,password,cpassword;
        String SALT="%%%,**,%$^^";
        currpass=request.getParameter("currpass");
        password=request.getParameter("newpass");
        cpassword=request.getParameter("cpass");
        
        if(password.equals(cpassword))
        {
            try
            {                                              String myURL="", myUNAME="", myPASS="";
                                                           myURL = getServletContext().getInitParameter("URL");
                                                           myUNAME = getServletContext().getInitParameter("UNAME");
                                                           myPASS = getServletContext().getInitParameter("PASS");
                                       Class.forName("com.mysql.jdbc.Driver");
                                        Connection myconnection=DriverManager.getConnection(myURL, myUNAME, myPASS);
                try
                {
                   
                   String qu2="update resturant set shoppass=MD5(?) where shopemail=? and shoppass=MD5(?)";
                   PreparedStatement myst2=myconnection.prepareStatement(qu2);
                  
                     myst2.setString(1, password+SALT);
                   myst2.setString(2, session.getAttribute("email").toString());
                    myst2.setString(3, currpass+SALT);
                    
                    int row2=myst2.executeUpdate();
                    
                     if(row2==1)
                       
                    {
                        out.print("Password Changed Sucessfully");
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
                                                                                      
                             </form></center>
			   </div>	
                             <div class="col-sm-3"></div>
                             
				<div class="clearfix"> </div>
                    </div>
			</div>
		
	
  <%@include file="shopkeeperfooter.jsp" %>
         
    </body>
</html>