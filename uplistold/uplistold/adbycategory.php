<?php  
include('header.php');
$catid=$_GET['catid'];
?>
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
	height:130px;
	
}
#fh5co-services {
    padding: 7em 0 0em !important;
    clear: both;
	background-color:#fff !important;
}
.fh5co-blog .blog-text  h5 a
{
	color:#000 !important;
}
</style>
	

	

	<div id="fh5co-gallery">
		<div class="container">
			<div class="row">
				<div class="col-md-8 col-md-offset-2 text-center fh5co-heading animate-box">
					<h2>Search Results by Category</h2>
					
				</div>
			</div>
		</div>
		<div class="container-fluid">
			<div class="row row-bottom-padded-md" style="padding-bottom:40px;">
				
					

					<?php
					 $query_adbycat="select * from postad where ad_catid=$catid";
					 
					 $resbycat=mysqli_query($con,$query_adbycat);
					 $count=mysqli_num_rows($resbycat);
					 if($count>=1)
					 {
					 while($rowbycat=mysqli_fetch_array($resbycat))
					 {
					
					?>
					
						<div class="col-md-3"  >
							<a href="detail.php?id=<?php echo $rowbycat['ad_id']; ?>">
								<div class="case-studies-summary">
								    <img src="<?php echo $rowbycat['ad_image1']; ?>" class="img-thumbnail" style="width:100%; height:300px;"/>
									<span class="text-primary" style="font-size:13px;"><?php echo $rowbycat['ad_title']; ?></span>
									<span style="color:#000;font-size:13px;"><?php echo $rowbycat['ad_location']; ?></span>
									<span style="color:#000;font-size:13px;margin-left:50px;">Rs. <?php echo $rowbycat['ad_price']; ?></span>
									
								</div>
							</a>
						</div>
						<?php
					 }
					 }
					 else
					 {
						 echo "<h4 class='text-center alert alert-warning'>There no ads in this category</h4>";
					 }
						?>
						

						
						
				
			</div>
		</div>
	</div>
	
	



	
<?php  include('footer.php');?>
