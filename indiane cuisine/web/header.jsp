<!-- banner -->

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
					out.print("<li><a href='changepass.jsp'>Change Password</a></li>");
					out.print("<li><a href='contactus.jsp'>Help</a></li>");
                                        out.print("<li><a href='signout.jsp'>Sign out</a></li>");
                                        out.print("<li><a href='orderhistory.jsp'>View orders</a></li>");
                                        out.print("<li><a href='onlyorderfoodpage.jsp'>Order Food </a></li>");
                                    }
                                    else
                                    {
                                        out.print("<li class='active'><a href='index.jsp'>Home</a></li>");
					out.print("<li><a href='onlyorderfoodpage.jsp'>Order Food </a></li>");
					out.print("<li><a href='offers.html'>Offers</a></li>");
                                        out.print("<li><a href='signup.jsp'> Register </a></li>");
					out.print("<li><a href='login.jsp'>Login</a></li>");
					out.print("<li><a href='contact.jsp'>Contactus</a></li>");
                                        out.print("<li></li>");
                                        
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
	
	<!-- //banner -->