<!DOCTYPE html>
<%@page import="java.sql.*"%>
<html>
<head>
<title>Zomato</title>

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
  </style>
</head>
<body>
    <!----to include header portion------------>
    <div class="banner">
         <%@include file="header.jsp" %>
    
         <div class="banner-info">
			<div class="container">


 
                            <div class="col-md-12">
				<div class="details-1">
                                    <center>
                                    <form class="form" method="post">
					<div class="col-md-12 dropdown-buttons">   
						<div class="col-md-3 dropdown-button">           			
							<div class="section_1">
							 <select name="city" required=" " id="city" class="frm-field required">
                                                             <option></span>Select Delivery City</span></option>
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
                                                             <option><span>Select Delivery Locality</span></option>
								
							 </select>
                                                               <div id="msg2"></div>
						  </div>		
						</div>
					  
   <div class="col-md-3 submit_button"> 
						
							<input type="submit" value="Search" name="m" id="m">
                                                        <%
                                            if(request.getParameter("m")!=null)
                                            {         
                                                     
                                            try
                                                {   
                                                    Class.forName("com.mysql.jdbc.Driver");
                                                    Connection myconnection=DriverManager.getConnection(myURL, myUNAME, myPASS);
                                                    if(!(request.getParameter("locality").equals("Select Delivery Locality")))
                                                    {
                                                        session.setAttribute("lo_id",request.getParameter("locality"));
                                                    }
                                                    try
                                                    {  String q="select * from resturant where cityid=?";
                                                       PreparedStatement myst=myconnection.prepareStatement(q);
                                                       myst.setString(1,session.getAttribute("city_id").toString());
                                                      
                                                       ResultSet myres = myst.executeQuery();    
                                                        if(myres.next())
                                                        {
                                                            
                                                            response.sendRedirect("orderfood2.jsp?cityid="+myres.getString("cityid"));
                                                        }
                                                        else
                                                        {
                                                            response.sendRedirect("orderfood2.jsp");
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
                                        </center>
					<div class="clearfix"> </div>
				</div>
			</div>
                        </div>
		</div>   
         </div>
            
         
     
         

        <!--------To include footer portion--------->
            <%@include file="footer.jsp" %>
             <script>
               $(document).ready(function(){
                  $("#city").change(function(){
                      var a=$(this).val();
                      $.ajax({
                          url:"selectlocalityajax2.jsp",
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
            
</body>
</html>