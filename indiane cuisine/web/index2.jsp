<!DOCTYPE html>
<html>
<head>
<title>Zomato</title>
<%@page import="java.sql.*"%>
<%@include file="exefiles.jsp" %>
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
  <!--Carousel-->
  /* Carousel Control */
 
.control-box {
    text-align: right;
    width: 100%;
}
.carousel-control{
    background: #666;
    border: 0px;
    border-radius: 0px;
    display: inline-block;
    font-size: 34px;
    font-weight: 200;
    line-height: 18px;
    opacity: 0.5;
    padding: 4px 10px 0px;
    position: static;
    height: 30px;
    width: 15px;
}

/* Mobile Only */
@media (max-width: 767px) {
    .page-header, .control-box {
        text-align: center;
    } 
}
@media (max-width: 479px) {
    .caption {
        word-break: break-all;
    }
}

  </style>
</head>
<body>
    <!----to include header portion------------>
    <div class="banner">
         <%@include file="header.jsp" %>
    
         <div class="banner-info">
			<div class="container">
                            
             
                            <!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header" style="padding:35px 50px;">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4><i class="fas fa-hotel"></i> Restaurant Booking</h4>
        </div>
        <div class="modal-body" style="padding:40px 50px;">
          <form method="post">
						<div>
							<span>Name<label>*</label></span>
                                                        <input type="text" placeholder="Email Address" required=" " name="em" class="form-control" style="width:100%"> <br>
						</div>
						<div>
                                                    <span>Check-In<label>*</label></span>
                                                    <input class="date form-control" style="width:100%"  type="text" value="Check In" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Check In';}"> <br>
						</div>
                                                <div>
                                                    <span>Check-Out<label>*</label></span>
                                                    <input class="date form-control" style="width:100%"  type="text" value="Check In" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Check In';}"> <br>
						</div>
                                                <div class="section_1">
                                                        <span>Room Type<label>*</label></span>
							 <select id="country" style="border:1px solid #ccc;border-radius: 4px"onchange="change_country(this.value)" class="frm-field required">
								<option value="null">Double Room</option>
								<option value="null">Single Room</option>         
								<option value="AX">Suit Room</option>
								<option value="AX">Guest Room</option>
                                                         </select>
						  </div><br>
            
              <button type="submit" class="btn btn-success btn-block"><i class="fas fa-search"></i>Search</button>
          </form>
        </div>
        <div class="modal-footer">
