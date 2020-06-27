<?php
 include('header.php');
 
?>
	<div id="fh5co-contact">
		<div class="container">
		<form method="post" enctype="multipart/form-data">
			<div class="row">
				<h3>My Posted Ads</h3>
				<div class="col-md-12">
					<table class="table table-bordered">
					<tr>
						<th>Ad</th>
						<th>Details</th>
						<th>Edit</th>
						<th>Delete</th>
					</tr>
					<?php 
					$id=$_SESSION['uid'];
					$query="select * from postad where ad_postedby=$id";
					 
					 $res=mysqli_query($con,$query);
					 $count=mysqli_num_rows($res);
					 if($count>=1)
					 {
					 while($row=mysqli_fetch_array($res))
					 {
					?>
					<tr>
						<td>
							<img src="<?php echo $row['ad_image1'];?>" style="height:200px;width:200px;"/>
						</td>
						<td>
						<h5><?php echo $row['ad_title'];?></h5>
						<p>Rs.<?php echo $row['ad_price'];?></p>
						<p class="small"><?php echo substr($row['ad_desc'],0,200);?>..</p>
						
						</td>
						<td><a href="#">edit</a></td>
						<td><a href="#">delete</a></td>
					</tr>
					<?php
					 }
					 }
					 else
					 {
						 echo "<h4 class='text-center alert alert-warning'>You havent paosted any ads yet.</h4>";
					 }
					
					?>
					</table>
				</div>
			</div>
			</form>	
		</div>
	</div>

	<?php
	include('footer.php');
	?>


