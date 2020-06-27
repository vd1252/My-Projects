<?php

 include('connect.php');
 session_start();
?>
<!DOCTYPE HTML>
<html>
	<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>UplistOld</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="Free HTML5 Website Template by freehtml5.co" />
	<meta name="keywords" content="free website templates, free html5, free template, free bootstrap, free website template, html5, css3, mobile first, responsive" />
	<meta name="author" content="freehtml5.co" />

	<!-- 
	//////////////////////////////////////////////////////

	FREE HTML5 TEMPLATE 
	DESIGNED & DEVELOPED by FreeHTML5.co
		
	Website: 		http://freehtml5.co/
	Email: 			info@freehtml5.co
	Twitter: 		http://twitter.com/fh5co
	Facebook: 		https://www.facebook.com/fh5co

	//////////////////////////////////////////////////////
	 -->
<script src="js/jquery.min.js"></script>
  	<!-- Facebook and Twitter integration -->
	<meta property="og:title" content=""/>
	<meta property="og:image" content=""/>
	<meta property="og:url" content=""/>
	<meta property="og:site_name" content=""/>
	<meta property="og:description" content=""/>
	<meta name="twitter:title" content="" />
	<meta name="twitter:image" content="" />
	<meta name="twitter:url" content="" />
	<meta name="twitter:card" content="" />

	<link href="https://fonts.googleapis.com/css?family=Work+Sans:300,400,500,700,800" rel="stylesheet">
	
	<!-- Animate.css -->
	<link rel="stylesheet" href="css/animate.css">
	<!-- Icomoon Icon Fonts-->
	<link rel="stylesheet" href="css/icomoon.css">
	<!-- Bootstrap  -->
	<link rel="stylesheet" href="css/bootstrap.css">

	<!-- Magnific Popup -->
	<link rel="stylesheet" href="css/magnific-popup.css">

	<!-- Owl Carousel  -->
	<link rel="stylesheet" href="css/owl.carousel.min.css">
	<link rel="stylesheet" href="css/owl.theme.default.min.css">

	<!-- Theme style  -->
	<link rel="stylesheet" href="css/style.css">

	<!-- Modernizr JS -->
	<script src="js/modernizr-2.6.2.min.js"></script>
	<!-- FOR IE9 below -->
	<!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
	<![endif]-->
<style>
.fh5co-nav .top-menu {
  
    background-color: #96dfd1;
}
</style>
	</head>
	<body>
		
	<div class="fh5co-loader"></div>
	
	<div id="page">
	<nav class="fh5co-nav" role="navigation">
		<div class="top">
			<div class="container">
				<div class="row">
					<div class="col-xs-12 text-right">
						<p class="num">
						<?php
						if(isset($_SESSION['uid']) && !empty($_SESSION['uid']))
						{
							?>
						<span style="font-size:12px;">Welcome <?php echo $_SESSION['email_id'];?></span></p>
						<?php
						}?>
						<ul class="fh5co-social">
							<li><a href="#"><i class="icon-twitter"></i></a></li>
							<li><a href="#"><i class="icon-dribbble"></i></a></li>
							<li><a href="#"><i class="icon-github"></i></a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<div class="top-menu">
			<div class="container">
				<div class="row">
					<div class="col-xs-2">
						<div id="fh5co-logo"><a href="index.php">UplistOld<span>.</span></a></div>
					</div>
					<div class="col-xs-10 text-right menu-1">
						<ul>
						<?php
						
						if(isset($_SESSION['uid']) && !empty($_SESSION['uid']))
						{
						?>
						
						
						<li><a href="postad.php">Post Ad</a></li>
						<li><a href="mypostads.php">My Ads</a></li>
						<li><a href="inbox.php">Inbox</a></li>
						<li><a href="outbox.php">Outbox</a></li>
						<li><a href="postad.php">Account Settings</a></li>
						<li><a href="logout.php">LogOut</a></li>
						
						<?php
						
						}
						else
						{
						?>
							<li><a href="index.html">Home</a></li>
							
							<li><a href="about.html">Trainer</a></li>
							
							<li class="has-dropdown">
								<a href="blog.html">Categories</a>
								<ul class="dropdown">
								<?php
								
								$qcat="select * from category";
								$rcat=mysqli_query($con,$qcat);
								while($rocat=mysqli_fetch_array($rcat))
								{
								?>
								
								
									<li><a href="adbycategory.php?catid=<?php echo$rocat['cat_id']; ?>"><?php echo$rocat['cat_name']; ?></a></li>
									
								<?php

								}
								?>								
									
								</ul>
							</li>
							<li class="active"><a href="register.php">Register</a></li>
							<li class="active"><a href="login.php">Login </a></li>
							<li class="active"><a href="searchad.php">Search </a></li>
						<?php
						
						}
						
						?>
							<!-- <li class="btn-cta"><a href="#"><span>Login</span></a></li> -->
						</ul>
					</div>
				</div>
				
			</div>
		</div>
	</nav>
	