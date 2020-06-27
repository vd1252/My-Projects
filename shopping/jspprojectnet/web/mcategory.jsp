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
				<li class="active">Manage Catgeory</li>
			</ol>
		</div>
	</div>
        <div class="login">
		<div class="container">
			<h2>Manage Category</h2>
       
<%
    
        String cat=request.getParameter("cat");
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            Connection myconnection=DriverManager.getConnection("jdbc:mysql://localhost/evedb", "root", "");
            try
            {
                String qu="select * from category";
                PreparedStatement myst=myconnection.prepareStatement(qu);
                ResultSet myres=myst.executeQuery();
                if(myres.next())
                {
                    out.print("<table class='table'>"
                            + "<tr>"
                            + "<td>Category Name </td>"
                            + "<td>Update</td>"
                            + "<td>Delete</td>"
                            + "</tr>");
                    do
                    {
                        out.print("<tr>"
                                + "<td>"+myres.getString("name")+"</td>"
                                + "<td><a href='updatecat.jsp?catid="+myres.getString("catid")+"'>Update</a></td>"
                                + "<td><a href='deletecat.jsp?catid="+myres.getString("catid")+"' class='del' id='"+myres.getString("catid")+"'>Delete</a></td>"
                                + "</tr>");
                    }
                    while(myres.next());
                    out.print("</table>");
                }
                else
                {
                    out.print("Categories not available");
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
                </div>
        </div>
                <script>
                    $(document).ready(function(){
                       $(".del").click(function(e){
                           e.preventDefault();
                           var a=$(this).attr("id");//catid
                           var pr=$(this).parent();//col
                           var pr1=$(this).parent().parent();//row
                           if(confirm("are u sure to delete that product?"))
                           {
                               $.ajax({
                                    url:"deletecat.jsp",
                                    data:{"catid":a},
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
                        
                    })
                    
                </script>
		
          <%@include file="footer.jsp" %>
    </body>
</html>
