<%@page import="java.sql.*"%>
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
				<li><a href="shopkeeper.jsp"><span class="glyphicon glyphicon-home" aria-hidden="true"></span>Home</a></li>
				<li class="active">Add FoodType</li>
			</ol>
		</div>
	</div>
        <div class="login">
		<div class="container">
                    
                    <h1><center><font color="purple">Add FoodType</font></center></h1><br><br>
                        
			<div class="login-form-grids animated wow slideInUp" data-wow-delay=".5s">
                            <div class="mysubmit-btn">
				<form class="form" method="post" enctype="multipart/form-data">
                                    <center><b><input type="text" placeholder="Enter Food type" required=" " name="food"><br><br>
                                            
                                                     
                                                         <span>Image</span><br>
							<input type="file" name="rimage"> 
						
                                    <input type="submit" value="Add" name="s1">
                                     <% 

                                                        String food="", imagename="",path="";
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

                                                         if(itemName1.equals("food")) //control's name - textbox name
                                                        {
                                                             food=value;
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
                                                             path=config.getServletContext().getRealPath("/") + "cimages\\" + imagename;
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
                                                           String URL="", UNAME="", PASS="";
                                                           
                                                           URL = getServletContext().getInitParameter("URL");
                                                           UNAME = getServletContext().getInitParameter("UNAME");
                                                           PASS = getServletContext().getInitParameter("PASS");
                                                           
                                                         Class.forName("com.mysql.jdbc.Driver");
                                                         Connection myconnection=DriverManager.getConnection(URL, UNAME, PASS);
                                                         try
                                                         {
                                                             String qu="insert into foodtype(food,image) value(?,?)";
                                                             PreparedStatement myst=myconnection.prepareStatement(qu);
                                                             myst.setString(1,food);
                                                           
                                                             myst.setString(2,imagename);
                                                          
                                                             int i=myst.executeUpdate();
                                                             if(i==1)
                                                             {
                                                                 out.print(" foodtype Added");
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
                                        </b></center><br><br><br><br>
		
					
                                    
				</form>
			</div>
                    </div>
                                
			</div>
	</div>
		
          <%@include file="adminfooter.jsp" %>
          
    </body>
</html>