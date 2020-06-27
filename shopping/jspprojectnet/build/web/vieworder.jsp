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
				<li class="active">Login Page</li>
			</ol>
		</div>
	</div>
        <div class="login">
		<div class="container">
			<h2>List Of Members</h2>
                       
		<%
        
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            Connection myconnection=DriverManager.getConnection("jdbc:mysql://localhost/evedb", "root", "");
            try
            {
                ResultSet myres=null;
                
                String qu="select * from checkout order by orderid desc";
                PreparedStatement myst=myconnection.prepareStatement(qu);
                myres=myst.executeQuery();
                if(myres.next())
                {
                    out.print("<table class='table'><tr>"
                            + "<td>Order Id</td>"
                            + "<td>Holder Name</td>"
                            + "<td>Expiry</td>"
                            + "<td>Name</td>"
                            + "<td>Phone No</td>"
                            + "<td>Address</td>"
                            + "<td>Mode</td>"
                            + "<td>Total cost</td>"
                            + "<tr>");
                    
                    do
                    {
                        out.print("<tr>"
                                + "<td><a href='vieworderproduct.jsp?oid="+myres.getString("orderid")+"'>"+myres.getString("orderid")+"</a></td>"
                                + "<td>"+myres.getString("hname")+"</td>"
                                + "<td>"+myres.getString("expy")+"</td>"
                                + "<td>"+myres.getString("name")+"</td>"
                                + "<td>"+myres.getString("phone")+"</td>"
                                + "<td>"+myres.getString("address")+"</td>"
                                + "<td>"+myres.getString("mode")+"</td>"
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
