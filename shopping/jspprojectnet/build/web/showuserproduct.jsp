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
       
        <div class="top-brands">
		<div class="container">
		<h2>All Products</h2>
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
                int i=0;
                 do
                 {
                     if(i==0)
                     {
    %>            
                
<div class="agile_top_brands_grids"><!-----------row-------------->
    <%
    }
    %>
  
    <div class="col-md-4 top_brand_left">
                <div class="hover14 column">
                        <div class="agile_top_brand_left_grid">
                                <div class="agile_top_brand_left_grid_pos">
                                        <img src="images/offer.png" alt=" " class="img-responsive" />
                                </div>
                                <div class="agile_top_brand_left_grid1">
                                        <figure>
                                                <div class="snipcart-item block" >
                                                        <div class="snipcart-thumb">
                                                            <a href="<% out.print("productdetails.jsp?pid="+myres.getString("pid"));%>"><img title=" " alt=" " src="<% out.print("uploads/"+myres.getString("image"));%>" width='150px' height='150px'/></a>		
                                                            <p><% out.print(myres.getString("pname"));%></p>
                                                                
                                                            <h4><i class="fas fa-rupee-sign"></i><% out.print(myres.getInt("price")-(myres.getInt("price")*myres.getInt("discount"))/100);%><span><% out.print(myres.getString("price"));%></span></h4>
                                                        </div>
                                                        
                                                </div>
                                        </figure>
                                </div>
                        </div>
                </div>
        </div>
        
    <%
        i++;
        if(i==3)
        {
            i=0;
    %>
    
        <div class="clearfix"> </div>
</div>
    <%
    }
    %>
	<%
            }while(myres.next());
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
        </div>
          <%@include file="footer.jsp" %>
    </body>
</html>
