<?php  
include('header.php');


?>
<style>
.fh5co-blog .blog-text 
{
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
					<h2>Search ADS</h2>
					<form method="post" class="form-inline">
						<div class="form-group">
							<input type="text" name="txtsearch" class="form-control" style="width:450px;"/>
							
						</div>
						<div class="form-group">
							<input type="submit" name="btnsearch" class="btn btn-primary" value="Search"/>
							
						</div>
					</form>
					
				</div>
			</div>
		</div>
		<div class="container-fluid">
			<div class="row row-bottom-padded-md" style="padding-bottom:40px;">
			<?php
				if(isset($_POST['btnsearch']))
				{
					$searchtext=$_POST['txtsearch'];
					$querysearch="select * from postad where ad_title like '%$searchtext%'";
					
					$res_search=mysqli_query($con,$querysearch);
				
					

					
					 while($rows=mysqli_fetch_array($res_search))
					 {
					
					?>
					
						<div class="col-md-3"  >
							<a href="detail.php?id=<?php echo $rows['ad_id']; ?>">
								<div class="case-studies-summary">
								    <img src="<?php echo $rows['ad_image1']; ?>" class="img-thumbnail" style="width:100%; height:300px;"/>
									<span class="text-primary" style="font-size:13px;"><?php echo $rows['ad_title']; ?></span>
									<span style="color:#000;font-size:13px;"><?php echo $rows['ad_location']; ?></span>
									<span style="color:#000;font-size:13px;margin-left:50px;">Rs. <?php echo $rows['ad_price']; ?></span>
									
								</div>
							</a>
						</div>
						<?php
					 }
				}
					 
						?>
						

						
						
				
			</div>
		</div>
	</div>
	
	



	
<?php  include('footer.php');?>
