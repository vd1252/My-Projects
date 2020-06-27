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
				<li class="active">Manage Product</li>
			</ol>
		</div>
	</div>
        <div class="login">
		<div class="container">
			<h2>Manage Product</h2>
		
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
                                    </select><br/>
                                    <select name="subcat" class="form-control" id="subcat">
                                        <option>Choose SubCategory</option>
                                     </select><br/>
                                   
				</form>
			</div>
                                  <div id="msg"></div>  
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
                  $("#subcat").change(function(){
                      var a=$(this).val();
                      abc(a);
                      
                  })
                  
              })
              function abc(subcat)
                    {
                        
                        $.ajax({
                            url:"showproductajax.jsp",
                            data:{"subcat":subcat},
                            type:"post",
                            beforeSend:function()
                            {
                                $("#msg").html("<img src='images/preloader.gif' width='30px' height='30px'>")
                            },
                            success:function(res)
                            {
                                $("#msg").html(res)
                            },
                            error:function()
                            {
                                 alert("error")
                            }
                        })
                    }
              
          </script>
    </body>
</html>
