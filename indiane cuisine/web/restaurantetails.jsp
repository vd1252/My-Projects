<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="exefiles.jsp" %>
<%@page import="java.net.*"%>
<%@ page import="java.util.*"%> 
<%@ page import="com.sun.syndication.feed.synd.*"%> 
<%@ page import="com.sun.syndication.io.*"%>
<!DOCTYPE html>

<html>
<head>
<title>Zomato</title>



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
        <div class="single">
            <div class="container">
                <%
    
try{
    String myURL="", myUNAME="", myPASS="";
    myURL = getServletContext().getInitParameter("URL");
    myUNAME = getServletContext().getInitParameter("UNAME");
    myPASS = getServletContext().getInitParameter("PASS");
    Class.forName("com.mysql.jdbc.Driver");
    Connection myconnection=DriverManager.getConnection(myURL, myUNAME, myPASS);
    
    try
    {
        
        String qu="select * from resturant where rid=?";
        PreparedStatement myst=myconnection.prepareStatement(qu);
        myst.setString(1,request.getParameter("rid"));
        ResultSet myres1=myst.executeQuery();
        if(myres1.next())
          {
              %>
                <div class="col-md-12">
                        <div class="single-top row">
                            <div class="col-md-6 single-left">
                                <img src="<% out.print("cimages/"+myres1.getString("image")); %>" class="img-responsive" alt="<% out.print(myres1.getString("rname")); %>">
                            </div>
                            <div class="col-md-6 single-right">
                                <h1><% out.print(myres1.getString("rname")); %></a></h1><br><br>
                                    <h3>•Restaurant</h3>
                                    <hr style="height:2px;" style="float:left">
                                    <p style="color:green;display:inline;">Open Now</p>|<p style="display:inline;color:grey;font-size: 20px;">Cost for two Rs <% out.print(myres1.getString("cost")); %></p>
                                    <hr style="height:2px;" style="float:left">
                                    <p style="display:block;color:black;font-size: 20px;">•<% out.print(myres1.getString("cuisine")); %></p>
                                    <div class="sinbt">
                                            <a class="hvr-shutter-in-horizontal" href="onlyorderfoodpage.jsp">Order Now</a>
                                    </div>
                            </div>
                            <div class="clearfix"> </div>
                        </div>
                    <div class="row">
                        <div class="col-md-12">
                           <ul class="nav nav-tabs nav-justified">
                             <li class="active"><a data-toggle="pill" href="#home"><h3>Overview</h3></a></li>
                             <li><a data-toggle="pill" href="#menu1"><h3>Menu</h3></a></li>
                             <li><a data-toggle="pill" href="#menu2"><h3>Review</h3></a></li>
                             <li><a data-toggle="pill" href="#menu3"><h3>Photos</h3></a></li>
                           </ul>

                           <div class="tab-content">
                             <div id="home" class="tab-pane fade in active">
                                 <div class="panel panel-default">
                                    <div class="panel-body" style="height:500px;">
                                        <div class="col-md-4">
                                        <h1>Phone number</h1><br>
                                        <h3 style="color:green;">+91 <% out.print(myres1.getString("phno")); %></h3><br>
                                        <h1>Cuisines</h1>
                                        <p><% out.print(myres1.getString("cuisine")); %></p>
                                        <h1> Average Cost</h1><br>
                                        <h3>₹<% out.print(myres1.getString("cost")); %> for two people (approx.)</h3> 
                                             <p>Exclusive of applicable taxes and charges, if on Cash only</p>                                     
                                        </div>
                                        
                                     <div class="col-md-4">
                                        <h1>Opening Hours</h1><br>
                                        <h3>Mon-Sat <% out.print(myres1.getString("open")); %>-<% out.print(myres1.getString("close")); %></h3><br>
                                        <h1>Address</h1><br>
                                        <font><% out.print(myres1.getString("description"));%></font><br>
                                     </div>
                                        
                                 <div class="col-md-4">
                                        <h1>More Info</h1><br>
                                        <h3 style="color:green;"><i class="fas fa-check"></i> <% out.print(myres1.getString("moreinfo")); %></h3><br>
                                 </div>
                               </div>
                             </div>
                           </div>
                             <div id="menu1" class="tab-pane fade">
                               <div class="panel panel-default">
                                    <div class="panel-body" style="height:500px;">
                                       <h3>Menu</h3> 
                                    </div>
                               </div>
                             </div>
                                 <div id="menu2" class="tab-pane fade">
                               <div class="panel panel-default">
                                    <div class="panel-body" style="height:500px;">
                                       <h3>Review</h3>
                                        <br><br>
                                        <p style="text-align:center;">No reviews Yet..</p>
                                    </div>
                             </div>
                            </div>
                               <div id="menu3" class="tab-pane fade">
                               <div class="panel panel-default">
                                    <div class="panel-body" style="height:500px;">
                                       <h3>Photos</h3>
                                          <br><br>
                                          <%

    try
    {
        
        String qu2="select * from menu where rid=?";
        PreparedStatement myst2=myconnection.prepareStatement(qu2);
        myst2.setString(1,request.getParameter("rid"));
        ResultSet myres2=myst2.executeQuery();
        if(myres2.next())
          { 
              int count=0;
          
                      do{
                          if(count==0){
                                          %>
                                           <div class="row">
                   <%
                    }
                    %>
                                              <div class="col-md-3">
                                                  <img src="<% out.print("cimages/"+myres2.getString("image")); %>" class="img-responsive" alt="<% out.print(myres1.getString("rname")); %> " style="height:200px;width:250px;">
                                              </div>
                                              
                                           
                                              <%
        count++;
        if(count==4)
        {
            count=0;
    %>
                                               
                                               </div>
                                          <%
                                               
                                           }
                                         
                                           }while(myres2.next());
          }
     }
    catch(Exception e)
    {
        out.print("Error in query"+e.getMessage());
    }

        
                                          %>
                             </div>
                               </div>
                             </div>
                               
                             
                           </div>
                        </div>
                    </div>
                </div>
        </div>
       </div><br><br>
       <%
          }
     }
    catch(Exception e)
    {
        out.print("Error in query"+e.getMessage());
    }
}
    catch(Exception e)
    {
        out.print("Error in query"+e.getMessage());
    }
        
