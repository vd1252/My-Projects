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
String fid="",fooditemname="",imagename1="",price1="",discount1="",qty1="";
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
                String qu="select * from menu where m_id=?";
                PreparedStatement myst=myconnection.prepareStatement(qu);
                myst.setString(1, request.getParameter("m_id"));
               ResultSet res=myst.executeQuery();
                if(res.next())
                {
                    fid=res.getString("f_id");
                    fooditemname=res.getString("itemname");
                    imagename1=res.getString("image");
                    price1=res.getString("price");
                    discount1=res.getString("discount");
                    qty1=res.getString("qty");
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
         <%@include file="shopkeeperheader.jsp" %>
        <div class="breadcrumbs">
		<div class="container">
			<ol class="breadcrumb breadcrumb1 animated wow slideInLeft" data-wow-delay=".5s">
				<li><a href="shopkeeper.jsp"><span class="glyphicon glyphicon-home" aria-hidden="true"></span>Home</a></li>
				<li class="active">Update fooditems</li>
			</ol>
		</div>
	</div>
        
        <!----Add Resturant----------->
        <div class="login-page">
		<div class="container">
                    
			<div class="col-md-3"></div>
			   <div class="col-md-6 login-right wow fadeInRight" data-wow-delay="0.4s" >
                               <center><h3><font color="purple">Update Menu</font></h3></center>
                               <center>
                                   <form class="form" method="post" enctype="multipart/form-data">
						<div>
							<span>Select food<label>*</label></span>
                                                       
                                                 <select name="food" id="food">
                                                     <option><span>CHOOSE FOODTYPE</span></option>
                                                    <%      String URL="", UNAME="", PASS="";
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
                    if(fid.equals(res.getString("f_id")))
                    {
                        out.print("<option value='"+res.getString("f_id")+"' selected>"+res.getString("food")+"</option>");
                    }
                    else
                    {
                        out.print("<option value='"+res.getString("f_id")+"'>"+res.getString("food")+"</option>");
                    }
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
                                    
						</div>
                                                <div>
                                                <span>Food Item Name<label>*</label></span>
                                                <input type="text" placeholder="fooditems" required=" " name="fooditems" value="<%out.print(fooditemname);%>">
                                                </div>
                                                <div>
                                                    <span>Food Quantity<label>*</label></span>
					       <input type="text" placeholder="food quantity" required=" " name="qty" value="<%out.print(qty1);%>">
                                               </div>
                                                <div>
                                                    <span>Food Price<label>*</label></span>
					       <input type="text" placeholder="price" required=" " name="price" value="<%out.print(price1);%>">
                                               </div>
                                               <div>
                                                   <span>Discount on food <label>*</label></span>
                                               <input type="text" placeholder="discount" required=" " name="discount" value="<%out.print(discount1);%>">
                                               </div>
                                               <div>
                                                   <span>Food Item Image<label>*</label></span>
                                                     <img src="cimages/<% out.print(imagename1);%>" width="150px"><br/>
                                                
							<input type="file" name="rimage" ><br><br>
                                                 </div>       
					
					<input type="submit" value="Update" name="s1">
                                        <%
                                            String fooditems="",foodtype="",imagename="",path1="",price="",discount="",qty="";
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

                                                         if(itemName1.equals("fooditems")) //control's name - textbox name
                                                        {
                                                             fooditems=value;
                                                         }
                                                           else if(itemName1.equals("food")) //control's name - textbox name
                                                        {
                                                             foodtype=value;
                                                         }
                                                         else if(itemName1.equals("price")) //control's name - textbox name
                                                        {
                                                             price=value;
                                                         }
                                                         else if(itemName1.equals("discount")) //control's name - textbox name
                                                        {
                                                             discount=value;
                                                         }
                                                         else if(itemName1.equals("qty")) //control's name - textbox name
                                                        {
                                                             qty=value;
                                                         }
                                                         else if(itemName1.equals("food")) //control's name - textbox name
                                                        {
                                                             foodtype=value;
                                                         }

                                                          
                                                      }
                                                     else
                                                     {
                                                             String type=myitem.getContentType();
                                                             long size=myitem.getSize()/1024; //kbytes

                                                             if(size==0)
                                                             {
                                                                 imagename=imagename1;
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
                                                       float f_price=(Float.parseFloat(price)-((0.01f)*Float.parseFloat(discount)*Float.parseFloat(price)));                                                           
                                                         Class.forName("com.mysql.jdbc.Driver");
                                                         Connection myconnection=DriverManager.getConnection(URL, UNAME, PASS);
                                                         try
                                                         {   
                                                           String qu="update menu set f_id=?,itemname=?,price=?,discount=?,fprice=?,image=?,qty=? where m_id=?";
                                                           PreparedStatement myst=myconnection.prepareStatement(qu);
                                                           myst.setString(1, foodtype);
                                                           myst.setString(2, fooditems);
                                                           myst.setString(3, price);
                                                           myst.setString(4,discount);
                                                           myst.setString(5,String.valueOf(f_price));
                                                           myst.setString(6,imagename);
                                                           myst.setString(7,qty);
                                                           myst.setString(8,request.getParameter("m_id"));
                                                           int i=myst.executeUpdate();
                                                           if(i==1)
                                                           { out.print("menu update succesful");
                                                               response.sendRedirect("managemenu.jsp?f_id="+fid);
                                                             }
                                                             else
                                                             {
                                                                 out.print("error in coding");
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
                                   </form>
                               
                               </center>

                                          
            </div>
			</div>
	</div>
                                               
  <%@include file="shopkeeperfooter.jsp" %>
  </body>
  </html>