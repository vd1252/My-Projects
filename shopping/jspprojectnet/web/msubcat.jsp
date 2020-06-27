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
				<li class="active">Manage Sub Category</li>
			</ol>
		</div>
	</div>
        <div class="login">
		<div class="container">
			<h2>Manage Sub Category</h2>
                        <form name="ab">
                            <select name="cat" class="form-control" id="cate">
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
                    if(request.getParameter("catid")==null)
                    {
                        out.print("<option value='"+res.getString("catid")+"'>"+res.getString("name")+"</option>");
                    }
                    else
                    {
                        String cat=request.getParameter("catid");
                        if(cat.equals(res.getString("catid")))
                        {
                            out.print("<option value='"+res.getString("catid")+"' selected>"+res.getString("name")+"</option>");
                        }
                        else
                        {
                            out.print("<option value='"+res.getString("catid")+"'>"+res.getString("name")+"</option>");
                        }
                    }
                    
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
                            </select>   <br/>
                            
                        </form>
       
                            <div id="msg"></div>
                </div>
        </div>
                <script>
                    $(document).ready(function(){
                        var cat=$("#cate").val();
                        if(cat!="Choose Category")
                        {
                            abc(cat);
                        }
                       $("#msg").delegate(".del","click",function(e){//$(parentselector).deletage("child","event",function(){
                           //
                           //
                           //})
                           e.preventDefault();
                           var a=$(this).attr("id");
                           
                           var pr=$(this).parent();
                           var pr1=$(this).parent().parent();
                           if(confirm("are u sure to delete that product?"))
                           {
                               $.ajax({
                                    url:"deletesubcat.jsp",
                                    data:{"subid":a},
                                    type:"post",
                                    beforeSend:function()
                                    {
                                        pr.append("<img src='images/preloader.gif' width='30px' height='30px'>")
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
                       $("#cate").change(function(){
                           
                           var cat=$("#cate").val();
                           abc(cat);
                           
                       })
                        
                    })
                    function abc(cat)
                    {
                        
                        $.ajax({
                            url:"showsubcatajax.jsp",
                            data:{"cat":cat},
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
		
          <%@include file="footer.jsp" %>
    </body>
</html>
