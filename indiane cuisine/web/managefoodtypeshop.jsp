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
				<li class="active">Manage FoodType</li>
			</ol>
		</div>
	</div>
        <div class="login">
		<div class="container">
                    
                    <h1><center><font color="purple">Manage FoodType</font></center></h1><br><br>
                       <%
    
      
                                                          String city=request.getParameter("city");
                                                          String URL="", UNAME="", PASS="";
                                                           URL = getServletContext().getInitParameter("URL");
                                                           UNAME = getServletContext().getInitParameter("UNAME");
                                                           PASS = getServletContext().getInitParameter("PASS");
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            Connection myconnection=DriverManager.getConnection(URL, UNAME, PASS);
            try
            {
                String qu2="select count(*) from foodtype where rid=?";
                int total_records=0;
                PreparedStatement myst2=myconnection.prepareStatement(qu2);
                myst2.setString(1,session.getAttribute("rid").toString());
                ResultSet myres2=null;
                myres2=myst2.executeQuery();
                if(myres2.next())
                {
                    total_records=myres2.getInt(1);
                }
                int records_per_page = 5;
                
                int totalpages = (int)(Math.ceil((double)total_records / (double)records_per_page));
                int pageno=0;
                if(request.getParameter("pageno")!=null)
                {
                    pageno=Integer.parseInt(request.getParameter("pageno"));
                }
                else
                {
                    pageno=1;
                }
                int offset = (records_per_page*(pageno-1));
                ResultSet myres=null;
                String qu="select * from foodtype where rid=? order by food desc limit " + offset + "," + records_per_page;
                //String qu="select * from foodtype where rid=? order by foodtype desc limit " + offset + "," + records_per_page";
                PreparedStatement myst=myconnection.prepareStatement(qu);
                myst.setString(1,session.getAttribute("rid").toString());
                myres=myst.executeQuery();
                if(myres.next())
                {
                    out.print("<table class='table' >"
                            + "<tr>"
                            + "<td><b>Food Image </b></td>"
                            + "<td><b>Food Type </b></td>"
                            + "<td><b>Update</b></td>"
                            + "<td><b>Delete</b></td>"
                            + "</tr>");
                    do
                    {
                        out.print("<tr>"
                                + "<td><img src='cimages/"+myres.getString("image")+"' width='250px' border='1px'/></td>"
                                + "<td>"+myres.getString("food")+"</td>"
                                + "<td><a href='updatefoodtype.jsp?f_id="+myres.getString("f_id")+"'>Update</a></td>"
                                + "<td><a href='deletefoodtype.jsp?f_id="+myres.getString("f_id")+"' class='del' id='"+myres.getString("f_id")+"'>Delete</a></td>"
                                + "</tr>");
                    }
                    while(myres.next());
                    out.print("</table>");
                    out.print("<center>");
                    for(int x=1;x<=totalpages;x++)
                            {
                                if(x==pageno)
                                {
                                    out.print(x);
                                }
                                else
                                {
                                    out.print("<a href=managefoodtypeshop.jsp?pageno=" + x + ">" + x + "</a>");
                                }
                                
                            }
                    out.print("</center><br><br>");
                }
                else
                {
                    out.print("foodtype not available");
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
                           if(confirm("are u sure to delete that foodtype ?"))
                           {
                               $.ajax({
                                    url:"deletefoodtype.jsp",
                                    data:{"foodid":a},
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
                          
		
          <%@include file="shopkeeperfooter.jsp" %>
          
    </body>
</html>