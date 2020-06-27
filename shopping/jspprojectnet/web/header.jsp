
<%@page import="java.sql.*"%>
<%
String cookieName="uname";
Cookie cookies[]=request.getCookies();
if(cookies!=null)
{
    for(int i=0;i<=cookies.length-1;i++)
    {
        if(cookies[i].getName().equals(cookieName))
        {
            String email=cookies[i].getValue();
            try
                {
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection myconnection=DriverManager.getConnection("jdbc:mysql://localhost/evedb", "root", "");
                    try
                    {
                        String qu="select * from signup where email=?";
                        PreparedStatement myst=myconnection.prepareStatement(qu);
                        myst.setString(1, email);
                        ResultSet myres=myst.executeQuery();
                        if(myres.next())
                        {
                            String nm=myres.getString("name");
                            session.setAttribute("uname", nm);
                            session.setAttribute("email", myres.getString("email"));//unique
                            session.setAttribute("utype", myres.getString("utype"));
                        }
                        else
                        {
                            out.print("Wrong Username and password");
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
        }
    }

%>
<div class="agileits_header">
		<div class="container">
			<div class="w3l_offers">
				<p>SALE UP TO 70% OFF. USE CODE "SALE70%" . <a href="products.html">SHOP NOW</a></p>
			</div>
			<div class="agile-login">
				<ul>
                                    <%
                                        if(session.getAttribute("uname")!=null)
                                        {
                                            out.print("<li><a href='#'> Welcome "+session.getAttribute("uname")+"</a></li>");
                                           out.print("<li><a href='changepass.jsp'> Change Password</a></li>");
                                           out.print("<li><a href='signout.jsp'>Signout</a></li>");
                                        }
                                        else
                                        {
                                            out.print("<li><a href='signup.jsp'> Create Account </a></li>");
                                            out.print("<li><a href='login.jsp'>Login</a></li>");
                                            out.print("<li><a href='contactus.jsp'>Help</a></li>");
                                        }
                                    %>
					
					
					
					
				</ul>
			</div>
			<div class="product_list_header">  
					<form action="#" method="post" class="last"> 
						<input type="hidden" name="cmd" value="_cart">
						<input type="hidden" name="display" value="1">
						<button class="w3view-cart" type="submit" name="submit" value=""><i class="fa fa-cart-arrow-down" aria-hidden="true"><a href="showcart.jsp"></i></button>
					</form>  
			</div>
			<div class="clearfix"> </div>
		</div>
	</div> 
<div class="logo_products">
		<div class="container">
		<div class="w3ls_logo_products_left1">
				<ul class="phone_email">
					<li><i class="fa fa-phone" aria-hidden="true"></i>Order online or call us : (+0123) 234 567</li>
					
				</ul>
			</div>
			<div class="w3ls_logo_products_left">
				<h1><a href="index.jsp">super Market</a></h1>
			</div>
		<div class="w3l_search">
			<form action="#" method="post">
				<input type="search" name="Search" placeholder="Search for a Product..." required="">
				<button type="submit" class="btn btn-default search" aria-label="Left Align">
					<i class="fa fa-search" aria-hidden="true"> </i>
				</button>
				<div class="clearfix"></div>
			</form>
		</div>
			
			<div class="clearfix"> </div>
		</div>
	</div>
<div class="navigation-agileits">
		<div class="container">
			<nav class="navbar navbar-default">
							<!-- Brand and toggle get grouped for better mobile display -->
							<div class="navbar-header nav_2">
								<button type="button" class="navbar-toggle collapsed navbar-toggle1" data-toggle="collapse" data-target="#bs-megadropdown-tabs">
									<span class="sr-only">Toggle navigation</span>
									<span class="icon-bar"></span>
									<span class="icon-bar"></span>
									<span class="icon-bar"></span>
								</button>
							</div> 
							<div class="collapse navbar-collapse" id="bs-megadropdown-tabs">
								<ul class="nav navbar-nav">
									<li class="active"><a href="index.jsp" class="act">Home</a></li>	
									<!-- Mega Menu -->
                                                                        <%
try
{
    Class.forName("com.mysql.jdbc.Driver");
    Connection myconnection=DriverManager.getConnection("jdbc:mysql://localhost/evedb", "root", "");
    try
    {
        String qu="select * from category";
        PreparedStatement myst=myconnection.prepareStatement(qu);
        ResultSet myres=myst.executeQuery();
        if(myres.next())
        {
            do
            {
            %>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown"><% out.print(myres.getString("name"));%><b class="caret"></b></a>
                <ul class="dropdown-menu multi-column columns-3">
                        <div class="row">
                                <div class="multi-gd-img">
                                        <ul class="multi-column-dropdown">
                                                <h6><% out.print(myres.getString("name"));%></h6>
                                                <%
     try
    {
        String qu1="select * from subcategory where catid=?";
        PreparedStatement myst1=myconnection.prepareStatement(qu1);
        myst1.setString(1, myres.getString("catid"));
        ResultSet myres1=myst1.executeQuery();
        if(myres1.next())
        {
            do
            {
                                                    
            %>
            <li><a href="showuserproduct.jsp?subcatid=<% out.print(myres1.getString("subcatid"));%>"><%
                    out.print(myres1.getString("name"));
                    %></a></li>
           <%
           }while(myres1.next());
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

          
           %>                                     
                                        </ul>
                                </div>	

                        </div>
                </ul>
        </li>
            <%
            }while(myres.next());
        }
        else
        {
            out.print("Categories not available");
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
									
									
        <li><a href="gourmet.html">Gourmet</a></li>
        
</ul>
							</div>
							</nav>
			</div>
		</div>
		