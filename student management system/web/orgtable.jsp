<%-- 
    Document   : registerpage
    Created on : 27 Jun, 2018, 10:55:48 AM
    Author     : HP
--%>

<%@page import="java.util.Properties"%>
<%@page import="java.sql.*"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //for-mobile-apps -->
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<!-- font-awesome icons -->
<link href="css/font-awesome.css" rel="stylesheet"> 
<!-- //font-awesome icons -->
<!-- js -->
<script src="js/jquery-1.11.1.min.js"></script>
<!-- //js -->
<link href='https://fonts.googleapis.com/css?family=Raleway:400,100,100italic,200,200italic,300,400italic,500,500italic,600,600italic,700,700italic,800,800italic,900,900italic' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
<!-- start-smoth-scrolling -->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
        <!-- main slider-banner -->
<script src="js/skdslider.min.js"></script>
<link href="css/skdslider.css" rel="stylesheet">
<script type="text/javascript">
		jQuery(document).ready(function(){
			jQuery('#demo1').skdslider({'delay':5000, 'animationSpeed': 2000,'showNextPrev':true,'showPlayButton':true,'autoSlide':true,'animationType':'fading'});
						
			jQuery('#responsive').change(function(){
			  $('#responsive_wrapper').width(jQuery(this).val());
			});
			
		});
</script>

        <title>JSP Page</title>
        
       <%@include file="disp.jsp"%>
<%@include file="orgheader.jsp" %>
        <%@include file="databaseinfo.jsp" %>
    </head>
    <body>
    
    <!-- breadcrumbs -->
	<div class="breadcrumbs">
		<div class="container">
			<ol class="breadcrumb breadcrumb1 animated wow slideInLeft" data-wow-delay=".5s">
				<li><a href="index.jsp"><span class="glyphicon glyphicon-home" aria-hidden="true"></span>Home</a></li>
				<li class="active">REGISTER FOR PICK UP</li>
			</ol>
		</div>
	</div>
<!-- //breadcrumbs -->
<!-- register -->

	<div class="register">
		<div class="container">
			<h2>PICK UP</h2>
			<div class="login-form-grids">
                            <form  method="post">
                            <div id="firstone">
				<h5>Organisation information</h5>
				
                                <input type="text" name="name" value="<%=session.getAttribute("restname")%>" required=" " ><br>
                                <input type="email" name="email" value="<%=session.getAttribute("useremail")%>" required=" " ><br>
                                <input type="text" name="qty" placeholder="Quantity for no. of person" required=" " ><br>
                              <select name="combores" class="form-control" id="aa">
                                            <option>Choose Restaurant for Pick Food</option>
<%
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn=DriverManager.getConnection(PATH+PLACE,USERNAME,PASSWORD);
            try
            {
                 String q1="select nameofres from mrestable";
                 PreparedStatement myst1=conn.prepareStatement(q1);
                 ResultSet myresult1=myst1.executeQuery();
                 if(myresult1.next()==true)
                {
                    do
                    {

                        out.print("<option value="+myresult1.getString("sid") +">" +myresult1.getString("nameofres") + "</option>");
                    }
                    while(myresult1.next());
                }
                else
                {
                   out.print("<option value=''>Nothing</option>");
                    
                }
            }
            catch(Exception e)
            {
                    out.print("Error in query"+e.getMessage());
            }
            finally
            {
                conn.close();
            }
        }
        catch(Exception e)
        {
            out.print("Error in connection"+e.getMessage());
        }
%>
</select><br>
                                        <input type="text" name="time" placeholder="Time for Pickup" required=" " ><br>
                                        <input type="text" name="loc" placeholder="Location for Pickup" required=" " ><br>
                                        <input type="text" name="city" placeholder="City for Pickup" required=" " ><br>
                                        <input type="text" name="state" placeholder="State for Pickup" required=" " ><br>
                                       
				
				
			
					
                             
                                <input type="submit" class="button" value="Proceed" name="submit1" id="s1" ><br>
					</div>
                            
                                 </form>     
 <%
    if(request.getParameter("s1")!=null)
    {
       
        
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            Connection myconnection=DriverManager.getConnection(PATH+PLACE,USERNAME,PASSWORD);
            try
            {
                String qu="insert into morg values(?,?,?,?,?,?,?,?,?)";
                PreparedStatement myst=myconnection.prepareStatement(qu);
                myst.setString(1,session.getAttribute("sid").toString());
                myst.setString(2,session.getAttribute("restname").toString());
                myst.setString(3,session.getAttribute("useremail").toString());
                myst.setString(4,request.getParameter("qty"));
                myst.setString(5,request.getParameter("combores"));
                myst.setString(6,request.getParameter("time"));
                myst.setString(7,request.getParameter("loc"));
                myst.setString(8,request.getParameter("city"));
                myst.setString(9,request.getParameter("state"));
        
                
                ResultSet myres=myst.executeQuery();
                if(myres.next())
                {  
                
                  out.print("Proceeded Successfully");
                }
                else
                {
                    out.print("Not Proceeded");
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