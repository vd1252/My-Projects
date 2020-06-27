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
				<li class="active">Add Sub category</li>
			</ol>
		</div>
	</div>
        <div class="login">
		<div class="container">
			<h2>Add Sub Category</h2>
		
			<div class="login-form-grids animated wow slideInUp" data-wow-delay=".5s">
				<form method="post">
                                    <select name="cat">
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
                    out.print("<option value='"+res.getString("catid")+"'>"+res.getString("name")+"</option>");
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
                                    </select>
					<input type="text" placeholder="Sub Category" required=" " name="subcat">
					
					<input type="submit" value="Add" name="s1">
<%
    if(request.getParameter("s1")!=null)
    {
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            Connection myconnection=DriverManager.getConnection("jdbc:mysql://localhost/evedb", "root", "");
            try
            {
                String qu="insert into subcategory(catid,name) value(?,?)";
                PreparedStatement myst=myconnection.prepareStatement(qu);
                myst.setString(1, request.getParameter("cat"));
                myst.setString(2, request.getParameter("subcat"));
                int i=myst.executeUpdate();
                if(i==1)
                {
                    out.print("Sub Category Added");
                }
                else
                {
                    out.print("problem");
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
    }
%>
				</form>
			</div>
			</div>
	</div>
		
          <%@include file="footer.jsp" %>
    </body>
</html>
