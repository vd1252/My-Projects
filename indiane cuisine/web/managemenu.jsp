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
         <%@include file="shopkeeperheader.jsp" %>
        <div class="breadcrumbs">
		<div class="container">
			<ol class="breadcrumb breadcrumb1 animated wow slideInLeft" data-wow-delay=".5s">
				<li><a href="shopkeeper.jsp"><span class="glyphicon glyphicon-home" aria-hidden="true"></span>Home</a></li>
				<li class="active">Manage Menu</li>
			</ol>
		</div>
	</div>
        <div class="login">
		<div class="container">
                    <div class="col-md-3"></div>
	            <div class="col-md-6 login-right wow fadeInRight" data-wow-delay="0.4s" >
                    <h1><center><font color="purple">Manage Menu</font></center></h1><br><br>
                    <center>
                                   <form method="post">
						<div>
							<span>Select Food Type<label>*</label></span>
                                                        
                                                 <select name="food" id="food">
                                                     <option><span>CHOOSE FOODTYPE</span></option>
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
            String qu="select * from foodtype where rid=?";
            PreparedStatement myst=myconnection.prepareStatement(qu);
            myst.setString(1,session.getAttribute("rid").toString());
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
                                    url:"deletemenu.jsp",
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
                            url:"showmenuajax.jsp",
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
                          
		
          <%@include file="shopkeeperfooter.jsp" %>
          
    </body>
</html>