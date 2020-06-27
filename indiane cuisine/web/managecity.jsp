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
				<li class="active">Manage City</li>
			</ol>
		</div>
	</div>
        <div class="login">
		<div class="container">
                    
                    <h1><center><font color="purple">Manage City</font></center></h1><br><br>
		
			
		
	<%
    
      
          String city=request.getParameter("city");
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
                String qu="select * from city";
                PreparedStatement myst=myconnection.prepareStatement(qu);
                ResultSet myres=myst.executeQuery();
                if(myres.next())
                {
                    out.print("<table class='table'>"
                            + "<tr>"
                            + "<td><b>City Name </b></td>"
                            + "<td><b>Update</b></td>"
                            + "<td><b>Delete</b></td>"
                            + "</tr>");
                    do
                    {
                        out.print("<tr>"
                                + "<td>"+myres.getString("city")+"</td>"
                                + "<td><a href='updatecity.jsp?cityid="+myres.getString("cityid")+"'>Update</a></td>"
                                + "<td><a href='deletecity.jsp?cityid="+myres.getString("cityid")+"' class='del' id='"+myres.getString("cityid")+"'>Delete</a></td>"
                                + "</tr>");
                    }
                    while(myres.next());
                    out.print("</table>");
                }
                else
                {
                    out.print("City not available");
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
                           var a=$(this).attr("id");
                           var pr=$(this).parent();
                           var pr1=$(this).parent().parent();
                           if(confirm("are u sure to delete this City?"))
                           {
                               $.ajax({
                                    url:"deletecity.jsp",
                                    data:{"cityid":a},
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
                        
                    })
                    
                </script>
                          
                    </div>
			</div>
	
		
          <%@include file="adminfooter.jsp" %>
    </body>
</html>