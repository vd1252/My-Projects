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
						<button class="w3view-cart" type="submit" name="submit" value=""><i class="fa fa-cart-arrow-down" aria-hidden="true"></i></button>
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
				<h1><a href="index.html">super Market</a></h1>
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
									<li class="active"><a href="admin.jsp" class="act">Home</a></li>	
									<!-- Mega Menu -->
									<li class="dropdown">
										<a href="#" class="dropdown-toggle" data-toggle="dropdown">Add<b class="caret"></b></a>
										<ul class="dropdown-menu multi-column columns-3">
											<div class="row">
												<div class="multi-gd-img">
													<ul class="multi-column-dropdown">
														<h6>Add</h6>
														<li><a href="addcategory.jsp">Add Category</a></li>
														<li><a href="addsubcategory.jsp">Add Subcategory</a></li>
														<li><a href="addproduct.jsp">Add Product</a></li>
														
													</ul>
												</div>	
												
											</div>
										</ul>
									</li>
									<li class="dropdown">
										<a href="#" class="dropdown-toggle" data-toggle="dropdown">Manage<b class="caret"></b></a>
										<ul class="dropdown-menu multi-column columns-3">
											<div class="row">
												<div class="multi-gd-img">
													<ul class="multi-column-dropdown">
														<h6>Manage</h6>
														<li><a href="mcategory.jsp">Manage Category</a></li>
														<li><a href="msubcat.jsp">Manage Subcategory</a></li>
														<li><a href="mproduct.jsp">Manage Product</a></li>
														
													</ul>
												</div>
												
												
											</div>
										</ul>
									</li>
									<li class="dropdown">
										<a href="#" class="dropdown-toggle" data-toggle="dropdown">View<b class="caret"></b></a>
										<ul class="dropdown-menu multi-column columns-3">
											<div class="row">
												<div class="multi-gd-img">
													<ul class="multi-column-dropdown">
														<h6>Baby Care</h6>
														<li><a href="personalcare.html">View Member</a></li>
														<li><a href="personalcare.html">View Contact</a></li>
														<li><a href="personalcare.html">View Stocks</a></li>
														<li><a href="personalcare.html">View Feedback</a></li>
														<li><a href="vieworder.jsp">View Order</a></li>
													</ul>
												</div>
												
											</div>
										</ul>
									</li>
									
								</ul>
							</div>
							</nav>
			</div>
		</div>
		