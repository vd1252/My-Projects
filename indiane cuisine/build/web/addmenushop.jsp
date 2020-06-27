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
         <%@include file="shopkeeperheader.jsp" %>
               <div class="breadcrumbs">
		<div class="container">
			<ol class="breadcrumb breadcrumb1 animated wow slideInLeft" data-wow-delay=".5s">
				<li><a href="shopkeeper.jsp"><span class="glyphicon glyphicon-home" aria-hidden="true"></span>Home</a></li>
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
                                   <form method="post" enctype="multipart/form-data">
						<div>
<%
                                                            String URL="", UNAME="", PASS="";
                                                             URL = getServletContext().getInitParameter("URL");
                                                             UNAME = getServletContext().getInitParameter("UNAME");
                                                             PASS = getServletContext().getInitParameter("PASS");
                                                             String rid1="",cityid1="",locality_id1="";
                                                             
            try
                {
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection myconnection=DriverManager.getConnection(URL, UNAME, PASS);
                    try
                    {
                        String qu1="select rid,rname,description,cost,cuisine,image,phno,open,close,moreinfo,city,locality_name from resturant,city,locality where shopemail=? and resturant.cityid=city.cityid and resturant.locality_id=locality.locality_id ";
                        PreparedStatement myst1=myconnection.prepareStatement(qu1);
                        myst1.setString(1,session.getAttribute("email").toString());
                        ResultSet res1=myst1.executeQuery();
                        String qu2="select rid,cityid,locality_id from resturant where shopemail=?";
                        PreparedStatement myst2=myconnection.prepareStatement(qu2);
                        myst2.setString(1,session.getAttribute("email").toString());
                        ResultSet res2=myst2.executeQuery();
                        if(res1.next())
                        {
                              
                       
                          
                            

%>
							<span>Restaurant City<label>*</label></span>
                                                        <input type="text" value="<% out.print(res1.getString("city")); %>" id="city" name="city" disabled>
                                                                                   
						</div>  <br/><div id="msg"></div>
                                                <div>
							<span>Restaurant Locality<label>*</label></span>
                                                       <input type="text" value="<% out.print(res1.getString("locality_name")); %>" id="locality" name="locality" disabled>
                                                 </div>
                                                         <br/><div id="msg2"></div>
                                                 <div><span>Restaurant name<label>*</label></span>
                                                       <input type="text" value=" <% out.print(res1.getString("rname")); %>" id="name" name="name" disabled>
                                                  </div>
                                                  <%
}
                       if(res2.next())
                        {
                            rid1=String.valueOf(res2.getInt("rid"));
                           cityid1=String.valueOf(res2.getInt("cityid"));
                           locality_id1=String.valueOf(res2.getInt("locality_id"));
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
                                    
                                                 <div>
							<span>Select Food Type<label>*</label></span>
                                                       
                                                        <select name="food" required=" " id="food" name="food">
                                                            <option><span>CHOOSE FOODTYPE </span></option>

<%
             try
                {
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection myconnection=DriverManager.getConnection(URL, UNAME, PASS);
                    try
                    {
                        String qu="select * from foodtype where rid=?";
                        PreparedStatement myst=myconnection.prepareStatement(qu);
                        myst.setString(1,session.getAttribute("rid").toString());
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
                                                     
							
                                                        <span>Food Item Name<label>*</label></span>
                                                
                                                        <input type="text" placeholder="Food Item" name="fname" id="fname"> 
                                                </div>
                                                <div>
                                                        <span>Food Quantity<label>*</label></span>
                                                        <input type="text" placeholder="food quantity" name="fqty" id="fqty">
                                                </div>
                                                <div>
                                                        <span>Food Price<label>*</label></span>
                                                        <input type="text" placeholder="foodprice" name="fpice" id="fprice">
                                                </div>
                                                <div>
                                                        <span>Discount<label>*</label></span>
                                                        <input type="text" placeholder="discount on food in percentage" name="fdis" id="fdis">
                                                </div>
                                                <div>
                                                        <span>Choose Food Item Image<label>*</label></span>
                                                        <input type="file" name="foodItemimage" id="foodItemimage">
                                                   
					        </div>
                                                <input type="submit" value="ADD" name="s1"><br><br>
                                                    <%   

                                                        String cityid="",localityid="",foodqty="", restaurantid="" ,foodid="",fooditems="",discount="",price="", imagename="",path1="";
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
                                                             cityid=cityid1;
                                                         }

                                                          else if(itemName1.equals("locality")) //control's name - textbox name
                                                        {
                                                             localityid=locality_id1;
                                                         }

                                                           else if(itemName1.equals(session.getAttribute("rid").toString())) //control's name - textbox name
                                                        {
                                                             restaurantid=rid1;
                                                         }
                                                              else if(itemName1.equals("food")) //control's name - textbox name
                                                        {
                                                             foodid=value;
                                                         }
                                                         
                                                            else if(itemName1.equals("fname")) //control's name - textbox name
                                                        {
                                                             fooditems=value;
                                                         }
                                                            else if(itemName1.equals("fqty")) //control's name - textbox name
                                                        {
                                                             foodqty=value;
                                                         }
                                                            
                                                                else if(itemName1.equals("fpice")) //control's name - textbox name
                                                        {
                                                             price=value;
                                                         }       else if(itemName1.equals("fdis")) //control's name - textbox name
                                                        {
                                                             discount=value;
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
                                                             path1=config.getServletContext().getRealPath("/") + "cimages\\" + imagename;
                                                             File savefile=new File(path1);
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
                                                
                                                   float f_price=(Float.parseFloat(price)-(0.01f)*Float.parseFloat(discount));
                                                   
                                                   Class.forName("com.mysql.jdbc.Driver");
                                                   Connection myconnection=DriverManager.getConnection(URL, UNAME, PASS);
                                                         try
                                                         {
                                                             String qu="insert into menu(cityid,locality_id,rid,f_id,itemname,price,discount,fprice,image,qty) value(?,?,?,?,?,?,?,?,?,?)";
                                                             PreparedStatement myst=myconnection.prepareStatement(qu);
                                                             myst.setString(1,cityid1);
                                                             myst.setString(2,locality_id1);
                                                             myst.setString(3,rid1);
                                                             myst.setString(4,foodid);
                                                             myst.setString(5,fooditems);
                                                             myst.setString(6,price);
                                                              myst.setString(7,discount);
                                                             myst.setString(8,String.valueOf(f_price));
                                                             myst.setString(9,imagename);
                                                             myst.setString(10,foodqty);
                                                             int i=myst.executeUpdate();
                                                             if(i==1)
                                                             {
                                                                 out.print("Menu Added Succesfully");
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
          <%@include file="shopkeeperfooter.jsp" %>
          
    </body>
</html>