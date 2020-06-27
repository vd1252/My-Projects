<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    int oid=0;
 try
        {
            Class.forName("com.mysql.jdbc.Driver");
             Connection myconnection=DriverManager.getConnection("jdbc:mysql://localhost/evedb", "root", "");
            try
            {
                String qu="select * from checkout where uname=? order by orderid desc limit 1";
                PreparedStatement myst=myconnection.prepareStatement(qu);
                myst.setString(1, session.getAttribute("email").toString());
                ResultSet res=myst.executeQuery();
                if(res.next())
                {
                    oid=res.getInt("orderid");
                    try
                    {
                        String qu1="select * from addtocart where uname=?";
                        PreparedStatement myst1=myconnection.prepareStatement(qu1);
                        myst1.setString(1, session.getAttribute("email").toString());
                        ResultSet myres=myst1.executeQuery();
                        if(myres.next())
                        {
                            do
                            {
                                try
                                {
                                    String qu2="insert into orderhistory(oid,pid,pname,price,qty,tcost,image,uname) "
                                            + "values(?,?,?,?,?,?,?,?)";
                                    PreparedStatement myst2=myconnection.prepareStatement(qu2);
                                    myst2.setInt(1, oid);
                                    myst2.setString(2, myres.getString("pid"));
                                    myst2.setString(3, myres.getString("pname"));
                                    myst2.setString(4, myres.getString("price"));
                                    myst2.setString(5, myres.getString("qty"));
                                    myst2.setString(6, myres.getString("tcost"));
                                    myst2.setString(7, myres.getString("image"));
                                    myst2.setString(8, myres.getString("uname"));
                                    myst2.executeUpdate();
                                    String qu6="update product set stock=stock-? where pid=?";
                                    PreparedStatement myst5=myconnection.prepareStatement(qu6);
                                    myst5.setString(1, myres.getString("qty"));
                                    myst5.setString(2,myres.getString("pid"));
                                    myst5.executeUpdate();
                                }
                                catch(Exception e)
                                {
                                    out.print("Error in query "+e.getMessage());
                                }
                            }
                            while(myres.next());
                            try
                            {
                                String qu5="delete from addtocart where uname=? ";
                                PreparedStatement myst5=myconnection.prepareStatement(qu5);
                                myst5.setString(1, session.getAttribute("email").toString());
                                if(myst5.executeUpdate()==1)
                                {
                                    
                                }
                
                            } 
                            catch(Exception e)
                            {
                                out.print("Error in query "+e.getMessage());
                            }
                        }
                    }
                    catch(Exception e)
                    {
                        out.print("Error in query "+e.getMessage());
                    }
                    
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
				<li class="active">Checkout Page</li>
			</ol>
		</div>
	</div>s
        <div class="login">
		<div class="container">
                    <h2>Thanks For Shopping</h2>
                    <p style='text-align:center;font-size:30px !important;font-weight: bold;'>Final Amount you have to Pay <% out.print(session.getAttribute("tcost").toString());%></p>
                    <p>The order Placed on Order id:<% out.print(oid);%></p>
                    <p>The product you have to buy as following:</p>
                    		<%
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
             Connection myconnection=DriverManager.getConnection("jdbc:mysql://localhost/evedb", "root", "");
            try
            {
                String qu="select * from orderhistory where oid=?";
                PreparedStatement myst=myconnection.prepareStatement(qu);
                myst.setInt(1, oid);
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
                            
                            + "</tr>");
                    do
                    {
                        
                        out.print("<tr>"
                                + "<td><img src='uploads/"+res.getString("image")+"' width='50px'></td>"
                                + "<td>"+res.getString("pname")+"</td>"
                                + "<td>"+res.getString("price")+"</td>"
                                + "<td>"+res.getString("qty")+"</td>"
                                + "<td>"+res.getString("tcost")+"</td>"
                                
                                + "</tr>");
                    }while(res.next());
                    
                    out.print("</table>");
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
                </div>
	</div>
                                
          <%@include file="footer.jsp" %>
          <script>
              $(document).ready(function(){
                  $("#cheque").hide()
                  $("#ch").change(function(){
                      $("#cheque").show(1000)
                      //window.location="pagename"
                  })
              })
              
          </script>
          <link href="js/jquery-ui.css" rel="stylesheet"/>
          <script src="js/jquery-ui.js"></script>
          <script>
            $( function() {
              $("#datepicker").datepicker();
            } );
            </script>
            
          
    </body>
</html>
