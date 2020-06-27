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
				<li class="active">Add Restaurant</li>
			</ol>
		</div>
	</div>
        
        <!----Add Resturant----------->
        <div class="login-page">
		<div class="container">
                    
			<div class="col-md-3"></div>
			   <div class="col-md-6 login-right wow fadeInRight" data-wow-delay="0.4s" >
                               <center><h3><font color="purple">Add Restaurant</font></h3></center>
                               <center>
                                   <form id="formrest" method="post" enctype="multipart/form-data">

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
                                    
						</div>
                                                
						<div>
							<span>Restaurant Name<label>*</label></span>
							<input type="text" placeholder="Enter Restaurant" required=" " name="rname"> 
						</div>
                                                <div>
							<span>Shopkeeper email ID<label>*</label></span>
							<input type="email" placeholder="Enter Shopkeeper Email-ID" required=" " name="shopemail"> 
						</div>
                                                <div>
							<span>shopkeeper Password<label>*</label></span>
							<input type="password" placeholder="Enter password" required=" " name="shoppass"> 
						</div>
                                                <div>
							<span>shopkeeper Confirm Password<label>*</label></span>
							<input type="password" placeholder="Confirm password" required=" " name="confshoppass"> 
						</div>
                                                <div>
                                                    
							<span>Address<label>*</label></span>
							<textarea name="description" required=" " class="form-control"></textarea> 
						</div>
                                               
                                                <div>
							<span>Cost For Two<label>*</label></span>
							<input type="text" placeholder="Enter Cost" required=" " name="cost"> 
						</div>
                                                <div>
							<span>Cuisines<label>*</label></span>
							<input type="text" placeholder="Enter Cuisines" required=" " name="cuisine"> 
						</div>
                                                 <div>
                                                     
                                                     <span>Image</span><br>
							<input type="file" name="rimage" > 
						</div>
                                                <div>
							<span>Phone no.<label>*</label></span>
                                                        <input type="tel" placeholder="" required=" " name="phno" pattern="^[0-9]+$"> 
						</div>
                                                <div>
							<span>Opening Hours<label>*</label></span>
							 <input type="text" placeholder="From" required=" " name="open1"> <input type="text" placeholder="TO" required=" " name="close2"> 
                                                          
                                                         
						</div>
                                                 <div>
                                                    
							<span>More Info. & Speciality<label>*</label></span>
							<textarea name="moreinfo" required=" " class="form-control"></textarea> 
						</div>
                                                                                       
						
						<input type="submit" value="ADD" name="s1"><br><br>
                                              <% 
    String cityid="",localityid="", rname="", description="",cost="",cuisine="", imagename="",phno="",open="",close="",moreinfo="",path1="",shopmail="",shoppass="",confshoppass="";
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

                                                          else if(itemName1.equals("rname")) //control's name - textbox name
                                                        {
                                                             rname=value;
                                                         }

                                                           else if(itemName1.equals("description")) //control's name - textbox name
                                                        {
                                                             description=value;
                                                         }
                                                           else if(itemName1.equals("cost")) //control's name - textbox name
                                                        {
                                                             cost=value;
                                                         }
                                                            else if(itemName1.equals("cuisine")) //control's name - textbox name
                                                        {
                                                             cuisine=value;
                                                         }
                                                              else if(itemName1.equals("phno")) //control's name - textbox name
                                                        {
                                                             phno=value;
                                                         }
                                                              else if(itemName1.equals("open1")) //control's name - textbox name
                                                        {
                                                             open=value;
                                                         }
                                                              else if(itemName1.equals("close2")) //control's name - textbox name
                                                        {
                                                             close=value;
                                                         }
                                                              else if(itemName1.equals("moreinfo")) //control's name - textbox name
                                                        {
                                                             moreinfo=value;
                                                         }
                                                         else if(itemName1.equals("shopemail"))
                                                         {
                                                             shopmail=value;
                                                         }
                                                         else if(itemName1.equals("shoppass"))
                                                        {
                                                              shoppass=value;    
                                                        }
                                                        else if(itemName1.equals("confshoppass"))
                                                        {
                                                                confshoppass=value;  
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
                                                                     || type.equals("image/gif")) && size<1000)
                                                                 {


                                                            imagename=new java.util.Date().getTime()+myitem.getName();
                                                             path1=config.getServletContext().getRealPath("/") + "cimages\\" + imagename;
                                                             File savefile=new File(path1);
                                                             myitem.write(savefile);    


                                                             }
                                                             else
                                                                 {
                                                                     successful=false;
                                                                     out.println("only pictures of less than 1000 KB are allowed");
                                                                 }

                                                     }

                                               }
                                                          
                                                if(successful==true)
                                                {  
                                                         
                                                        String URL="", UNAME="", PASS="";

                                                        URL = getServletContext().getInitParameter("URL");
                                                        UNAME = getServletContext().getInitParameter("UNAME");
                                                        PASS = getServletContext().getInitParameter("PASS");
                                                        String SALT="%%%,**,%$^^";
                                                           
                                                         Class.forName("com.mysql.jdbc.Driver");
                                                         Connection myconnection=DriverManager.getConnection(URL, UNAME, PASS);
                                                         try
                                                         {   
                                                         if(shoppass.equals(confshoppass))
                                                         {
                                                             String qu="insert into resturant(cityid,locality_id,rname,description,cost,cuisine,image,phno,open,close,moreinfo,shopemail,shoppass,usertype) value(?,?,?,?,?,?,?,?,?,?,?,?,MD5(?),?)";
                                                             PreparedStatement myst=myconnection.prepareStatement(qu);
                                                             myst.setString(1,cityid);
                                                             myst.setString(7,imagename);
                                                             myst.setString(2,localityid);
                                                             myst.setString(3,rname);
                                                             myst.setString(4,description);
                                                             myst.setString(5,cost);
                                                             myst.setString(6,cuisine);
                                                              myst.setString(8,phno);
                                                               myst.setString(9,open);
                                                                myst.setString(10,close);
                                                                 myst.setString(11,moreinfo);
                                                                 myst.setString(12,shopmail);
                                                                 myst.setString(13,confshoppass+SALT);
                                                                 myst.setString(14,"shopkeeper");
                                                             int i=myst.executeUpdate();
                                                             if(i==1)
                                                             {
                                                                   out.print("Restaurant and Shop owner added successfully");
                                                             }
                                                             else
                                                             {
                                                                 out.print("error in coding");
                                                             }
                                                         }
                                                         
                                                         else
                                                         {
                                                              out.print("Password mismatch");   
                                                         }
                                                         }
                                                         catch(Exception e)
                                                         {
                                                             out.print("Error in query"+e.getMessage());
                                                         }
                                                         

                                                }
                                                else
                                                {
                                                    out.print("file upload returns false/ unsuccessful");
                                                }
                                                 }
                                                     
    

    
%>
                                                    
                             </form></center>
			   </div>	
                             <div class="col-sm-3"></div>
                             
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
          
    </body>
</html>