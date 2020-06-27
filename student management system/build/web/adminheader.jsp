    <script type="text/javascript">
		jQuery(document).ready(function(){
			jQuery('#demo1').skdslider({'delay':5000, 'animationSpeed': 2000,'showNextPrev':true,'showPlayButton':true,'autoSlide':true,'animationType':'fading'});
						
			jQuery('#responsive').change(function(){
			  $('#responsive_wrapper').width(jQuery(this).val());
			});
			
		});
</script>
<script src="js/jquery-1.11.1.min.js"></script>
<div class="agileits_header">
		<div class="container">
			<div class="w3l_offers">
                            <p><h2 style='color:white'>Welcome Admin</h2></p>
			</div>
			<div class="agile-login">
				<ul>
					<li><a href="smslogout.jsp">Logout</a></li>
				</ul>
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>

	<div class="logo_products">
		<div class="container">
		<div class="w3ls_logo_products_left1">
				
					<img src="images/logo.png"/>
                                       
				
			</div>
<!--			<div class="w3ls_logo_products_left">
				<h1><a href="index.html">super Market</a></h1>
			</div>-->
<!--		<div class="w3l_search">
			<form action="#" method="post">
				<input type="search" name="Search" placeholder="Search for a Product..." required="">
				<button type="submit" class="btn btn-default search" aria-label="Left Align">
					<i class="fa fa-search" aria-hidden="true"> </i>
				</button>
				<div class="clearfix"></div>
			</form>
		</div>-->
			
			<div class="clearfix"> </div>
		</div>
	</div>
<!-- //header -->

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
									<li class="active"><a href="adminpanel.jsp" class="act">Home</a></li>	
									<!-- Mega Menu -->
									<li class="dropdown">
										<a href="#" class="dropdown-toggle" data-toggle="dropdown">Food Delivery<b class="caret"></b></a>
										<ul class="dropdown-menu multi-column columns-3">
											<div class="row">
												<div class="multi-gd-img">
													<ul class="multi-column-dropdown">
														<h6>All Courses</h6>
														<li><a href="groceries.html">Food Delivery</a></li>
<!--														<li><a href="groceries.html">Electronics and Communication Engineering</a></li>
														<li><a href="groceries.html">Electrical Engineering</a></li>
														<li><a href="groceries.html">Civil Engineering</a></li>
														<li><a href="groceries.html"> Mechanical Engineering</a></li>
														<li><a href="groceries.html">Information & Technology Engineering</a></li>-->
													</ul>
												</div>	
												
											</div>
										</ul>
									</li>
									<li class="dropdown">
										<a href="#" class="dropdown-toggle" data-toggle="dropdown">List <b class="caret"></b></a>
										<ul class="dropdown-menu multi-column columns-3">
											<div class="row">
												<div class="multi-gd-img">
													<ul class="multi-column-dropdown">
														<h6>List</h6>
                                                                                                                
														<li><a href="listofcourse.jsp">List of Restaurant</a></li>
														<li><a href="listofteacher.jsp">List of Outlet</a></li>
<!--														<li><a href="listofstudent.jsp">List of Students</a></li>-->
														
													</ul>
												</div>
												
												
											</div>
										</ul>
									</li>
									<li class="dropdown">
										<a href="#" class="dropdown-toggle" data-toggle="dropdown">Update<b class="caret"></b></a>
										<ul class="dropdown-menu multi-column columns-3">
											<div class="row">
												<div class="multi-gd-img">
													<ul class="multi-column-dropdown">
														<h6>Update here</h6>
                                                                                                                <li><a href="dropupdatecourse.jsp">Update Restaurant</a></li>
														<li><a href="listofteachers.jsp">Update Outlet</a></li>
														<!--<li><a href="listofstudents.jsp">Update Students</a></li>-->
													</ul>
												</div>
												
											</div>
										</ul>
									</li>
									<li class="dropdown">
										<a href="#" class="dropdown-toggle" data-toggle="dropdown">Delete<b class="caret"></b></a>
										<ul class="dropdown-menu multi-column columns-3">
											<div class="row">
												<div class="multi-gd-img">
													<ul class="multi-column-dropdown">
														<h6>Delete Here</h6>
														<li><a href="deletecourse.jsp">Delete Restaurant</a></li>
														<li><a href="deleteteacher.jsp">Delete Outlet</a></li>
<!--														<li><a href="deletestudent.jsp">Delete </a></li>
														<li><a href="deletetimetable.jsp">Delete TimeTable</a></li>-->
													</ul>
												</div>
												
											
											</div>
										</ul>
									</li>
                                                                        <li class="dropdown">
										<a href="#" class="dropdown-toggle" data-toggle="dropdown">Add <b class="caret"></b></a>
										<ul class="dropdown-menu multi-column columns-3">
											<div class="row">
												<div class="multi-gd-img">
													<ul class="multi-column-dropdown">
														<h6>Add here</h6>
                                                                                                                
														<li><a href="addcourse.jsp">Add Restaurant</a></li>
														<li><a href="addteacher.jsp">Add Outlet</a></li>
<!--														<li><a href="addstudent.jsp">Add Students</a></li>
														<li><a href="mycatpage.jsp">Add Category</a></li>-->
													</ul>
												</div>
												
												
											</div>
										</ul>
									</li>
<!--									<li class="dropdown">
										<a href="#" class="dropdown-toggle" data-toggle="dropdown">Beverages<b class="caret"></b></a>
										<ul class="dropdown-menu multi-column columns-3">
											<div class="row">
												<div class="multi-gd-img">
													<ul class="multi-column-dropdown">
														<h6>Tea & Coeffe</h6>
														<li><a href="beverages.html">Green Tea</a></li>
														<li><a href="beverages.html">Ground Coffee</a></li>
														<li><a href="beverages.html">Herbal Tea</a></li>
														<li><a href="beverages.html">Instant Coffee</a></li>
														<li><a href="beverages.html"> Tea </a></li>
														<li><a href="beverages.html">Tea Bags</a></li>
													</ul>
												</div>
							
											</div>
										</ul>
									</li>-->
<!--									<li><a href="gourmet.html">Gourmet</a></li>
									<li><a href="offers.html">Offers</a></li>
									<li><a href="contact.html">Contact</a></li>-->
								</ul>
							</div>
							</nav>
			</div><script src="js/bootstrap.min.js"></script>

<!-- top-header and slider -->
<!-- here stars scrolling icon -->
	<script type="text/javascript">
		$(document).ready(function() {
			/*
				var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
				};
			*/
								
			$().UItoTop({ easingType: 'easeOutQuart' });
								
			});
	</script>
<!-- //here ends scrolling icon -->
<script src="js/minicart.min.js"></script>
<script>
	// Mini Cart
	paypal.minicart.render({
		action: '#'
	});

	if (~window.location.search.indexOf('reset=true')) {
		paypal.minicart.reset();
	}
</script>
<!-- main slider-banner -->
<script src="js/skdslider.min.js"></script>
<link href="css/skdslider.css" rel="stylesheet">
<script type="text/javascript">
		jQuery(document).ready(function(){
			jQuery('#demo1').skdslider({'delay':5000, 'animationSpeed': 2000,'showNextPrev':true,'showPlayButton':true,'autoSlide':true,'animationType':'fading'});
						
			jQuery('#responsive').change(function(){
			  $('#responsive_wrapper').width(jQuery(this).val());
			});
			
		});
</script>
		</div>
		