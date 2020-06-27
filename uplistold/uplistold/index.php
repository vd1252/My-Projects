<?php  include('header.php');?>
<style>
.fh5co-blog .blog-text {
    margin-bottom: 30px;
    position: relative;
    background: #fff;
    width: 100% !important;
    padding: 30px;
    float: right;
    margin-top:0 !important;
    -webkit-box-shadow: 0px 10px 20px -12px rgba(0, 0, 0, 0.18);
    -moz-box-shadow: 0px 10px 20px -12px rgba(0, 0, 0, 0.18);
    box-shadow: 0px 10px 20px -12px rgba(0, 0, 0, 0.18);
	height:150px;
	
}
#fh5co-services {
    padding: 7em 0 0em !important;
    clear: both;
	background-color:#fff !important;
}
.fh5co-blog .blog-text  h6 a
{
	color:#000 !important;
}
</style>
	<header id="fh5co-header" class="fh5co-cover" role="banner" style="background-image:url(images/img_bg_2.jpg);" data-stellar-background-ratio="0.5">
		<div class="overlay"></div>
		<div class="container">
			<div class="row">
				<div class="col-md-8 col-md-offset-2 text-center">
					<div class="display-t">
						<div class="display-tc animate-box" data-animate-effect="fadeIn">
							<h1>Make it a lifestyle, not a duty</h1>
							<h2>Free html5 templates Made by <a href="http://freehtml5.co/" target="_blank">freehtml5.co</a></h2>
							<p><a href="https://vimeo.com/channels/staffpicks/93951774" class="btn btn-primary popup-vimeo">Watch Our Video</a></p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</header>

	<div id="fh5co-services" class="fh5co-bg-section">
		<div class="container">
			<div class="row">
			<?php
			$querycat="select * from category";
			$rescat=mysqli_query($con,$querycat);
			while($rowcat=mysqli_fetch_array($rescat))
			{
			
			?>
			
				<div class="col-md-4 text-center " style="margin-bottom:100px;height:100px;">
					<div class="services">
						<a href="adbycategory.php?catid=<?php echo $rowcat['cat_id'];  ?>"><span><img class="img-responsive" src="<?php echo $rowcat['cat_image'];  ?>" alt=""></span>
						<h3><?php echo $rowcat['cat_name'];  ?></h3></a>
						
					</div>
				</div>
				<?php
				
			}
			?>
				
				
			</div>
		</div>
	</div>

   <div id="fh5co-blog" class="fh5co-bg-section">
		<div class="container">
			<div class="row">
				<div class="col-md-8 col-md-offset-2 text-center fh5co-heading ">
					<h2>Recent Ads</h2>
					<p>Dignissimos asperiores vitae velit veniam totam .</p>
				</div>
			</div>
			<div class="row row-bottom-padded-md">
			<?php
			 $query_ad="select * from postad";
			 $resad=mysqli_query($con,$query_ad);
			 while($rowad=mysqli_fetch_array($resad))
			 {
			
			?>
			
				<div class="col-lg-4 col-md-4">
					<div class="fh5co-blog ">
						<a href="detail.php?id=<?php echo $rowad['ad_id']; ?>"><img class="img-responsive img-thumbnail" src="<?php echo $rowad['ad_image1']; ?>" alt="" style="height:200px;"></a>
						<div class="blog-text">
							<h6 class="text-primary"><a href="detail.php?id=<?php echo $rowad['ad_id']; ?>"><?php echo $rowad['ad_title']; ?></a></h6>
							<p style="font-size:13px;"><span><?php echo $rowad['ad_location']; ?></span><span style="margin-left:10px;">  Rs.<?php echo $rowad['ad_price']; ?></span></p>
							
						
						</div> 
					</div>
				</div>
				
				<?php
				
			 }
			 
			 ?>
				
			</div>
		</div>
	</div>



	<div id="fh5co-gallery">
		<div class="container">
			<div class="row">
				<div class="col-md-8 col-md-offset-2 text-center fh5co-heading animate-box">
					<h2>Gym gallery</h2>
					<p>Dignissimos asperiores vitae velit veniam totam fuga molestias accusamus alias autem provident. Odit ab aliquam dolor eius.</p>
				</div>
			</div>
		</div>
		<div class="container-fluid">
			<div class="row row-bottom-padded-md">
				<div class="col-md-12">
					<ul id="fh5co-portfolio-list">

						<li class="one-third animate-box" data-animate-effect="fadeIn" style="background-image: url(images/gallery-1.jpg); ">
							<a href="#">
								<div class="case-studies-summary">
									<span>Illustration</span>
									<h2>Useful baskets</h2>
								</div>
							</a>
						</li>
						<li class="one-third animate-box" data-animate-effect="fadeIn" style="background-image: url(images/gallery-2.jpg); ">
							<a href="#">
								<div class="case-studies-summary">
									<span>Web Design</span>
									<h2>Skater man in the road</h2>
								</div>
							</a>
						</li>

						<li class="one-third animate-box" data-animate-effect="fadeIn" style="background-image: url(images/gallery-3.jpg); ">
							<a href="#">
								<div class="case-studies-summary">
									<span>Web Design</span>
									<h2>Two Glas of Juice</h2>
								</div>
							</a>
						</li>

						<li class="one-third animate-box" data-animate-effect="fadeIn" style="background-image: url(images/gallery-4.jpg); "> 
							<a href="#">
								<div class="case-studies-summary">
									<span>Web Design</span>
									<h2>Timer starts now!</h2>
								</div>
							</a>
						</li>
						<li class="one-third animate-box" data-animate-effect="fadeIn" style="background-image: url(images/gallery-3.jpg); ">
							<a href="#">
								<div class="case-studies-summary">
									<span>Web Design</span>
									<h2>Two Glas of Juice</h2>
								</div>
							</a>
						</li>
						<li class="two-third animate-box" data-animate-effect="fadeIn" style="background-image: url(images/gallery-5.jpg); ">
							<a href="#">
								<div class="case-studies-summary">
									<span>Illustration</span>
									<h2>Beautiful sunset</h2>
								</div>
							</a>
						</li>
						<li class="one-third animate-box" data-animate-effect="fadeIn" style="background-image: url(images/gallery-3.jpg); ">
							<a href="#">
								<div class="case-studies-summary">
									<span>Web Design</span>
									<h2>Two Glas of Juice</h2>
								</div>
							</a>
						</li>
					</ul>		
				</div>
			</div>
		</div>
	</div>
	
	



	
<?php  include('footer.php');?>
