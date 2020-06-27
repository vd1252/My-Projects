<!DOCTYPE html>
<html>
<head>
<title>Zomato</title>

<%@include file="exefiles.jsp" %>
<%@page import="java.sql.*"%>
<%@page import="java.net.*"%>
<%@ page import="java.util.*"%> 
<%@ page import="com.sun.syndication.feed.synd.*"%> 
<%@ page import="com.sun.syndication.io.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<style>
  .modal-header, h4, .close {
      background-color: #5cb85c;
      color:white !important;
      text-align: center;
      font-size: 30px;
  }
  .modal-footer {
      background-color: #f9f9f9;
  }
  </style>
</head>
<body>
    <!----to include header portion------------>
    
         <%@include file="header.jsp" %>
   
         <!-- single -->
        <div class="single" style="padding:10em 0;">
            <form method="post">
            <div class="container-fluid">
                <h3 style="font-size: 2.8em;color: #6cbc35;;margin: 0 1em 1em;">Review your Order</h3>
                <div class="col-md-8">
                    
                    <div class="single-top row">
                           <div class="register" style="padding: 0em 2em 0em 0em;">
		  	  
                              <div class="col-md-6">
				 <div class="register-top-grid">
					<h3><font color="purple">PERSONAL INFORMATION</font></h3>
					 <div class="wow fadeInLeft" data-wow-delay="0.4s" style="width:80%;">
						<span>Name<label>*</label></span>
						<input type="text" placeholder="Name..." required=" " name="hname" >
                                                <div id="msg"></div>
					 </div>
					 <div class="wow fadeInLeft" data-wow-delay="0.4s" style="float:none;width:80%;">
						<span>Phone Number<label>*</label></span>
						<input type="text" placeholder="Phone Number..." required=" " name="phno" >
                                                <div id="msg"></div>
					 </div>
					 <div class="wow fadeInLeft" data-wow-delay="0.4s" style="float:none;width:80%;">
						<span>Delivery Address<label>*</label></span>
                                                <textarea style="width: 100%;resize: none;height: 12.7em;padding: 15px;" placeholder="Address..." required=" " name="address" ></textarea>
                                                <div id="msg"></div>
					 </div>
					 <div class="clearfix"> </div>
					 </div>
                              </div>
                              <div class="col-md-6">
				     <div class="register-top-grid">
						    <h3><font color="purple">PAYMENT INFORMATION</font></h3>
							 <div class="wow fadeInLeft" data-wow-delay="0.4s" style="width:80%;">
								<span>Payment Mode<label>*</label></span>
                                                                    <label class="checkbox"><input type="radio" name="mode" value="cod"><i> </i>Cash on Delivery</label>
                                                                
                                                                <a class="news-letter" href="www.paypal.com">
                                                                    <label class="checkbox"><input type="radio" name="mode" value="paypal"><i> </i>PayPal</label>
                                                                </a>
                                                         </div><br>                                                        
							 <div class="wow fadeInRight" data-wow-delay="0.4s" style="float:none;width:80%;">
								<span>Special Instruction(if any)</label></span>
								<input type="text"  name="sp" >
							 </div>
                                                          <div class="wow fadeInRight" data-wow-delay="0.4s" style="float:none;width:80%;">
								<span>Apply Code(if any)</label></span>
								<input type="text"  name="code" >
							 </div>
					 </div>
				
				<div class="clearfix"> </div>
                              </div>
                                
		   </div>
                        </div>
                      
      </div>
               
               <div class="col-md-4">
                    <div class="row">
                        <div class="panel panel-default">
                            <div class="panel-body" style="height:430px;">
                                <div class="register-but">
				  
					   <input class="acount-btn" type="submit" value="Place your order" name="s1" style="width:100%;">
                                            
                                           <div class="clearfix"> </div>
                                 </div>
                                <h3 style="color: purple;font-size: 1.5em;margin: 1em;">Order Summary</h3>
                                
                                <p style="color: #A5A7A3;font-size: 1.3em;margin: 0em 1em;">Special Discount:<span class="pull-right">5%</span></p>
                                <p style="color: #A5A7A3;font-size: 1.3em;margin: 0em 1em;">GST:<span class="pull-right">9%</span></p>
                                <hr style="height:2px;">
                                <h3 style="color: green;font-size: 1.5em;margin: 1em;">Order Total:  <span class="pull-right" name="grandtotal"><i class="fas fa-rupee-sign"></i><% out.print((Double.parseDouble(session.getAttribute("tcost").toString()))-(0.05*(Double.parseDouble(session.getAttribute("tcost").toString())))+(0.09*(Double.parseDouble(session.getAttribute("tcost").toString())))); %></span></h3>
                                <%
                                   Double grantotal= (Double.parseDouble(session.getAttribute("tcost").toString()))-(0.05*(Double.parseDouble(session.getAttribute("tcost").toString())))+(0.09*(Double.parseDouble(session.getAttribute("tcost").toString())));
                                   String gtotal=String.valueOf(grantotal);  
                                   //session.setAttribute("grandtotal",gtotal);
                                   if(request.getParameter("s1")!=null)
    {
        
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
                String qu="insert into checkout(hname,phone,mode,specialinst,code,address,tcost,uname,restid) value(?,?,?,?,?,?,?,?,?)";
                PreparedStatement myst=myconnection.prepareStatement(qu);
                myst.setString(1, request.getParameter("hname"));
                myst.setString(2, request.getParameter("phno"));
                myst.setString(3, request.getParameter("mode"));
                myst.setString(4, request.getParameter("sp"));
                myst.setString(5, request.getParameter("code"));
                myst.setString(6, request.getParameter("address"));
                myst.setString(7,gtotal);
                myst.setString(8, session.getAttribute("email").toString());
                myst.setString(9, session.getAttribute("restid").toString());
                int i=myst.executeUpdate();
                if(i==1)
                {
                    response.sendRedirect("thanks.jsp");
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
                                <div class="sinbt">
                                            <a class="hvr-shutter-in-horizontal" href="details.jsp?rid=<% out.print(request.getParameter("rid"));%>">Go Back</a>
                                </div>
                        </div>
                      </div>
                    </div>
                   </div>
            </div>           
            </form>     
            </div>
        
    <!-- tels -->
        <!--------To include footer portion--------->
            <%@include file="footer.jsp" %>
            
</body>
</html>