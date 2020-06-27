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
        <div class="login">
		<div class="container">
                    <%
                        try
{
    Class.forName("com.mysql.jdbc.Driver");
    Connection myconnection=DriverManager.getConnection("jdbc:mysql://localhost/evedb", "root", "");
    try
    {
        String qu="select * from product where subcatid=?";
        PreparedStatement myst=myconnection.prepareStatement(qu);
        myst.setString(1,request.getParameter("subcatid"));
        ResultSet myres=myst.executeQuery();
        if(myres.next())
        {
            out.print("<table width='100%'>");
            int col=0;
            do
            {
                if(col==0)
                {
                    out.print("<tr align='center'>");
                }
                out.print("<td><a href='productdetails.jsp?pid="+myres.getString("pid")+"'><img src='uploads/"+myres.getString("image")+"' width='250px'>"
                        + "<br>"+myres.getString("pname")+"</a><br><br></td>");
                col++;
                if(col==3)
                {
                    out.print("</tr>");
                    col=0;
                }
            }while(myres.next());
            out.print("</table>");
        }
        else
        {
            out.print("<li>Categories not available</li>");
        }

    }
    catch(Exception e)
    {
        out.print("Error in query"+e.getMessage());
    }
}
    catch(Exception e)
    {
        out.print("Error in query"+e.getMessage());
    }

                    
                    %>
                </div>	
	</div>
		
          <%@include file="footer.jsp" %>
    </body>
</html>
