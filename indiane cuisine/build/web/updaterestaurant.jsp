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
<%
    String cid1="",lid1="",rname1="",description1="",cost1="",cuisine1="",phno1="",image1="",open1="",close1="",moreinfo1="";
    String myURL="", myUNAME="", myPASS="",shopeemail1="";
    myURL = getServletContext().getInitParameter("URL");
    myUNAME = getServletContext().getInitParameter("UNAME");
    myPASS = getServletContext().getInitParameter("PASS");
                try
                {
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection myconnection=DriverManager.getConnection(myURL, myUNAME, myPASS);
            try
            {
                String qu="select * from resturant where rid=?";
                PreparedStatement myst=myconnection.prepareStatement(qu);
                myst.setString(1, request.getParameter("rid"));
               ResultSet res=myst.executeQuery();
                if(res.next())
                {
                    cid1=res.getString("cityid");
                    lid1=res.getString("locality_id");
                    rname1=res.getString("rname");
                    description1=res.getString("description");
                    cost1=res.getString("cost");
                    cuisine1=res.getString("cuisine");
                    phno1=res.getString("phno");
                    open1=res.getString("open");
                    close1=res.getString("close");
                    moreinfo1=res.getString("moreinfo");
                    image1=res.getString("image");
                    shopeemail1=res.getString("shopemail");
                    
                }
            }
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
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<!----to include css and strips------------>
         <%@include file="exefiles.jsp" %>
         
    </head>
    <body>
	<!----to include header portion------------>
        <%
        String pagenamehead,pagenamefoot;
        if(session.getAttribute("utype").toString().equals("shopkeeper"))
        {
            pagenamehead="shopkeeperheader.jsp";
            pagenamefoot="shopkeeperfooter.jsp";
        }
        else
        {
            pagenamehead="adminheader.jsp";
            pagenamefoot="adminfooter";
        }
        
        %>
        <jsp:include page="<%= pagenamehead %>" flush="true" />
        <div class="breadcrumbs">
		<div class="container">
			<ol class="breadcrumb breadcrumb1 animated wow slideInLeft" data-wow-delay=".5s">
				<li><a href="admin.jsp"><span class="glyphicon glyphicon-home" aria-hidden="true"></span>Home</a></li>
				<li class="active">Update Restaurant</li>
			</ol>
		</div>
	</div>
        
        <!----Add Resturant----------->
        <div class="login-page">
		<div class="container">
                    
			<div class="col-md-3"></div>
			   <div class="col-md-6 login-right wow fadeInRight" data-wow-delay="0.4s" >
                               <center><h3><font color="purple">Update Restaurant</font></h3></center>
                               <center>
                                   <form class="form" method="post" enctype="multipart/form-data">

                                   <div>
							<span>Select City<label>*</label></span>
                                                        <form class="form" method="post" enctype="multipart/form-data">
                                                 <select name="city" required=" " id="city">
                                                     <option><span>CHOOSE CITY</span></option>
                                                    <%     String URL="", UNAME="", PASS="";
                                                           URL = getServletContext().getInitParameter("URL");
                                                           UNAME = getServletContext().getInitParameter("UNAME");
                                                           PASS = getServletContext().getInitParameter("PASS");
                try
                {
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection myconnection=DriverManager.getConnection(URL, UNAME, PASS);
                    try
                    {
                        String qu="select * from city";
                        PreparedStatement myst=myconnection.prepareStatement(qu);
                        ResultSet res=myst.executeQuery();
                        if(res.next())
                        {
                            do
                {
                    if(cid1.equals(res.getString("cityid")))
                    out.print("<option value='"+res.getString("cityid")+"' selected>"+res.getString("city")+"</option>");
                    else
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
                                                   <%      String aURL="", aUNAME="", aPASS="";
                                                           aURL = getServletContext().getInitParameter("URL");
                                                           aUNAME = getServletContext().getInitParameter("UNAME");
                                                           aPASS = getServletContext().getInitParameter("PASS");
                try
                {
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection myconnection=DriverManager.getConnection(aURL, aUNAME, aPASS);
        try
        {
            String qu="select * from locality where cityid=?";
            PreparedStatement myst=myconnection.prepareStatement(qu);
            myst.setString(1, cid1);
            ResultSet res=myst.executeQuery();
            if(res.next())
            {
                do
                {
                    if(lid1.equals(res.getString("locality_id")))
                    out.print("<option value='"+res.getString("locality_id")+"' selected>"+res.getString("locality_name")+"</option>");
                    else
                        out.print("<option value='"+res.getString("locality_id")+"'>"+res.getString("locality_name")+"</option>");
                }while(res.next());
            }
            else
            {
                out.print("<option>No Locality available</option>");
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
                                                
						<div>
							<span>Restaurant Name<label>*</label></span>
							<input type="text" placeholder="Enter Restaurant" required=" " name="rname" value="<% out.print(rname1);%>"> 
						</div>
                                                <div>
							<span>Shopkeeper email ID<label>*</label></span>
                                                        <input type="email" placeholder="Enter Shopkeeper Email-ID" required=" " name="shopemail" value="<% out.print(shopeemail1); %>"> 
						</div>
                                                <div>
							<span>shopkeeper Password<label>*</label></span>
                                                        <input type="password" placeholder="Enter password" required=" " name="shoppass" > 
						</div>
                                                <div>
							<span>shopkeeper Confirm Password<label>*</label></span>
                                                        <input type="password" placeholder="Confirm password" required=" " name="confshoppass" > 
						</div>
                                                <div>
                                                    
							<span>Address<label>*</label></span>
							<textarea name="description" required=" " class="form-control" rows="7"><% out.print(description1);%></textarea> 
						</div>
                                               
                                                <div>
							<span>Cost For Two<label>*</label></span>
							<input type="text" placeholder="Enter Cost" required=" " name="cost" value="<% out.print(cost1);%>"> 
						</div>
                                                <div>
							<span>Cuisines<label>*</label></span>
							<input type="text" placeholder="Enter Cuisines" required=" " name="cuisine" value="<% out.print(cuisine1);%>"> 
						</div>
                                                 <div>
                                                     <img src="cimages/<% out.print(image1);%>" width="150px"><br/>
                                                     <span>Image</span><br>
							<input type="file" name="rimage" >
                                                        
						</div>
                                                <div>
							<span>Phone no.<label>*</label></span>
                                                        <input type="tel" placeholder="" required=" " name="phno" pattern="^[0-9]+$" value="<% out.print(phno1);%>"> 
						</div>
                                                <div>
							<span>Opening Hours<label>*</label></span>
							 <input type="text" placeholder="From" required=" " name="open" value="<% out.print(open1);%>"> <input type="text" placeholder="TO" required=" " name="close"value=" <% out.print(close1);%>"> 
                                                          
                                                         
						</div>
                                                 <div>
                                                    
							<span>More Info. & Speciality<label>*</label></span>
							<textarea name="moreinfo" required=" " class="form-control" rows="7"><% out.print(moreinfo1);%></textarea> 
						</div>
                                                                                       
						
						<input type="submit" value="UPDATE" name="s1">
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
                                                              else if(itemName1.equals("open")) //control's name - textbox name
                                                        {
                                                             open=value;
                                                         }
                                                              else if(itemName1.equals("close")) //control's name - textbox name
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
                                                                 imagename=image1;
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
                                                       
                                                        String SALT="%%%,**,%$^^";
                                                           
                                                         Class.forName("com.mysql.jdbc.Driver");
                                                         Connection myconnection=DriverManager.getConnection(URL, UNAME, PASS);
                                                         try
                                                         {   
                                                         if(shoppass.equals(confshoppass))
                                                         {
                                                             String qu="update resturant set cityid=?,locality_id=?,rname=?,description=?,cost=?,cuisine=?,image=?,phno=?,open=?,close=?,moreinfo=?,shopemail=?,shoppass=MD5(?) where rid=?";
                                                            
                                                             PreparedStatement myst=myconnection.prepareStatement(qu);
                                                             myst.setString(1,cityid);
                                                    
                                                             myst.setString(2,localityid);
                                                             myst.setString(3,rname);
                                                             myst.setString(4,description);
                                                             myst.setString(5,cost);
                                                             myst.setString(6,cuisine);
                                                              myst.setString(7,imagename);
                                                              myst.setString(8,phno);
                                                               myst.setString(9,open);
                                                                myst.setString(10,close);
                                                                 myst.setString(11,moreinfo);
                                                                 myst.setString(12,shopmail);
                                                                 myst.setString(13,confshoppass+SALT);
                                                                 myst.setString(14,request.getParameter("rid"));
                                                             int i=myst.executeUpdate();
                                                             if(i==1)
                                                             {
                                                                   //response.sendRedirect("managerestaurant.jsp");
                                                                
                                                                 out.print("Restaurant and owner Updated Successfully");
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
         <jsp:include page="<%= pagenamefoot %>" flush="true" />
         
          
    </body>
</html>