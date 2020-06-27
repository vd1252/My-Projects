<!DOCTYPE html>
<html>
<head>
<title>Zomato</title>

<%@include file="exefiles.jsp" %>
<%@page import="java.net.*"%>
<%@ page import="java.util.*"%> 
<%@page import="java.sql.*"%>
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
    <%@include file="adminheader.jsp" %>
   <!-- single -->
        <div class="single" style="padding:5em 0;">
            <div class="container">
                <h3 style="font-size: 2.8em;color: #6cbc35;;margin: 0 1em 1em;">List of Orders</h3>
                <%
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            Connection myconnection=DriverManager.getConnection("jdbc:mysql://localhost/zomato", "root", "");

          try
            {
                ResultSet myres=null;
                
                String qu="select * from checkout order by orderid";
                //String qu="select * from checkout order where uname=? by orderid desc";
                PreparedStatement myst=myconnection.prepareStatement(qu);
                //myst.setString(1, session.getAttribute("email").toString());
               
                myres=myst.executeQuery();
                if(myres.next())
                {
                   do
                    { 
                %>
                <div class="panel panel-default">
                      <div class="panel-heading"><span class="myfont">Order Placed on </span><span class="myfont" style="margin-left: 50px">Total</span><span class="myfont" style="margin-left: 100px">Shipped to</span>
                          <span class="myfont pull-right" style="margin-left: 100px">OrderID:<% out.print(myres.getString("orderid")); %></span>
                          <br><small>Phone <%out.print(myres.getString("phone")); %></small><small style="margin-left:80px"><i class="fas fa-rupee-sign"></i><% out.print(myres.getString("tcost")); %></small><small style="margin-left:95px"><% out.print(myres.getString("hname")); %></small></div>
                    <div class="panel-body">
                            <div class="col-md-12 single-right">
                                  <%
                                        try
                                        {
                                            String rest="select * from resturant where rid=?";
                                            PreparedStatement mystrest=myconnection.prepareStatement(rest);
                mystrest.setString(1, myres.getString("restid"));
               
                ResultSet myresrest=mystrest.executeQuery();
                if(myresrest.next())
                { %>
                                <h1><a href="details.jsp?rid=<% out.print(myres.getString("restid")); %>"><% out.print(myresrest.getString("rname"));%></a></h1>
                     <%             
                    out.print(myresrest.getString("description"));
                                        }}
                                        catch(Exception e)
                                        {out.print("error in query"+e.getMessage());}
                                    %>
                                <%
                                    try
                                        {
                                            String orderhist="select * from orderhistory where oid=?";
                                            PreparedStatement mystoh=myconnection.prepareStatement(orderhist);
                mystoh.setString(1, myres.getString("orderid"));
               
                ResultSet myresoh=mystoh.executeQuery();
                if(myresoh.next())
                {  do{
                                %>    
                                <hr style="height:2px;">
                                   <small class="myfont"><% out.print(myresoh.getString("pname")); %> × Quantity: <% out.print(myresoh.getString("qty")); %>@ ₹ <%out.print(myresoh.getString("price"));%><div class="pull-right">Total cost of this item ₹ <% out.print(myresoh.getString("tcost")); %></div></small>
                                        
                                <%
                                }while(myresoh.next());    
                                }}
                                        catch(Exception e)
                                        {out.print("error in query"+e.getMessage());}    
                                %>        
                                        
                                        <hr style="height:2px;">
                                        
                                        <small class="myfont2">Promo - (<%out.print(myres.getString("code"));%>) <div class="pull-right">5% off</div> <br></small>
                                        <small class="myfont2">GST <div class="pull-right">9% </div><br></small>
                                   <!--     <small class="myfont2">Delivery Charge <div class="pull-right">₹10.00</div></small> --->
                                        <hr style="height:2px;">
                                        <small class="myfont2"><b>Total <div class="pull-right">₹ <%out.print(myres.getString("tcost"));%></div></b></small>
                            </div><br>
                            <!--
                                    <div class="sinbt">
                                            <a class="hvr-shutter-in-horizontal" href="details.html">ReOrder</a>
                                    </div>
                            -->
                            <div class="clearfix"> </div>
                    </div>
                  </div>
                  <%
                      }while(myres.next());
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
                  %>  
                </div>
         </div>
     <!-- tels -->
        <!--------To include footer portion--------->
            <%@include file="adminfooter.jsp" %>
<script>
$(window).load(function()
{
    $('#myModal').modal('show');
});
   </script>         
</body>
</html>