<!--          <button type="submit" class="btn btn-danger btn-default pull-left" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span> Cancel</button>
          <p>Not a member? <a href="#">Sign Up</a></p>
          <p>Forgot <a href="#">Password?</a></p>-->
        </div>
      </div>
      
    </div>
  </div> 

 
                         <div class="col-md-12">
				<div class="details-1">
                                      <form class="form" method="post">
					<div class="col-md-12 dropdown-buttons">   
                                            
						<div class="col-md-3 dropdown-button">           			
							<div class="section_1">
                                                           
							 <select name="city" required=" " id="city" class="frm-field required">
                                                             <option></span>Select City</span></option>
                                                              <%      String myURL="", myUNAME="", myPASS="";
                                                           myURL = getServletContext().getInitParameter("URL");
                                                           myUNAME = getServletContext().getInitParameter("UNAME");
                                                           myPASS = getServletContext().getInitParameter("PASS");
                try
                {
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection myconnection=DriverManager.getConnection(myURL, myUNAME, myPASS);
                    try
                    {
                        String qu="select * from city";
                        PreparedStatement myst=myconnection.prepareStatement(qu);
                        ResultSet res=myst.executeQuery();
                        if(res.next())
                        {
                            do
                            {
                                out.print("<option value='"+res.getString("cityid")+"'>"+res.getString("city")+"</option>");
                                
                            }while(res.next());
                        }
                        else
                        {
                            out.print("<option>No City available</option>");
                        }
                    }
                    catch(Exception e)
                    {
                        out.print("Error in connection"+e.getMessage());
                    }
                }
                catch(Exception e)
                {
                    out.print("Error in connection"+e.getMessage());
                }

            %>
								
							 </select>
              <div id="msg"></div>
						  </div>
						</div>
						<!---strat-date-piker---->
							<link rel="stylesheet" href="css/jquery-ui.css" />
							<script src="js/jquery-ui.js"></script>
							  <script>
									  $(function() {
										$( "#datepicker,#datepicker1" ).datepicker();
									  });
							  </script>
						<!---/End-date-piker---->

						<div class="col-md-3 dropdown-button">           			
							<div class="section_1">
							<select name="locality" required=" " id="locality" class="frm-field required">
                                                             <option value="Select Locality"><span>Select Locality</span></option>
								
							 </select>
                                                            
                                                            <div id="msg2"></div>
						  </div>		
						</div>
					  <div class="col-md-3 dropdown-button">           			
							<div class="input-group">
								<input class="form-control has-dark-background" name="src" id="auto" placeholder="Enter Restaurant name or Cuisine " type="text" >
							</div>		
						</div>

						
                                                <div class="col-md-3 submit_button"> 
					
							<input type="submit" value="Search" name="s" >
                                                         <%
                                                         String localityid="",cityid="";    
                                            if(request.getParameter("s")!=null)
                                            {         
                                                     
                                            try
                                                {        
                                                           myURL = getServletContext().getInitParameter("URL");
                                                           myUNAME = getServletContext().getInitParameter("UNAME");
                                                           myPASS = getServletContext().getInitParameter("PASS");
                                                    Class.forName("com.mysql.jdbc.Driver");
                                                    Connection myconnection=DriverManager.getConnection(myURL, myUNAME, myPASS);
                                                    if(!(request.getParameter("locality").equals("Select Locality")))
                                                    {
                                                        localityid = request.getParameter("locality");
                                                    }
                                                    if(!(request.getParameter("city").equals("Select City")))
                                                    {
                                                        cityid = request.getParameter("city");
                                                    }
                                                    
                                                    try
                                                    {  String q="select * from resturant where locality_id=? and cityid=?";
                                                       PreparedStatement myst=myconnection.prepareStatement(q);
                                                       myst.setString(1,localityid);  
                                                       myst.setString(2,cityid);
                                                       ResultSet myres = myst.executeQuery();
                                                       
                                                        if(myres.next())
                                                        {
                                                            
                                                            response.sendRedirect("orderfood3.jsp?locality_id="+myres.getString("locality_id"));
                                                        }
                                                        else
                                                        {
                                                            response.sendRedirect("index.jsp");
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
                                            
                                           }
                                            
                                        %>            						

					</div>
					</div> 

					</form>
					<div class="clearfix"> </div>
				</div>
			</div>
                        </div>
		</div> 
    </div>
         
         <!---- Banner----->
     
    <!-- Restaurant -->
    <!--Carousel-->
    <div class="tels">
        <div class="container">
                        <div class="carousel slide" id="myCarousel1">
        <div class="carousel-inner">
            
                       <%
                           try
                {
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection myconnection=DriverManager.getConnection(myURL, myUNAME, myPASS);
                                                try{
                                                String qrest="select * from resturant ";
                                                       PreparedStatement mystrest=myconnection.prepareStatement(qrest);
                                                       
                                                       ResultSet myresrest = mystrest.executeQuery();
                                                       
                                                        if(myresrest.next())
                                                        {
                                                            int count=0,row=0;
                                                            do{
                                                                 
                                                                if(row==0&&count==0){ 
                                                                
                       %> 
                       <div class="item active">
                    <ul class="thumbnails">
                        <%
                            
                    }
else if(row>0&&row<=4&&count==0)
{
    %>
                    <div class="item">
                    <ul class="thumbnails">
                        <%
}
                    
                    %>
                        <li class="col-sm-3">
    						<div class="fff">
								<div class="thumbnail" style="background-color: #acafa3">
                                                                    <a href="restaurantetails.jsp?rid=<% out.print(myresrest.getString("rid"));%>"><img src="<% out.print("cimages/"+myresrest.getString("image"));%>" alt="" style="height:150px;width:250px"></a>
								</div>
                                                          <div class="caption" style="background-color:lavender;padding: 10px">
									<h4><% out.print(myresrest.getString("rname")); %></h4>
                                                                        <center><p><% 
                                                                            try{
                                                                                       String qc="select * from city where cityid=? ";
                                                       PreparedStatement mystc=myconnection.prepareStatement(qc);
                                                       mystc.setString(1,myresrest.getString("cityid"));
                                                       ResultSet myresc = mystc.executeQuery();
                                                       
                                                        if(myresc.next())
                                                        {
                                                            out.print(myresc.getString("city"));
                                                        }
                                                        else
                                                        {
                                                            out.print("city name");
                                                        }
                                                                            }
                                                                            catch(Exception e)
                                                                            {
                                                                                out.print("Error in query"+e.getMessage());
                                                                            }
                                                                                %></p></center>
                                                                        <center><p><%out.print(myresrest.getString("shopemail"));%></p></center>
                                                                        <center><a class="hvr-shutter-in-horizontal" href="onlyorderfoodpage.jsp">Order Now</a></center>
								</div>
                                                 </div>
                        </li>
                        <%
        count++;
        if(count==4&&row<=4)
        {
            count=0;
            row++;
    %>
    </ul>
              </div><!-- /Slide1 --> 
              <%
        }

                    %>
                    
                        <%
                            } while(myresrest.next());
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
        
       
	   <nav>
			<ul class="control-box pager">
				<li><a data-slide="prev" href="#myCarousel1" class=""><i class="fas fa-arrow-left"></i></a></li>
				<li><a data-slide="next" href="#myCarousel1" class=""><i class="fas fa-arrow-right"></i></li>
			</ul>
		</nav>
	   <!-- /.control-box -->   
                              
    </div><!-- /#myCarousel -->
        </div>
    </div>
        
                                
             <!--/Carousel-->
<!-- special -->
	<div class="special">
		<div class="container">
			<div class="spe-info" style="height:300px;">
				<h3 style="margin-bottom: 5px;">Special Offer</h3>
                                              <div class="carousel slide" id="myCarousel">
        <div class="carousel-inner">
            <div class="item active">
                    <ul class="thumbnails">
                        <li class="col-sm-3">
    						<div class="fff">
								<div class="thumbnail" style="background-color: #acafa3">
                                                                    <a href="#"><img src="images/offer1.jpg" alt="" style="height:150px;width:250px"></a>
								</div>
                                                  </div>
                        </li>
                        <li class="col-sm-3">
    						<div class="fff">
								<div class="thumbnail" style="background-color: #acafa3">
                                                                    <a href="#"><img src="images/offer1(1).jpg" alt="" style="height:150px;width:250px"></a>
								</div>
                                                </div>
                        </li>
                         <li class="col-sm-3">
    						<div class="fff">
								<div class="thumbnail" style="background-color: #acafa3">
                                                                    <a href="#"><img src="images/offer1(2).jpg" alt="" style="height:150px;width:250px"></a>
								</div>
						 </div>
                        </li>
                       <li class="col-sm-3">
    						<div class="fff">
								<div class="thumbnail" style="background-color: #acafa3">
                                                                    <a href="#"><img src="images/offer1(3).jpg" alt="" style="height:150px;width:250px"></a>
								</div>
						 </div>
                        </li>
                    </ul>
              </div><!-- /Slide1 --> 
            <div class="item">
                    <ul class="thumbnails">
                       <li class="col-sm-3">
    						<div class="fff">
								<div class="thumbnail" style="background-color: #acafa3">
                                                                    <a href="#"><img src="images/offer1(4).jpg" alt="" style="height:150px;width:250px"></a>
								</div>
						 </div>
                        </li>
                        <li class="col-sm-3">
    						<div class="fff">
								<div class="thumbnail" style="background-color: #acafa3">
                                                                    <a href="#"><img src="images/offer1(5).jpg" alt="" style="height:150px;width:250px"></a>
								</div>
						 </div>
                        </li>
                        <li class="col-sm-3">
    						<div class="fff">
								<div class="thumbnail" style="background-color: #acafa3">
                                                                    <a href="#"><img src="images/offer1.jpg" alt="" style="height:150px;width:250px"></a>
								</div>
						</div>
                        </li>
                        <li class="col-sm-3">
    						<div class="fff">
								<div class="thumbnail" style="background-color: #acafa3">
                                                                    <a href="#"><img src="images/offer1(1).jpg" alt="" style="height:150px;width:250px"></a>
								</div>
						</div>
                        </li>
                    </ul>
              </div><!-- /Slide2 --> 
         </div>
         <nav>
			<ul class="control-box pager" style="margin-top:3px;">
				<li><a data-slide="prev" href="#myCarousel" class=""><i class="fas fa-arrow-left"></i></a></li>
				<li><a data-slide="next" href="#myCarousel" class=""><i class="fas fa-arrow-right"></i></li>
			</ul>
		</nav>
	   <!-- /.control-box -->   
   </div><!-- /#myCarousel -->
			</div>
		</div>
	</div>
    <!-- special -->
    <!-- quick -->
	<div class="quick">
		<div class="container">
			<div class="col-md-4 quick-left">
                            <h3>Additional Cities</h3>
                                <div  style="overflow-y: auto;height: 250px;">
					<ul>
                                            <%
                                                try
                {
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection myconnection=DriverManager.getConnection(myURL, myUNAME, myPASS);
                                                try{
                                                String qcity="select * from city ";
                                                       PreparedStatement mystcity=myconnection.prepareStatement(qcity);
                                                       
                                                       ResultSet myrescity = mystcity.executeQuery();
                                                       
                                                        if(myrescity.next())
                                                        {
                                                            do{
                                            %>
                                            <li><a href="orderfood5.jsp?cityid=<% out.print(myrescity.getString("cityid")); %>"><% out.print(myrescity.getString("city"));%></a></li>
                                                
						<%
                                                    } while(myrescity.next());
                                                    }}
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
                                        </ul>
                                </div>
			</div>
			<div class="col-md-4 quick-left">
				<h3>News & Events</h3>
                                
		<div class="holder" >
			<ul id="ticker01">
                            <%
                            String rssFeedUrl="https://www.foodbusinessnews.net/rss/topic/469-global-cuisine";
                            try
                            {
                            URLConnection feedUrl = new URL(rssFeedUrl).openConnection();
                            SyndFeedInput input = new SyndFeedInput();
                            SyndFeed feed =null;
                            feed=input.build(new XmlReader(feedUrl));
                            List list = feed.getEntries();
                            for (int i=0 ; i < list.size(); i++)
                            {
                                SyndEntry entry = (SyndEntry)list.get(i);
                                SyndContent mycontent=entry.getDescription();
                            %>
				<li><span><%out.print(entry.getPublishedDate());%>
                                </span><% out.print(entry.getTitle()+" ");%><a href="<% out.print(entry.getLink());%>">More</a></li>
                            <%
                            }      }
                            catch(Exception e)
                            {
                            e.printStackTrace();
                            }
                            %>
                            
			</ul>
		</div>					
					
		</div>
			<div class="col-md-4 quick-left">
				<h3 style="margin:0px;">Book A table</h3>
					<form method="post">
						<div>
							<span>Name<label>*</label></span>
                                                        <input type="text" placeholder="Name" required=" " name="em" class="form-control" style="width:100%">
						</div>
						<div>
                                                    <span>Dining Time<label>*</label></span>
                                                    <input class="date form-control" style="width:100%"  type="text" value="Check In" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Check In';}">
						</div>
                                                <div>
                                                    <span>Number of People<label>*</label></span>
                                                    <input class="date form-control" style="width:100%"  type="text" value="Check In" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Check In';}">
						</div>
                                                <div class="section_1">
                                                        <span>City Name<label>*</label></span>
							 <select id="country" style="border:1px solid #ccc;border-radius: 4px"onchange="change_country(this.value)" class="frm-field required">
								<option value="null">Double Room</option>
								<option value="null">Single Room</option>         
								<option value="AX">Suit Room</option>
								<option value="AX">Guest Room</option>
                                                         </select>
						  </div><br>
            
              <button type="submit" class="btn btn-success btn-block"><i class="fas fa-search"></i>Search</button>
          </form>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
    <!-- quick -->
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
       // Carousel Auto-Cycle
  $(document).ready(function() {
    $('.carousel').carousel({
      interval: 3000
    })
  });
  

 </script>  
  <script>
               $(document).ready(function(){
                  $("#city").change(function(){
                      var a=$(this).val();
                      $.ajax({
                          url:"selectlocalityajax3.jsp",
                          data:{"cityajax":a},
                          type:"post",
                          beforeSend:function()
                          {
                              $("#msg").html("<img src='lib/preloader.gif' width='30px' height='30px'>");
                          },
                          success:function(res)
                          {
                              $("#msg").html("");
                              $("#locality").html(res)
                          },
                          error:function()
                          {
                               $("#msg").html("Error in ajax");
                          }
                          
                          
                      })
                      
                  })
                  $("#locality").change(function(){
                      var a=$(this).val();
                      abc(a);
                      
                  })
                  
              })
              
              
          </script>
          <link href="js/jquery-ui.css" rel="stylesheet"/>
          <script src="js/jquery-ui.js"></script>
          <script>
            $(function() {
              
    $( "#auto" ).autocomplete({
      source: "searchres.jsp",
      minLength: 2,
      select: function( event, ui ) {
		   $.ajax({
			   url:"restaurantajax.jsp",
			   data:{"rname":ui.item.value},
			   type:"post",
			   success:function(res)
			   {
				  window.location="orderfood4.jsp?rid="+res;
			   },
			   error:function()
			   {
				   alert("error in ajax")
				   
			   }   
		   })   
	   }
      
    });
  });
            </script>
</body>
</html>
