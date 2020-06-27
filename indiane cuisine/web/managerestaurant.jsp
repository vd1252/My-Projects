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

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<!----to include css and strips------------>
         <%@include file="exefiles.jsp" %>
         
    </head>
    <body>
	<!----to include header portion------------>
         <%@include file="adminheader.jsp" %>
        <div class="breadcrumbs">
		<div class="container">
			<ol class="breadcrumb breadcrumb1 animated wow slideInLeft" data-wow-delay=".5s">
				<li><a href="admin.jsp"><span class="glyphicon glyphicon-home" aria-hidden="true"></span>Home</a></li>
				<li class="active">Manage Restaurant</li>
			</ol>
		</div>
	</div>
        
        <!----Add Resturant----------->
        <div class="login-page">
		<div class="container">
                    
			<div class="col-md-3"></div>
			   <div class="col-md-6 login-right wow fadeInRight" data-wow-delay="0.4s" >
                               <center><h3><font color="purple">Manage Restaurant</font></h3></center>
                               <center>
                                   <form class="form" method="post" enctype="multipart/form-data">

                                   <div>
							<span>Select City<label>*</label></span>
                                                       
                                                 <select name="city" required=" " id="city">
                                                     <option><span>CHOOSE CITY</span></option>
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
                                    
						</div>
                                                <br/><div id="msg"></div>
                                                <div>
							<span>Select Locality<label>*</label></span>
                                                       
                                                 <select name="locality" required=" " id="locality">
                                                     <option><span>CHOOSE LOCALITY</span></option>
                                                                             
                                                  </select>
                                    
						</div><div id="msg"></div>
                                                   
                             </form>
                                                
                               </center>
                               
			   </div>
                            
                             <div class="col-sm-3"></div>
                             
				<div class="clearfix"> </div>
                                
                                <div id="msg2"></div>
                          </div>
			</div>
                        
                                                
		
	
<!----to include header portion------------>
          <%@include file="adminfooter.jsp" %>
          
             <script>
               $(document).ready(function(){
                  $("#city").change(function(){
                      var a=$(this).val();
                      $.ajax({
                          url:"selectlocalityajax.jsp",
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
              function abc(locality)
                    {
                        
                        $.ajax({
                            url:"showrestaurantajax.jsp",
                            data:{"locality":locality},
                            type:"post",
                            beforeSend:function()
                            {
                                $("#msg2").html("<img src='lib/preloader.gif' width='30px' height='30px'>")
                            },
                            success:function(res)
                            {
                                $("#msg2").html(res)
                            },
                            error:function()
                            {
                                 alert("error")
                            }
                        })
                    }
              
          </script>
          <script>
              $("#msg2").delegate(".del","click",function(e){
                           e.preventDefault();
                           var a=$(this).attr("id");
                           var pr=$(this).parent();
                           var pr1=$(this).parent().parent();
                           if(confirm("are u sure to delete that restaurant?"))
                           {
                               $.ajax({
                                    url:"deleterestaurant.jsp",
                                    data:{"resid":a},
                                    type:"post",
                                    beforeSend:function()
                                    {
                                        pr.append("<img src='lib/preloader.gif' width='30px' height='30px'>")
                                    },
                                    success:function(res)
                                    {
                                       if($.trim(res)==1)
                                       {
                                           pr1.css({'backgroundColor':'#fb6c6c'});
                                            pr1.fadeOut(600,function()
                                            {
                                            pr1.remove()
                                            })
                                       }
                                       else
                                       {
                                           alert(res);
                                       }
                                    },
                                    error:function()
                                    {
                                         alert("error")
                                    }
                                })
                           }
                           
                       })
          </script>
          
    </body>
</html>