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
				<li class="active">Manage Food Item</li>
			</ol>
		</div>
	</div>
        
        <!----Add Resturant----------->
        <div class="login-page">
		<div class="container">
                    
                           <div class="col-md-3"></div>
			   <div class="col-md-6 login-right wow fadeInRight" data-wow-delay="0.4s" >
                               <center><h3><font color="purple">Manage Food Item</font></h3></center>
                               <center>
                                   <form method="post">
						<div>
							<span>Select Food Type<label>*</label></span>
                                                        
                                                 <select name="food" id="food">
                                                     <option><span>CHOOSE FOOD ITEM</span></option>
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
            String qu="select * from foodtype";
            PreparedStatement myst=myconnection.prepareStatement(qu);
            ResultSet res=myst.executeQuery();
            if(res.next())
            {
                do
                {
                    if(request.getParameter("f_id")==null)
                    {
                        out.print("<option value='"+res.getString("f_id")+"'>"+res.getString("food")+"</option>");
                    }
                    else
                    {
                        String food=request.getParameter("f_id");
                        if(food.equals(res.getString("f_id")))
                        {
                            out.print("<option value='"+res.getString("f_id")+"' selected>"+res.getString("food")+"</option>");
                        }
                        else
                        {
                            out.print("<option value='"+res.getString("f_id")+"'>"+res.getString("food")+"</option>");
                        }
                    }
                    
                }while(res.next());
            }
            else
            {
                out.print("<option>No Foodtype available</option>");
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
                                                
						
                                                  
                             </form></center>
                               <div id="msg"></div>
			   </div>
                             <div class="col-md-3"></div>
				<div class="clearfix"> </div>
                    </div>
			</div>
                   <script>
                    $(document).ready(function(){
                        var food=$("#food").val();
                        if(food!="CHOOSE FOODTYPE")
                        {
                            abc(food);
                        }
                       $("#msg").delegate(".del","click",function(e){
                           e.preventDefault();
                           var a=$(this).attr("id");
                           var pr=$(this).parent();
                           var pr1=$(this).parent().parent();
                           if(confirm("are u sure to delete that fooditem?"))
                           {
                               $.ajax({
                                    url:"deletefooditems.jsp",
                                    data:{"fooditemid":a},
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
                       $("#food").change(function(){
                           
                           var food=$("#food").val();
                           abc(food);
                           
                       })
                        
                    })
                    function abc(food)
                    {
                        $.ajax({
                            url:"showfooditemajax.jsp",
                            data:{"food":food},
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
		
	
<!----to include header portion------------>
          <%@include file="adminfooter.jsp" %>
    </body>
</html>
