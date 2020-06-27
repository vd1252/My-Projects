<!DOCTYPE html>
<%
    int oid=0;
    String grandtotal=" ";
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
                String qu="select * from checkout where uname=? order by orderid desc limit 1";
                PreparedStatement myst=myconnection.prepareStatement(qu);
                myst.setString(1, session.getAttribute("email").toString());
                
                ResultSet res=myst.executeQuery();
                if(res.next())
                {
                    grandtotal= res.getString("tcost");
                    oid=res.getInt("orderid");
                    try
                    {
                        String qu1="select * from addcart where uname=?";
                        PreparedStatement myst1=myconnection.prepareStatement(qu1);
                        myst1.setString(1, session.getAttribute("email").toString());
                        ResultSet myres=myst1.executeQuery();
                        if(myres.next())
                        {
                            do
                            {
                                try
                                {
                                    String qu2="insert into orderhistory(oid,pid,pname,price,qty,tcost,image,username) "
                                            + "values(?,?,?,?,?,?,?,?)";
                                    PreparedStatement myst2=myconnection.prepareStatement(qu2);
                                    myst2.setInt(1, oid);
                                    myst2.setString(2, myres.getString("pid"));
                                    myst2.setString(3, myres.getString("pname"));
                                    myst2.setString(4, myres.getString("price"));
                                    myst2.setString(5, myres.getString("qty"));
                                    myst2.setString(6, myres.getString("tcost"));
                                    myst2.setString(7, myres.getString("image"));
                                    myst2.setString(8, myres.getString("uname"));
                                    myst2.executeUpdate();
                                    String qu6="update menu set qty=qty-? where m_id=?";
                                    PreparedStatement myst5=myconnection.prepareStatement(qu6);
                                    myst5.setString(1, myres.getString("qty"));
                                    myst5.setString(2,myres.getString("pid"));
                                    myst5.executeUpdate();
                                }
                                catch(Exception e)
                                {
                                    out.print("Error in query "+e.getMessage());
                                }
                            }
                            while(myres.next());
                            try
                            {
                                String qu5="delete from addcart where uname=? ";
                                PreparedStatement myst5=myconnection.prepareStatement(qu5);
                                myst5.setString(1, session.getAttribute("email").toString());
                                if(myst5.executeUpdate()==1)
                                {
                                    
                                }
                
                            } 
                            catch(Exception e)
                            {
                                out.print("Error in query "+e.getMessage());
                            }
                        }
                    }
                    catch(Exception e)
                    {
                        out.print("Error in query "+e.getMessage());
                    }
                }
            }
            catch(Exception e)
            {
                out.print("Error in query "+e.getMessage());
            }
        }
        catch(Exception e)
        {
                out.print("Error in connection "+e.getMessage());
        }

%>
<html>
<head>
<title>Zomato</title>

<%@include file="exefiles.jsp" %>
<%@page import="java.net.*"%>
<%@page import="java.sql.*"%>
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
  .table th{
 text-align: center;   
}
  </style>
</head>
<body>
    <!----to include header portion------------>
    <%@include file="header.jsp" %>
    <!-- single -->
    <div class="single" style="padding:5em 0;">
        <div class="container">
            <h1 style="font-size: 2.8em;color: #6cbc35;;margin: 0 1em 1em;"><center>Thanks for Ordering</center></h1>
            <h3><center>Final amount for order id <% out.print(oid); %> you have to pay:<i class="fas fa-rupee-sign"></i><% out.print(grandtotal); %></center></h3><br>
            <span><center>The Products you have bought are as follows:</center></span>
            <%

                try
                {
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection myconnection=DriverManager.getConnection(myURL, myUNAME, myPASS);
                try
            {
                String qu="select * from orderhistory where oid=?";
                PreparedStatement myst=myconnection.prepareStatement(qu);
                myst.setInt(1, oid);
                ResultSet res=myst.executeQuery();
                if(res.next())
                {
                    out.print(" <table class='table table-hover' style='text-align: center;margin: 0px auto;'>"
                            + "<thead>"
                            + "<tr>"
                            + "<td>Image</td>"
                            + "<td>Product Name</td>"
                            + "<td>Price</td>"
                            + "<td>Quantity</td>"
                            + "<td>Tcost</td>"
                            
                            + "</tr>"
                            + "</thead>"
                            + "<tbody>");
                    do
                    {
                        
                        out.print("<tr>"
                                + "<td><img src='cimages/"+res.getString("image")+"' width='50px'></td>"
                                + "<td>"+res.getString("pname")+"</td>"
                                + "<td><i class='fas fa-rupee-sign'></i>"+res.getString("price")+"</td>"
                                + "<td>"+res.getString("qty")+"</td>"
                                + "<td><i class='fas fa-rupee-sign'></i>"+res.getString("tcost")+"</td>"
                                + "</tr>");
                    }while(res.next());
                    
                    out.print("</tbody>"
                            + "</table>");
                }
                else
                {
                    out.print("Wrong Username and password");
                }
            }
            catch(Exception e)
            {
                out.print("Error in query "+e.getMessage());
            }
        }
        catch(Exception e)
        {
                out.print("Error in connection "+e.getMessage());
        }
                        
                        %>
                  </div>
         </div>
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

/* $(window).scroll(function() {    
    var scroll = $(window).scrollTop();
     //console.log(scroll);
    if (scroll >= 500) {
        //console.log('a');
        $(".brand-cart-sidebar").addClass("brand-cart-sidebar-fixed");
    } else {
        //console.log('a');
        $(".brand-cart-sidebar").removeClass("brand-cart-sidebar-fixed");
    }
}); */
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