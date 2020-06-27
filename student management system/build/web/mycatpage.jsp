<%
    if(!"administrator".equals(session.getAttribute("usertype")))
    {
        response.sendRedirect("loginpage.jsp");
    }
%>
<%@include file="disp.jsp" %>
<%@include file="adminheader.jsp" %>
<%@page import="java.sql.*" %>
<%@include file="databaseinfo.jsp" %>
<%@page import="java.io.File"%>
<%@page import="org.apache.commons.fileupload.FileUploadException"%>
<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
<%@page import="org.apache.commons.fileupload.FileItemFactory"%>
<%@page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
                <div class="login">
		<div class="container">
			<h2>ADD CATEGORY</h2>
		
			<div class="login-form-grids animated wow slideInUp" data-wow-delay=".5s">
                            <form name="form2" method="post" enctype="multipart/form-data">
                                <input type="text" name="categoryname" placeholder="Category Name">
                                <br>
				<input type="file" name="myfile">
                                
                                <input type="submit" value="Add Category" name="submit">
                                    </form>
			</div>

                        <%
     try
                    {
                        Class.forName("com.mysql.jdbc.Driver");
                        Connection myconn=DriverManager.getConnection(PATH+PLACE,USERNAME,PASSWORD);
                        try
                        {
                            String q="select * from mycategorytable";
                            PreparedStatement myst=myconn.prepareStatement(q);
                            ResultSet myresult=myst.executeQuery();
                            if(myresult.next())
                            {
                                out.print("<br><br><h1 align='center'>List of Categories</h1><br><br>");//table heading
                                out.print("<table class='table table-hover' align='center'>" +
                                "<thead><th>Category ID</th><th>Category Name</th><th>Category Image</th>"

                                + "</thead>"
                                + "<tbody>"); 
                                do
                                {
                                    out.print("<tr><td>"+ myresult.getString("smscategoryid") +"</td>");
                                    out.print("<td>"+ myresult.getString("smscategoryname") +"</td>");
                                    out.print("<td><a href='images/"+ myresult.getString("smscategorypicname") +"'><img src='images/"+ myresult.getString("smscategorypicname")+"' width='50px'></a></td>");

                                    out.print("</tr>");
                                }
                                while(myresult.next());
                                out.print("</tbody></table>");
                            }
                            else
                            {
                                out.print("<script type='text/javascript'>");
                                        out.print("alert('No Category exists')");
                                        out.print("</script>");
                            }
                        }
                        catch(SQLException a)
                        {
                            out.print("<script type='text/javascript'>");
                                        out.print("alert('Category already added')"+a.getMessage());
                                        out.print("</script>");
                        }
                        catch(Exception e)
                        {
                            out.print("<script type='text/javascript'>");
                                        out.print("alert('Error in query')"+e.getMessage());
                                        out.print("</script>");
                        }

                        finally
                        {
                          myconn.close();  
                        }
                    }
                    catch(Exception e)
                    {
                        out.print("<script type='text/javascript'>");
                                        out.print("alert('Error in connection')"+e.getMessage());
                                        out.print("</script>");
                    }

%>
                        
		</div>
           
	</div>
       
<%
String categoryname="", imagename="",path="";
        boolean successful=true;
        boolean isMultipart = ServletFileUpload.isMultipartContent(request);
              
            if(isMultipart)
            {
//                out.print("hello");
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
//                    out.print(items);
                        for(FileItem myitem:items)
                        {
                             if (myitem.isFormField())//form field means regular field
                             {
                                 String itemName1 = myitem.getFieldName();//name of text box is being fetched
                                 String value=myitem.getString();//actual categoryname is being fetched here
                                                                
                                 if(itemName1.equals("categoryname")) //control's name - textbox name
                                 {
                                     categoryname=value;
                                 }
                             }
                             else
                             {
                                     String type=myitem.getContentType();//content type that means a file
                                     long size=myitem.getSize()/1024; //kbytes conversion into KB and calculation of size

                                     if(size==0)
                                     {
                                         imagename="default.jpeg";// no image is choosen by user
                                     }
                                     else if((type.equals("image/pjpeg") || type.equals("image/jpeg")//some browsers support jpeg or refer to this format as pjpeg
                                             || type.equals("image/png") || type.equals("image/x-png")
                                             || type.equals("image/gif")))
                                         {
                                                imagename=new java.util.Date().getTime()+myitem.getName();//creating image name using timestamp
                                                path=getServletContext().getRealPath("/") + "images\\" + imagename;

                                                File savefile=new File(path);
                                                myitem.write(savefile);    
                                         }
                                     else
                                     {
                                         successful=false;
                                         out.println("Only pictures are allowed");
                                     }    
                             }

                       }
            
                if(successful==true)
                   {

                                try
                                {
                                   Class.forName("com.mysql.jdbc.Driver"); 
                                    Connection myconn=DriverManager.getConnection(PATH+PLACE,USERNAME,PASSWORD);
                                    try
                                    {
                                         String q1="select smscategoryname from mycategorytable where smscategoryname=?";
                                        PreparedStatement myst1=myconn.prepareStatement(q1);
                                        myst1.setString(1,categoryname);
                                        ResultSet myresult1=myst1.executeQuery();
                                        if(myresult1.next())
                                        {
                                        out.print("<script type='text/javascript'>");
                                        out.print("alert('"+categoryname+" category already exists')");
                                        out.print("</script>");
                                        }
                                        else
                                        {
                                             String q="insert into mycategorytable(smscategoryname,smscategorypicname) values(?,?)";
                                        //column name is to be wriiten because we have one column in database which
                                        //is automatically incremented
                                        //hence when it is not written it produces error
                                        PreparedStatement myst=myconn.prepareStatement(q);
                                        myst.setString(1,categoryname);
                                        myst.setString(2,imagename);
                                        int result=myst.executeUpdate();
                                        if(result>0)
                                        {
                                            out.print("<script type='text/javascript'>");
                                            out.print("alert('Category added successfully')");
                                            out.print("</script>");
                                        }
                                        else
                                        {
                                            out.print("<script type='text/javascript'>");
                                            out.print("alert('Category cannot be added successfully')");
                                            out.print("</script>");
                                        }
                                        }
                                       
                                    }
                                    catch(Exception e)
                                    {
                                        out.print("Error in query " + e.getMessage());
                                    }
                                    finally
                                    {
                                        myconn.close();
                                    }
                                }
                                catch(Exception e)
                                {
                                    out.print("<center>Error in connection " +e.getMessage() +"</center>");
                                }
                   }
            }
//            else
//            {
//                out.print("not multipart");
//            }
  %>
    </body>
</html>
