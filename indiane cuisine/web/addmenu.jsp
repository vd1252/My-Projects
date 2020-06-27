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
				<li class="active">Add Menu</li>
			</ol>
		</div>
	</div>
        
        <!----Add Resturant----------->
        <div class="login-page">
		<div class="container">
                    
                            <div class="col-md-3"></div>
			   <div class="col-md-8 login-right wow fadeInRight" data-wow-delay="0.4s" >
                               <center><h3><font color="purple">Add Menu</font></h3></center>
                               <center>
                                   <form class="form" method="post" enctype="multipart/form-data">
						<div>
							<span>Select City<label>*</label></span>
                                                        
                                                 <select name="city" id="city">
                                                    <option>CHOOSE CITY</option>
                                                    <%
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
                                    
						</div>  <br/><div id="msg"></div>
                                                <div>
							<span>Select Locality<label>*</label></span>
                                                       
                                                        <select name="locality" required=" " id="locality">
                                                     <option><span>CHOOSE LOCALITY</span></option>
                                                                             
                                                  </select>
                                                 </div>
                                                         <br/><div id="msg2"></div>
                                                 <div><span>Select Restaurant<label>*</label></span>
                                                       
                                                         <select name="restaurant" required=" " id="resturant">
                                                         <option><span>CHOOSE RESTAURANT</span></option>
                                                                             
                                                  </select>
                                                  </div>
                                                        
                                    
                                                 <div>
							<span>Select Food Type<label>*</label></span>
                                                       
                                                        <select name="food" required=" " id="food">
                                                            <option><span>CHOOSE FOODTYPE</span></option>
                                                         <%
                                                             String URL="", UNAME="", PASS="";
                                                             URL = getServletContext().getInitParameter("URL");
                                                             UNAME = getServletContext().getInitParameter("UNAME");
                                                             PASS = getServletContext().getInitParameter("PASS");
                try
                {
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection myconnection=DriverManager.getConnection(URL, UNAME, PASS);
                    try
                    {
                        String qu="select * from foodtype";
                        PreparedStatement myst=myconnection.prepareStatement(qu);
                        ResultSet res=myst.executeQuery();
                        if(res.next())
                        {
                            do
                            {
                                out.print("<option value='"+res.getString("f_id")+"'>"+res.getString("food")+"</option>");
                            }while(res.next());
                        }
                        else
                        {
                            out.print("<option>No foodtype available</option>");
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
                                    
						</div><br/><div id="msg3"></div>
                                             
                                                <div>
                                                     
							<span>Select Food Items</span><br> 
                                                        <div id="fooditemtable"></div>
                                                     
                                                        
					</div>
                                                
                                                                                       
						
						<input type="submit" value="ADD" name="s1">
                                                    <%   

                                                        String cityid="",localityid="", restaurantid="" ,foodid="",fooditems="", price="",discount="",f_price="", imagename="",path="";
                                                        boolean successful=true;
                                                           boolean isMultipart = ServletFileUpload.isMultipartContent(request);

                                                 if(isMultipart)
                                                 {

                                                 FileItemFactory factory = new DiskFileItemFactory();
                                                 ServletFileUpload upload = new ServletFileUpload(factory);
                                                 List<FileItem> items = null;
                                                try
                                                {
                                                items = upload.parseRequest(request);
                                                }
                                                catch (FileUploadException e)
                                                {
                                                    e.printStackTrace();
                                                }

                                                for(FileItem myitem:items)
                                                {
                                                     if (myitem.isFormField())
                                                     {
                                                         String itemName1 = myitem.getFieldName();
                                                         String value=myitem.getString(); 

                                                         if(itemName1.equals("city")) //control's name - textbox name
                                                        {
                                                             cityid=value;
                                                         }

                                                          else if(itemName1.equals("locality")) //control's name - textbox name
                                                        {
                                                             localityid=value;
                                                         }

                                                           else if(itemName1.equals("restaurant")) //control's name - textbox name
                                                        {
                                                             restaurantid=value;
                                                         }
                                                              else if(itemName1.equals("food")) //control's name - textbox name
                                                        {
                                                             foodid=value;
                                                         }
                                                              
                                                            
                                                              
                                                              
                                                            else if(itemName1.equals("item")) //control's name - textbox name
                                                        {
                                                             fooditems=value;
                                                         }
                                                            
                                                            
                                                            
                                                            
                                                                else if(itemName1.equals("price")) //control's name - textbox name
                                                        {
                                                             price=value;
                                                         }       else if(itemName1.equals("discount")) //control's name - textbox name
                                                        {
                                                             price=value;
                                                         }
                                                                else if(itemName1.equals("fprice")) //control's name - textbox name
                                                        {
                                                             f_price=value;
                                                         }


                                                         


                                                      }
                                                     else
                                                     {
                                                             String type=myitem.getContentType();
                                                             long size=myitem.getSize()/1024; //kbytes

                                                             if(size==0)
                                                             {
                                                                 imagename="default.png";
                                                             }
                                                             else if((type.equals("image/pjpeg") || type.equals("image/jpeg")
                                                                     || type.equals("image/png") || type.equals("image/x-png")
                                                                     || type.equals("image/gif")) && size<400)
                                                                 {


                                                            imagename=new java.util.Date().getTime()+myitem.getName();
                                                             path=config.getServletContext().getRealPath("/") + "rimages\\" + imagename;
                                                             File savefile=new File(path);
                                                             myitem.write(savefile);    


                                                             }
                                                             else
                                                                 {
                                                                     successful=false;
                                                                     out.println("Sorry only pictures of less than 400kb are allowed to upload");
                                                                 }

                                                     }

                                               }

                                                if(successful==true)
                                                {
                                                                        String aURL="", aUNAME="", aPASS="";
                
                                                                           aURL = getServletContext().getInitParameter("URL");
                                                                           aUNAME = getServletContext().getInitParameter("UNAME");
                                                                           aPASS = getServletContext().getInitParameter("PASS");
                                                                           Class.forName("com.mysql.jdbc.Driver");
                                                                           Connection myconnection=DriverManager.getConnection(aURL, aUNAME, aPASS);
                                                         try
                                                         {
                                                             String qu="insert into menu(cityid,locality_id,rid,f_id,i_id,price,discount,fprice,image) value(?,?,?,?,?,?,?,?,?)";
                                                             PreparedStatement myst=myconnection.prepareStatement(qu);
                                                             myst.setString(1,cityid);
                                                             myst.setString(2,localityid);
                                                             myst.setString(3,restaurantid);
                                                             myst.setString(4,foodid);
                                                             myst.setString(5,fooditems);
                                                             myst.setString(6,price);
                                                              myst.setString(7,discount);
                                                               myst.setString(8,f_price);
                                                             myst.setString(9,imagename);
                                                             int i=myst.executeUpdate();
                                                             if(i==1)
                                                             {
                                                                 out.print("menu Added");
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
                                                 }
                                                     %>

                             </form></center>
			   </div>
                             <div class="col-md-3"></div>
				<div class="clearfix"> </div>
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
                  
              })
              
          </script>
           <script>
              $(document).ready(function(){
                  $("#locality").change(function(){
                      var a=$(this).val();
                      $.ajax({
                          url:"selectresturantajax.jsp",
                          data:{"resturant":a},
                          type:"post",
                          beforeSend:function()
                          {
                              $("#msg2").html("<img src='lib/preloader.gif' width='30px' height='30px'>");
                          },
                          success:function(res)
                          {
                              $("#msg2").html("");
                              $("#resturant").html(res)
                          },
                          error:function()
                          {
                               $("#msg2").html("Error in ajax");
                          }
                          
                      })
                      
                  })
                  
              })
              
          </script>
          <script>
              $(document).ready(function(){
                  $("#food").change(function(){
                      var a=$(this).val();
                      $.ajax({
                          url:"selectfooditemajax.jsp",
                          data:{"fitem":a},
                          type:"post",
                          beforeSend:function()
                          {
                              $("#msg3").html("<img src='lib/preloader.gif' width='30px' height='30px'>");
                          },
                          success:function(res)
                          {
                              $("#msg3").html("");
                              $("#fooditemtable").html(res)
                          },
                          error:function()
                          {
                               $("#msg3").html("Error in ajax");
                          }
                          
                      })
                      
                  })
                  
              })
              
          </script>
         
           
    </body>
</html>