%>
    <!-- tels -->
    
    
        <!--------To include footer portion--------->
            <%@include file="footer.jsp" %>
            <script>
                jQuery.fn.liScroll = function(settings) {
	settings = jQuery.extend({
		travelocity: 0.03
		}, settings);		
		return this.each(function(){
				var $strip = jQuery(this);
				$strip.addClass("newsticker")
				var stripHeight = 1;
				$strip.find("li").each(function(i){
					stripHeight += jQuery(this, i).outerHeight(true); // thanks to Michael Haszprunar and Fabien Volpi
				});
				var $mask = $strip.wrap("<div class='mask'></div>");
				var $tickercontainer = $strip.parent().wrap("<div class='tickercontainer'></div>");								
				var containerHeight = $strip.parent().parent().height();	//a.k.a. 'mask' width 	
				$strip.height(stripHeight);			
				var totalTravel = stripHeight;
				var defTiming = totalTravel/settings.travelocity;	// thanks to Scott Waye		
				function scrollnews(spazio, tempo){
				$strip.animate({top: '-='+ spazio}, tempo, "linear", function(){$strip.css("top", containerHeight); scrollnews(totalTravel, defTiming);});
				}
				scrollnews(totalTravel, defTiming);				
				$strip.hover(function(){
				jQuery(this).stop();
				},
				function(){
				var offset = jQuery(this).offset();
				var residualSpace = offset.top + stripHeight;
				var residualTime = residualSpace/settings.travelocity;
				scrollnews(residualSpace, residualTime);
				});			
		});	
};
$(function(){
    $("ul#ticker01").liScroll();
});
$(window).load(function()
{
    $('#myModal').modal('show');
});
   </script>         
</body>
</html>