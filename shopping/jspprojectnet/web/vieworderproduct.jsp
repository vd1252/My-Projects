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
				<li class="active">Login Page</li>
			</ol>
		</div>
	</div>
        <div class="login">
		<div class="container">
			<h2>orders</h2>
                       
		<%
        
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            Connection myconnection=DriverManager.getConnection("jdbc:mysql://localhost/evedb", "root", "");
            try
            {
                ResultSet myres=null;
                
                String qu="select * from orderhistory where oid=?";
                PreparedStatement myst=myconnection.prepareStatement(qu);
                myst.setString(1, request.getParameter("oid"));
                myres=myst.executeQuery();
                if(myres.next())
                {
                    out.print("<table class='table'><tr>"
                            + "<th>Image</th>"
                            + "<th>Product Name</th>"
                            + "<th>price</th>"
                            + "<th>Quantity</th>"
                            + "<th>Total Cost</th>"
                            + "<tr>");
                    
                    do
                    {
                        out.print("<tr>"
                                + "<td><img src='uploads/"+myres.getString("image")+"' width='90px'/></td>"
                                + "<td>"+myres.getString("pname")+"</td>"
                                + "<td>"+myres.getString("price")+"</td>"
                                + "<td>"+myres.getString("qty")+"</td>"
                                + "<td>"+myres.getString("tcost")+"</td>"
                                + "</tr>");
                       
                    }while(myres.next());
                    out.print("</table>");
                    
                }
                else
                {
                    out.print("No record fount");
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
          <%@include file="footer.jsp" %>
    </body>
</html>
