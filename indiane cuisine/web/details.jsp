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
  .mypanel
  {border-bottom:1px solid #F3F3F3;
  }
 body {
      position: relative; 
  }
  
  
  </style>
</head>
<body data-spy="scroll" data-target=".navbar" data-offset="50">
    <!----to include header portion------------>
    <%@include file="header.jsp" %>
      <!-- single -->
        <div class="single">
            <div class="container-fluid">
                <%
                try
{
    
    
    Class.forName("com.mysql.jdbc.Driver");
    Connection myconnection=DriverManager.getConnection("jdbc:mysql://localhost/zomato", "root", "");
    try
       {
           String restaurantid=request.getParameter("rid");
           int countfooditem=0; 
           String qucountfooditem="select count(*) from menu where rid=?"; 
            PreparedStatement mystcountfooditem=myconnection.prepareStatement(qucountfooditem);
            mystcountfooditem.setString(1,restaurantid);
            ResultSet myrescountfooditem=mystcountfooditem.executeQuery();
                                        
            if(myrescountfooditem.next())
            {
             countfooditem=myrescountfooditem.getInt(1);
            } 
           String qu="select * from resturant where rid=?";
        PreparedStatement myst=myconnection.prepareStatement(qu);
        
        myst.setString(1,restaurantid);
        ResultSet myres=myst.executeQuery();
        if(myres.next())
        {    
            String qu2="select * from menu where rid=?";
             PreparedStatement myst2=myconnection.prepareStatement(qu2);
             myst2.setString(1,restaurantid);
             ResultSet myres2=myst2.executeQuery();  
         if(myres2.next())
        { 
            %>
                <div class="col-md-8">
                        <div class="single-top row">
                            <div class="col-md-6 single-left">
                                    <img src="<% out.print("cimages/"+myres.getString("image")); %>" class="img-responsive" alt="">
                            </div>
                            <div class="col-md-6 single-right">
                                <h1><% out.print(myres.getString("rname")); %></h1><br><br>
                                    <h3>Contact info <% out.print(myres.getString("phno")); %></h3>
                                    <hr style="height:2px;">
                                    <h4>Open Now|Cost for two Rs <% out.print(myres.getString("cost"));%></h4>
                                    <div class="sinbt">
                                            <a class="hvr-shutter-in-horizontal" href="restaurantetails.jsp?rid=<% out.print(myres.getString("rid")); %>">Restaurant Details</a>
                                    </div>
                            </div>
                            <div class="clearfix"> </div>
                        </div>
                                    </div>
                                                     <div class="col-md-4">
                    
                        <div class="panel panel-default">
                            <div class="panel-body" style="height:360px;">
                                <h1>Delivery Location</h1><br><br>
                                <div class="section_1">
                                <%
                   if(session.getAttribute("lo_id")!=null)
                   {
                    try
                    {
                        String lo="select * from locality where locality_id=?";
                        
                        PreparedStatement mystlo=myconnection.prepareStatement(lo);
                        mystlo.setString(1,session.getAttribute("lo_id").toString());
                        ResultSet reslo=mystlo.executeQuery();
                        
                        if(reslo.next())
                        {
                            
                        //String lname=reslo.getString("locality_name");
                            
                                %>
                              

                                     <select name="locality" id="locality" style="border:1px solid #ccc;border-radius: 4px"onchange="change_country(this.value)" class="frm-field required">
                    
                                         
                                         <%
                                             do{
                                         %>
                                                    
                                                     <option value="<% out.print(session.getAttribute("lo_id").toString()); %>"><% out.print(reslo.getString("locality_name")); %></option>
                                          <%
                                              }while(reslo.next());
                                          %>  
                                     </select><br><br>
                                     
                             </div>
                            
                           <span class="glyphicon glyphicon-remove-circle"></span><center><h5 style="color:green;">Yeah!! We deliver to this location</h5></center>
                          <div class="register-but" >
                              <form method="post">
                                     <center><a href="showcart.jsp"><input class="acount-btn" type="submit" value="Show Cart" name="showcart" style="width:33%;margin-bottom: 2px;"></a></center>
                                     <%
                                         if(request.getParameter("showcart")!=null)
                                         {
                                             session.setAttribute("restid", restaurantid);
                                             response.sendRedirect("showcart.jsp");
                                         }
                                         
                                     %>      
                                     <div class="clearfix"> </div>
                                     </form>
                                 </div>
<%
                           
                                       
                        }
                        else
                        {
                            out.print("<option>No locality available</option>");
                        }
                    }
                    catch(Exception e)
                    {
                        out.print("Error in Query"+e.getMessage());
                    }
}else
{ 
               String lo="select * from locality where locality_id=?";
                        
                        PreparedStatement mystlo=myconnection.prepareStatement(lo);
                        mystlo.setString(1,myres2.getString("locality_id"));
                        ResultSet reslo=mystlo.executeQuery();
                        
                        if(reslo.next())
                        {
  %>
                            <select name="locality" id="locality" style="border:1px solid #ccc;border-radius: 4px"onchange="change_country(this.value)" class="frm-field required">
                                <option value="<% out.print(reslo.getString("locality_id")); %>"><% out.print(reslo.getString("locality_name")); %></option>  
                            </select>
                           <div class="register-but" >
                              <form method="post">
                                     <center><a href="showcart.jsp"><input class="acount-btn" type="submit" value="Show Cart" name="showcart" style="width:33%;margin-bottom: 2px;"></a></center>
                                     <%
                                         if(request.getParameter("showcart")!=null)
                                         {
                                             session.setAttribute("restid", restaurantid);
                                             response.sendRedirect("showcart.jsp");
                                         }
                                         
                                     %>      
                                     <div class="clearfix"> </div>
                                     </form>
                                 </div>
   <%
                                 
                        }

    
}
                
                                     %>
                        </div>
                      </div>
                      </div>
            
                        </div>
                     
                            <!--Overflow scrollspy-->
                            
                                <div class="container-fluid">
                                    <div class="col-md-12">
                            <nav class="navbar navbar-inverse brand-menu-sidebar" style="z-index: 1">
                                
                            <div class="navbar-header">
                                  <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                                    <span class="icon-bar"></span>
                                    <span class="icon-bar"></span>
                                    <span class="icon-bar"></span>                        
                                </button>
                              </div>
                              <div>
                                  <%
                                      int count=0;
                                      try{
                                      
                                      String qucount="select count(*) from foodtype where rid=?"; 
                                      PreparedStatement mystcount=myconnection.prepareStatement(qucount);
                                        mystcount.setString(1,restaurantid);
                                        ResultSet myrescount=mystcount.executeQuery();
                                        
                                        if(myrescount.next())
                                       {
                                         count=myrescount.getInt(1);
                                        }
                                        String qu3="select * from foodtype where rid=?";
                                        PreparedStatement myst3=myconnection.prepareStatement(qu3);
                                        myst3.setString(1,restaurantid);
                                        ResultSet myres3=myst3.executeQuery();
                                        if(myres3.next())
                                        {    
                                            
                                        
                                  %>
                                <div class="collapse navbar-collapse" id="myNavbar">
                                  <ul class="nav navbar-nav">
                                      <%
                                          int i=1;
                                          do{
                                              
                                      %>
                                      <li><a href="#section<%out.print(i);%>" ><% out.print(myres3.getString("food")); %></a></li>
                                    <% i++; }while(myres3.next()&& i<=count ); %> 
                                  </ul>
                                </div>
                              </div>
                               </nav>
                
                        <%
                            int count2=0;
                                      try{
                                      
                                      String qucount2="select count(*) from foodtype where rid=?"; 
                                      PreparedStatement mystcount2=myconnection.prepareStatement(qucount2);
                                        mystcount2.setString(1,restaurantid);
                                        ResultSet myrescount2 = mystcount2.executeQuery();
                                        
                                        if(myrescount2.next())
                                       {
                                         count2=myrescount2.getInt(1);
                                        }
                                        String qu32="select * from foodtype where rid=?";
                                        PreparedStatement myst32=myconnection.prepareStatement(qu32);
                                        myst32.setString(1,restaurantid);
                                        ResultSet myres32=myst32.executeQuery();
                                        int btn=1;
                                        if(myres32.next())
                                        { 
                                            btn++;
                            int m=1;
                            do{
                        %>
                          <div id="section<%out.print(m);%>" style="overflow:auto; margin-left: 27px;padding-top:50px;padding-left:50px;padding-right:50px;height:500px;color: black; background-color: #F3F3F3;">
                              <h1><% out.print(myres32.getString("food")); %></h1>
                             <div class="panel panel-default" >
                                 <!-- this has to be repeated ---->
                                 <%
                                     int stock=0,price=0,fprice=0;
                                     try{
                                     String foodmenu="select * from menu where f_id=? and rid=?";
                                        PreparedStatement mystfoodmenu=myconnection.prepareStatement(foodmenu);
                                        mystfoodmenu.setString(1,myres32.getString("f_id"));
                                        mystfoodmenu.setString(2,restaurantid);
                                        ResultSet myresfoodmenu=mystfoodmenu.executeQuery();
                                        
                                        if(myresfoodmenu.next())
                                        { 
                                            stock=myresfoodmenu.getInt("qty");
                                            //stock=myresfoodmenu.getInt("qty");
                                            price=myresfoodmenu.getInt("price");
                                            fprice=myresfoodmenu.getInt("fprice");
                                            //int btn=1;
                                            //int btn=1;
                                           do{
                                 %>
                                 
                                 <div class="panel-body mypanel"  >
                                      <form class="form" method="post">
                                    <div class="container-fluid" style="padding-left:0px;margin-left: 0px">
                                        <div class="col-md-8">
                                            <div id="panel1">
                                                <img class="sign" src="<% out.print("cimages/"+myresfoodmenu.getString("image")); %>" style="width:75px; height:75px;" ><span class="myfont2"><% out.print(myresfoodmenu.getString("itemname")); %></span>
                                                <p>Actual Price :- <i class="fas fa-rupee-sign"></i><% out.print(myresfoodmenu.getString("price")); %> : Exclusive <% out.print(myresfoodmenu.getString("discount")); %>% Discount : Final Price:- <i class="fas fa-rupee-sign"></i><% out.print(myresfoodmenu.getString("fprice")); %></p>
                                                
                                            </div>
                                     </div>
                                        <div class="col-md-4">
                                            <div class="col-xs-12 ">
                                                <div class="section_1">
                                                    <select name="qty" id="qty" style="border:1px solid #ccc;border-radius: 4px"onchange="change_country(this.value)" class="frm-field required">
                                                
                                                             
                                                                            <option value="0">Choose Quantity</option>
                                                                            <%
                                                                                int n;
                                                                                if(stock>=10)
                                                                                {
                                                                                    n=10;
                                                                                }
                                                                                else
                                                                                {
                                                                                    n=stock;
                                                                                }
                                                                                for(int j=1;j<=n;j++)
                                                                                {
                                                                                    out.print("<option>"+j+"</option>");
                                                                                }
                                                                            %>
                                                                        </select>
                                                                        </div><br><br>
                                                             
                                                <button type="submit" class="btn btn-success btn1" name="mybtn<%out.print(btn);%>" style="width:100px;">Add</button>
                                               
                                              </div>
                                      </div>
                                        </div>
                                                </form>
                                                <%
                                                                                                              String localityid="",cityid="";    
              if(request.getParameter("mybtn"+btn)!=null)
                                            {         
     if(session.getAttribute("email")!=null)
  {
int qty=Integer.parseInt(request.getParameter("qty"));
int tcost=fprice*qty;


            try
            {
                String qucart="select * from addcart where uname=? and pid=?";
                 PreparedStatement mystcart=myconnection.prepareStatement(qucart);
                 mystcart.setString(1,session.getAttribute("email").toString());
                 mystcart.setString(2,myresfoodmenu.getString("m_id"));
                 ResultSet myrescart=mystcart.executeQuery();
                 if(myrescart.next())
                 {
                    String quup="update addcart set qty=qty+?,tcost=tcost+? where uname=? and pid=?";
                    PreparedStatement mystup=myconnection.prepareStatement(quup);
                    mystup.setString(4, myresfoodmenu.getString("m_id"));
                    mystup.setString(3, session.getAttribute("email").toString());
                    mystup.setInt(2, tcost);
                    mystup.setInt(1, qty);

                    int row=mystup.executeUpdate();
                    if(row==1)
                    {
                        out.print("<p align='right'><font color='green'>Added to Cart Successfully</font></p>");
                    }

                 }
                 else{
                     String quup="insert into addcart(pid,pname,price,qty,tcost,uname,image ) values(?,?,?,?,?,?,?)";

                PreparedStatement mystup=myconnection.prepareStatement(quup);
                mystup.setString(1,myresfoodmenu.getString("m_id"));
                mystup.setString(2,myresfoodmenu.getString("itemname"));
                mystup.setInt(3,myresfoodmenu.getInt("fprice"));
                mystup.setInt(4,qty);
                mystup.setInt(5,tcost);
                mystup.setString(6,session.getAttribute("email").toString());
                mystup.setString(7,myresfoodmenu.getString("image"));
                int row=mystup.executeUpdate();
                if(row==1)
                  {

                      out.print("<p align='right'><font color='green'>Added to Cart Successfully</font></p>");
                  }
                else
                {
                    out.print("<p align='right'><font color='green'>Opps!!Not Added to Cart</font></p>");
                }
                 }
             }
            catch(Exception e)
            {
                out.print("Error in query"+e.getMessage());
            }
        
            
}
else
{
session.setAttribute("rid2", request.getParameter("rid"));
response.sendRedirect("login.jsp");
}
}
                                                %>
                                   </div>
                                 <!--- till here 1 panel --->
                                      
                                  <%
                                      btn++;
                                      }while(myresfoodmenu.next());
                                      }}
catch(Exception e)
{
   out.print("Error in menu query "+e.getMessage());
}
                                  %>
                                  
                              </div>
                         </div>
                              <% m++;
                              } while(myres32.next()&& m<=count2 );   %>
                              
                          <%                                    
}} catch(Exception e)
    {
        out.print("Error in food query"+e.getMessage());
    }
} }
    catch(Exception e)
    {
        out.print("Error in food query"+e.getMessage());
    }

                                   %>
                          </div>
                          </div>
                          
                          </div>
                         

        
       <% 
           }}}
       catch(Exception e)
            {
                out.print("Error in query"+e.getMessage());
            }}
    catch(Exception e)
    {
        out.print("Error in query"+e.getMessage());
    }
                
                %>         
    <!-- tels -->
    
  <script>


 $(window).scroll(function() {    
    var scroll = $(window).scrollTop();
     //console.log(scroll);
    if (scroll >= 540) {
        //console.log('a');
        $(".brand-cart-sidebar").addClass("brand-cart-sidebar-fixed");
    } else {
        //console.log('a');
        $(".brand-cart-sidebar").removeClass("brand-cart-sidebar-fixed");
    }
}); 
$(window).scroll(function() {    
    var scroll = $(window).scrollTop();
     //console.log(scroll);
    if (scroll >= 540) {
        //console.log('a');
        $(".brand-menu-sidebar").addClass("brand-menu-sidebar-fixed");
    } else {
        //console.log('a');
        $(".brand-menu-sidebar").removeClass("brand-menu-sidebar-fixed");
    }
}); 
        
                    $(document).ready(function(){
                    $('.btn1').click(function(){
                            $('#spinner1').show();
                            $.ajax({
                            
                         success:function(result){
                            $('#mybtn').hide();
                            
                        } })
                });
                });
                           $(document).on('click', '.number-spinner button', function () {    
                        var btn = $(this),
                        oldValue = btn.closest('.number-spinner').find('input').val().trim(),
                        newVal = 0;
                         if (btn.attr('data-dir') == 'up') {
                                newVal = parseInt(oldValue) + 1;
                        } else {
                                if (oldValue > 1) {
                                        newVal = parseInt(oldValue) - 1;
                                } else {
                                        newVal=1;
                                        $('#spinner1').hide();
                                        $('#mybtn').show();
                                }
                                }
                        btn.closest('.number-spinner').find('input').val(newVal);
                       
        
                    })
                       $(document).ready(function(){
                        $(".btn1").click(function(){
                        var panel=$("#panel1").html();
                        $.ajax({
                          url:"spinner1.jsp",                          
                          type:"post",
                          data:{"panel":panel},
                          beforeSend:function()
                          {
                              $("#ajaxorder").html("<img src='images/preloader.gif' height='30px' width='30px'> ");
                          },
                          success:function(res)
                          {
                              $("#ajaxorder").show();
                              $("#ajaxorder").html(res);
                             $("#ajaxspinner").show();
                              
                              
                           },
                          error:function()
                          {
                               $("#ajaxorder").html("Error in ajax");
                          }
                          
                      });
                      
                  });
                  $('#plus').on('click',function(){
                      var btn = $(this),
                        oldValue = btn.closest('.number-spinner').find('#text').val().trim(),
                        newVal = 0;
                         if (btn.attr('data-dir') == 'up') {
                                newVal = parseInt(oldValue) + 1;
                        } else {
                                if (oldValue > 1) {
                                        newVal = parseInt(oldValue) - 1;
                                } else {
                                        newVal=1;
                                        $('#spinner1').hide();
                                        $('#mybtn').show();
                                }
                                }             
                               $('#textin').val(newVal);
                      //alert(newVal);
                       
                  });
                   });
                  $(document).ready(function(){
                   $('#minus').on('click',function(){
                      var btn = $(this),
                        oldValue = btn.closest('.number-spinner').find('#text').val().trim(),
                        newVal = 0;
                         if (btn.attr('data-dir') == 'up') {
                                newVal = parseInt(oldValue) + 1;
                        } else {
                                if (oldValue > 1) {
                                        newVal = parseInt(oldValue) - 1;
                                } else {
                                        newVal=1;
                                        $('#spinner1').hide();
                                        $('#mybtn').show();
                                        $('#ajaxspinner').hide();
                                        $("#ajaxorder").hide();
                                }
                                }             
                               $('#textin').val(newVal);
                      //alert(newVal);
                       
                  });
                   });

   </script>         
</body>
</html>