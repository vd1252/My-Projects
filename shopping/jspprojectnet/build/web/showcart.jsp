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
         <%@include file="header.jsp" %>
        <div class="breadcrumbs">
		<div class="container">
			<ol class="breadcrumb breadcrumb1 animated wow slideInLeft" data-wow-delay=".5s">
				<li><a href="index.html"><span class="glyphicon glyphicon-home" aria-hidden="true"></span>Home</a></li>
				<li class="active">Products</li>
			</ol>
		</div>
	</div>
       <!-- //breadcrumbs -->
	<div class="products">
		<div class="container">
			<%
        int sum=0;
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
             Connection myconnection=DriverManager.getConnection("jdbc:mysql://localhost/evedb", "root", "");
            try
            {
                String qu="select * from addtocart where uname=?";
                PreparedStatement myst=myconnection.prepareStatement(qu);
                myst.setString(1, session.getAttribute("email").toString());
                ResultSet res=myst.executeQuery();
                if(res.next())
                {
                    out.print("<table class='table'>"
                            + "<tr>"
                            + "<td>Image</td>"
                            + "<td>Product Name</td>"
                            + "<td>Price</td>"
                            + "<td>Quantity</td>"
                            + "<td>Tcost</td>"
                            + "<td>Delete</td>"
                            + "</tr>");
                    do
                    {
                        sum+=res.getInt("tcost");
                        out.print("<tr>"
                                + "<td><img src='uploads/"+res.getString("image")+"' width='50px'></td>"
                                + "<td>"+res.getString("pname")+"</td>"
                                + "<td>"+res.getString("price")+"</td>"
                                + "<td>"+res.getString("qty")+"</td>"
                                + "<td>"+res.getString("tcost")+"</td>"
                                + "<td>Delete</td>"
                                + "</tr>");
                    }while(res.next());
                    session.setAttribute("tcost", sum);
                    out.print("</table>");
                    out.print("<p style='text-align:center;font-size:30px !important;font-weight: bold;'>Final Cost:"+sum+"</style></p>");
                }
                else
                {
                    out.print("Wrong Username and password");
                }
            }
            catch(Exception e)
            {
                out.print("Error in query "+e.getMessage());
            }
        }
        catch(Exception e)
        {
                out.print("Error in connection "+e.getMessage());
        }
                        
                        %>
                        <form name="abc">
                            <table class="table">
                                <tr>
                                    <td><input type="submit" name="s1" value="Continue Shopping"></td>
                                    <td><input type="submit" name="s2" value="Checkout"></td>
                                </tr>
                                <%
                                if(request.getParameter("s1")!=null)
                                {
                                    response.sendRedirect("index.jsp");
                                }
                                else if(request.getParameter("s2")!=null)
                                {
                                    response.sendRedirect("checkout.jsp");
                                }
                                %>
                            </table>
                            
                        </form>
		</div>
	</div>
<!-- new -->
       
          <%@include file="footer.jsp" %>
          
    </body>
</html>
