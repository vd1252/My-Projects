<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String pname="",desc="",image="";
    int price=0,discount=0,rem=0,stock=0;
            try
            {
                Class.forName("com.mysql.jdbc.Driver");
                Connection myconnection=DriverManager.getConnection("jdbc:mysql://localhost/evedb", "root", "");
                try
                {
                    String qu1="select * from product where pid=?";
                    PreparedStatement myst1=myconnection.prepareStatement(qu1);
                    myst1.setString(1, request.getParameter("pid"));
                    ResultSet row1=myst1.executeQuery();
                    if(row1.next())
                    {
                        pname=row1.getString("pname");
                        price=row1.getInt("price");
                        discount=row1.getInt("discount");
                        rem=price-(price*discount)/100;
                        desc=row1.getString("description");
                        image=row1.getString("image");
                        stock=row1.getInt("stock");
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
				<li class="active">Products</li>
			</ol>
		</div>
	</div>
       <!-- //breadcrumbs -->
	<div class="products">
		<div class="container">
			<div class="agileinfo_single">
				
				<div class="col-md-4 agileinfo_single_left">
					<img id="example" src="<% out.print("uploads/"+image);%>" alt=" " class="img-responsive">
				</div>
				<div class="col-md-8 agileinfo_single_right">
				<h2><% out.print(pname);%></h2>
					
					<div class="w3agile_description">
						<h4>Description :</h4>
						<p><% out.print(desc);%></p>
					</div>
        <div class="snipcart-item block">
                <div class="snipcart-thumb agileinfo_single_right_snipcart">
                        <h4 class="m-sing"><% out.print(rem);%> <span><% out.print(price);%></span></h4>
                </div>
                <div class="snipcart-details agileinfo_single_right_details">
                        <form method="post">
                                <fieldset>
                                    <select class="form-control" name="qty" id="qty"> 
                                        <option value="0">Choose Quantity</option>
                                        <%
                                            int n;
                                            if(stock>=10)
                                            {
                                                n=10;
                                            }
                                            else
                                            {
                                                n=stock;
                                            }
                                            for(int i=1;i<=n;i++)
                                            {
                                                out.print("<option>"+i+"</option>");
                                            }
                                        %>    
                                    </select><br/>
                                        <input type="submit" name="submit" value="Add to cart" onclick="return val()">
                                        <%
if(request.getParameter("submit")!=null)
{
    if(session.getAttribute("email")!=null)
    {
        int qty=Integer.parseInt(request.getParameter("qty"));
        int tcost=rem*qty;
       try
            {
                Class.forName("com.mysql.jdbc.Driver");
                Connection myconnection=DriverManager.getConnection("jdbc:mysql://localhost/evedb", "root", "");
                try
                {
                    String qu2="select * from addtocart where uname=? and pid=?";
                    PreparedStatement myst2=myconnection.prepareStatement(qu2);
                    myst2.setString(2, request.getParameter("pid"));
                    myst2.setString(1, session.getAttribute("email").toString());
                    ResultSet myres=myst2.executeQuery();
                    if(myres.next())
                    {
                        String qu1="update addtocart set qty=qty+?,tcost=tcost+? where uname=? and pid=?";
                        PreparedStatement myst1=myconnection.prepareStatement(qu1);
                        myst1.setString(4, request.getParameter("pid"));
                        myst1.setString(3, session.getAttribute("email").toString());
                        myst1.setInt(2, tcost);
                        myst1.setInt(1, qty);
                        
                        int row=myst1.executeUpdate();
                        if(row==1)
                        {
                            response.sendRedirect("showcart.jsp");
                        }
                    }
                    else
                    { 
                        String qu1="insert into addtocart(pid,pname,price,qty,tcost,image,uname) values(?,?,?,?,?,?,?)";
                        PreparedStatement myst1=myconnection.prepareStatement(qu1);
                        myst1.setString(1, request.getParameter("pid"));
                        myst1.setString(2, pname);
                        myst1.setInt(3, rem);
                        myst1.setInt(4, qty);
                        myst1.setInt(5,tcost);
                        myst1.setString(6, image);
                        myst1.setString(7, session.getAttribute("email").toString());
                        int row=myst1.executeUpdate();
                        if(row==1)
                        {
                            response.sendRedirect("showcart.jsp");
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
        }
        else
        {
            response.sendRedirect("login.jsp?pid="+request.getParameter("pid"));
        }
    }
                                        %>
                                </fieldset>
                        </form>
                </div>
        </div>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
<!-- new -->
       
          <%@include file="footer.jsp" %>
          <script>
              function val()
              {
                  var a=document.getElementById("qty").value;
                  if(a==0)
                  {
                      alert("Plz choose Quantity")
                      return  false;
                  }
              }
              
          </script>
    </body>
</html>
