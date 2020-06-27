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
				<li><a href="index.html"><span class="glyphicon glyphicon-home" aria-hidden="true"></span>Home</a></li>
				<li class="active">Add Product</li>
			</ol>
		</div>
	</div>
        <div class="login">
		<div class="container">
			<h2>Add Product</h2>
		
			<div class="login-form-grids animated wow slideInUp" data-wow-delay=".5s">
                            <form method="post" enctype="multipart/form-data">
                                    <select name="cat" class="form-control" id="cat">
                                        <option>Choose Category</option>
<%
    try
    {
        Class.forName("com.mysql.jdbc.Driver");
        Connection myconnection=DriverManager.getConnection("jdbc:mysql://localhost/evedb", "root", "");
        try
        {
            String qu="select * from category";
            PreparedStatement myst=myconnection.prepareStatement(qu);
            ResultSet res=myst.executeQuery();
            if(res.next())
            {
                do
                {
                    out.print("<option value='"+res.getString("catid")+"'>"+res.getString("name")+"</option>");
                }while(res.next());
            }
            else
            {
                out.print("<option>No Catgeory available</option>");
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
                                    </select><br/><div id="msg"></div>
                                    <select name="subcat" class="form-control" id="subcat">
                                        <option>Choose SubCategory</option>
                                     </select><br/>
                                    <input type="text" placeholder="Product Name" required=" " name="pname"><br>
                                    <input type="text" placeholder="Price" required=" " name="price"><br>
                                        <input type="text" placeholder="Discount%" required=" " name="discount"><br/>
                                        <input type="text" placeholder="Available Stock" required=" " name="stock"><br/>
                                        <textarea name="desc" class="form-control"></textarea> <br>
                                        Image <input type="file" name="pimage">
					<input type="submit" value="Add" name="s1">
                                        
                                        <%
         
           String catid="", subcatid="", pname="", price="", discount="", stock="", description="", imagename="",path="";
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
          
            if(itemName1.equals("cat")) //control's name - textbox name
           {
                catid=value;
            }
            else if(itemName1.equals("subcat")) //control's name - textbox name
           {
                subcatid=value;
            }
             else if(itemName1.equals("pname")) //control's name - textbox name
           {
                pname=value;
            }
             else if(itemName1.equals("price")) //control's name - textbox name
           {
                price=value;
            }
             else if(itemName1.equals("discount")) //control's name - textbox name
           {
                discount=value;
            }
              else if(itemName1.equals("stock")) //control's name - textbox name
           {
                stock=value;
            }
              else if(itemName1.equals("desc")) //control's name - textbox name
           {
                description=value;
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
                path=config.getServletContext().getRealPath("/") + "uploads\\" + imagename;
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
            Class.forName("com.mysql.jdbc.Driver");
            Connection myconnection=DriverManager.getConnection("jdbc:mysql://localhost/evedb", "root", "");
            try
            {
                String qu="insert into product(catid,subcatid,pname,price,discount,stock,description,image) value(?,?,?,?,?,?,?,?)";
                PreparedStatement myst=myconnection.prepareStatement(qu);
                myst.setString(1,catid);
                myst.setString(2,subcatid);
                myst.setString(3, pname);
                myst.setString(4, price);
                myst.setString(5, discount);
                myst.setString(6, stock);
                myst.setString(7, description);
                myst.setString(8, imagename);
                int i=myst.executeUpdate();
                if(i==1)
                {
                    out.print("Product Added");
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
                                        
                                        
                                        
                                        
                                        
                                        
                                        
                                        
                                        
                                        
                                        
                                        
                                        
                                        
                                        
                                        
                                        
                                        
                                        
                                        
                                        
<%
//    if(request.getParameter("s1")!=null)
//    {
//        try
//        {
//            
//                out.print(request.getParameter("pimage"));
            
//            Class.forName("com.mysql.jdbc.Driver");
//            Connection myconnection=DriverManager.getConnection("jdbc:mysql://localhost/evedb", "root", "");
//            try
//            {
//                String qu="insert into subcategory(catid,name) value(?,?)";
//                PreparedStatement myst=myconnection.prepareStatement(qu);
//                myst.setString(1, pname);
//                myst.setString(2, price);
//                myst.setString(3, imagename);
//                int i=myst.executeUpdate();
//                if(i==1)
//                {
//                    out.print("Sub Category Added");
//                }
//                else
//                {
//                    out.print("problem");
//                }
//            }
//            catch(Exception e)
//            {
//                out.print("Error in query"+e.getMessage());
//            }
//        }
//        catch(Exception e)
//        {
//            out.print("Error in connection"+e.getMessage());
//        }
//    }
%>
				</form>
			</div>
			</div>
	</div>
		
          <%@include file="footer.jsp" %>
          <script>
              $(document).ready(function(){
                  $("#cat").change(function(){
                      var a=$(this).val();
                      $.ajax({
                          url:"selectsubcatajax.jsp",
                          data:{"category":a},
                          type:"post",
                          beforeSend:function()
                          {
                              $("#msg").html("<img src='images/preloader.gif' width='30px' height='30px'>");
                          },
                          success:function(res)
                          {
                              $("#msg").html("");
                              $("#subcat").html(res)
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
