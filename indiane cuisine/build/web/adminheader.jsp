<!-- banner -->
	<div class="banner1">
		<div class="header">
			<div class="container">
				<div class="logo">
					<h1><a href="index.jsp">Cuisine Indienne</a></h1>
				</div>
					<nav class="navbar navbar-default" role="navigation">
						<div class="navbar-header">
							<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
								<span class="sr-only">Toggle navigation</span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
							</button>
						</div>
						<!--/.navbar-header-->
						<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
							<ul class="nav navbar-nav">
                                                            <%
                                                    if(session.getAttribute("uname")!=null)
                                                    {
                                                        out.print("<li><a href='#'>Welcome "+session.getAttribute("uname")+"</a></li>");
                                                        //out.print("<li><a href='changepass.jsp'>Change Password</a></li>");
                                                        out.print("<li><a href='contactus.jsp'>Help</a></li>");
                                                        out.print("<li><a href='signout.jsp'>Sign out</a></li>");
                                                      
                                                    }
                                                    else
                                                    {
                                                        out.print("<li><a href='signup.jsp'> Create Account </a></li>");
                                                        out.print("<li><a href='login.jsp'>Login</a></li>");
                                                        out.print("<li><a href='contact.jsp'>Contactus</a></li>");
                                                       
                                                    }
                                                        %>  
								
							</ul>
						</div>
						<!--/.navbar-collapse-->
					</nav>
				<div class="search-box">
					<div id="sb-search" class="sb-search">
						<form>
							<input class="sb-search-input" placeholder="Enter your search term..." type="search" name="search" id="search">
							<input class="sb-search-submit" type="submit" value="">
							<span class="sb-icon-search"> </span>
							</form>
					</div>
				</div>
					<div class="clearfix"> </div>

				<!-- search-scripts -->
					<script src="js/classie.js"></script>
					<script src="js/uisearch.js"></script>
					<script>
						new UISearch( document.getElementById( 'sb-search' ) );
					</script>
				<!-- //search-scripts -->

			</div>
		</div>
	</div>		
		<!-- banner -->
<!-- navvbar 2--> 

		<div class="header">
                    
			<div class="container">
				
					<nav class="navbar navbar-default" role="navigation">
						<div class="navbar-header">
							<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
								<span class="sr-only">Toggle navigation</span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
							</button>
						</div>
						<!--/.navbar-collapse-->
						<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
							<ul class="nav navbar-nav">
                                                            <li class="active"><a href="admin.jsp">Home</a></li>
                                                            <li class="dropdown">
                                                              <a class="dropdown-toggle" data-toggle="dropdown" href="#">Add
                                                              <span class="caret"></span></a>
                                                              <ul class="dropdown-menu">
                                                                <li><a href="addcity.jsp">Add City</a></li>
                                                                <li><a href="addlocality.jsp">Add Locality</a></li>
                                                                <li><a href="addresturant.jsp">Add Restaurant</a></li>
                                                                
                                                              </ul>
                                                            </li>
                                                            <li class="dropdown">
                                                              <a class="dropdown-toggle" data-toggle="dropdown" href="#">Manage
                                                              <span class="caret"></span></a>
                                                              <ul class="dropdown-menu">
                                                                <li><a href="managecity.jsp">Manage City</a></li>
                                                                <li><a href="managelocality.jsp">Manage Locality</a></li>
                                                                <li><a href="managerestaurant.jsp">Manage Restaurant</a></li>
                                                               
                                                              </ul>
                                                            </li>  
                                                            <li class="dropdown">
                                                              <a class="dropdown-toggle" data-toggle="dropdown" href="#">View                                       <span class="caret"></span></a>
                                                              <ul class="dropdown-menu">
                                                                <li><a href="listofmembers.jsp">List Of Members</a></li>
                                                                <li><a href="listofresturantowners.jsp">List of Restaurant Owners</a></li>
                                                                <li><a href="orderhistoryadmin.jsp">View orders</a></li>
                                                                 <li><a href="#">View Feedbacks</a></li>
                                                                  <li><a href="listofcontactus.jsp">View Contact Us Details</a></li>
                                                                  
                                                               
                                                              </ul>
                                                            </li>  
                                                          </ul>
						</div>
						<!--/.navbar-collapse-->
					</nav>
				<div class="search-box">
					<div id="sb-search" class="sb-search">
						<form>
							<input class="sb-search-input" placeholder="Enter your search term..." type="search" name="search" id="search">
							<input class="sb-search-submit" type="submit" value="">
							<span class="sb-icon-search"> </span>
							</form>
					</div>
				</div>
					<div class="clearfix"> </div>

                                 <!-- search-scripts -->
					<script src="js/classie.js"></script>
					<script src="js/uisearch.js"></script>
					<script>
						new UISearch( document.getElementById( 'sb-search' ) );
					</script>
				<!-- //search-scripts -->

			</div>
		</div>
	</div>		
<!-- navigation2 -->
		
                                                <!--
 <div class="navigation-agileits">
		<div class="container">
			<nav class="navbar navbar-default">
							 Brand and toggle get grouped for better mobile display 
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
                                                                    <li class="active"><a href="admin.jsp" class="act"><b>Home</b></a></li>	
									 Mega Menu 
									<li class="dropdown">
                                                                            <a href="#" class="dropdown-toggle" data-toggle="dropdown"><b>Add</b><b class="caret"></b></a>
										<ul class="dropdown-menu multi-column columns-3">
											<div class="row">
												<div class="multi-gd-img">
													<ul class="multi-column-dropdown">
                                                                                                            <h6><b>Add</b></h6>
														<li><a href="addcategory.jsp">Add city</a></li>
														<li><a href="addsubcategory.jsp">Add resturant</a></li>
														<li><a href="addproduct.jsp">Add menu</a></li>
														
													</ul>
												</div>	
												
											</div>
										</ul>
									</li>
									<li class="dropdown">
                                                                            <a href="#" class="dropdown-toggle" data-toggle="dropdown"><b>Manage</b><b class="caret"></b></a>
										<ul class="dropdown-menu multi-column columns-3">
											<div class="row">
												<div class="multi-gd-img">
													<ul class="multi-column-dropdown">
                                                                                                            <h6><b>Manage</b></h6>
														<li><a href="managecategory.jsp">Manage city</a></li>
														<li><a href="managesubcat.jsp">Manage resturant</a></li>
														<li><a href="manageproduct.jsp">Manage menu</a></li>
														
													</ul>
												</div>
												
												
											</div>
										</ul>
									</li>
									<li class="dropdown">
                                                                            <a href="#" class="dropdown-toggle" data-toggle="dropdown"><b>View</b><b class="caret"></b></a>
										<ul class="dropdown-menu multi-column columns-3">
											<div class="row">
												<div class="multi-gd-img">
													<ul class="multi-column-dropdown">
                                                                                                            <h6><b>Baby Care</b></h6>
														<li><a href="list_memb.jsp">View Member</a></li>
														<li><a href="personalcare.html">View Contact</a></li>
														<li><a href="personalcare.html">View Stocks</a></li>
														<li><a href="personalcare.html">View Feedback</a></li>
														
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
		
 //navigation 
    </body>
</html>
                                   
	
	 //banner -->