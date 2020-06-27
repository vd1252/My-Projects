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
				<li class="active">Manage locality</li>
			</ol>
		</div>
	</div>
        
        <!----Add Resturant----------->
        <div class="login-page">
		<div class="container">
                    
			<div class="col-md-3"></div>
			   <div class="col-md-6 login-right wow fadeInRight" data-wow-delay="0.4s" >
                               <center><h3><font color="purple">Manage locality</font></h3></center>
                               <center>
                                   <form method="post">
						<div>
							<span>Select City<label>*</label></span>
                                                       
                                                 <select name="city" id="city">
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
                    if(request.getParameter("cityid")==null)
                    {
                        out.print("<option value='"+res.getString("cityid")+"'>"+res.getString("city")+"</option>");
                    }
                    else
                    {
                        String city=request.getParameter("cityid");
                        if(city.equals(res.getString("catid")))
                        {
                            out.print("<option value='"+res.getString("cityid")+"' selected>"+res.getString("city")+"</option>");
                        }
                        else
                        {
                            out.print("<option value='"+res.getString("cityid")+"'>"+res.getString("city")+"</option>");
                        }
                    }
                    
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
                                   </form>
                                <div id="msg"></div>
                               </center>

                                          
            </div>
			</div>
	</div>
                                                <script>
                    $(document).ready(function(){
                        var city=$("#city").val();
                        if(city!="CHOOSE CITY")
                        {
                            abc(city);
                        }
                       $("#msg").delegate(".del","click",function(e){
                           e.preventDefault();
                           var a=$(this).attr("id");
                           var pr=$(this).parent();
                           var pr1=$(this).parent().parent();
                           if(confirm("are u sure to delete that locality?"))
                           {
                               $.ajax({
                                    url:"deletelocality.jsp",
                                    data:{"localityid":a},
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
                       $("#city").change(function(){
                           
                           var city=$("#city").val();
                           abc(city);
                           
                       })
                        
                    })
                    function abc(city)
                    {
                        $.ajax({
                            url:"showlocalityajax.jsp",
                            data:{"city":city},
                            type:"post",
                            beforeSend:function()
                            {
                                $("#msg").html("<img src='lib/preloader.gif' width='30px' height='30px'>")
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
		
  <%@include file="adminfooter.jsp" %>
  </body>
  </html>