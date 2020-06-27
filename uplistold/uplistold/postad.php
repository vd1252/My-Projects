<?php
 include('header.php');
 
 $msg="";
if(isset($_POST['btnpostad']))
{
	$title=$_POST['txttitle'];
	$price=$_POST['txtadprice'];
	$loc=$_POST['txtloc'];
	$cat_id=$_POST['ddlcat'];
	$subcat_id=$_POST['ddlsubcat'];
	$desc=$_POST['txtdesc'];
	$image1="images/".$_FILES['ad_image1']['name'];
	$image2="images/".$_FILES['ad_image2']['name'];
	$image3="images/".$_FILES['ad_image3']['name'];
	
	move_uploaded_file($_FILES['ad_image1']['tmp_name'],$image1);
	move_uploaded_file($_FILES['ad_image2']['tmp_name'],$image2);
	move_uploaded_file($_FILES['ad_image3']['tmp_name'],$image3);
	
	$posted_date=date("Y-m-d");
	$posted_by=$_SESSION['uid'];
	
	
	
	$query_post="insert into postad( ad_title, ad_catid, ad_subcatid, ad_desc, ad_image1, ad_image2, ad_image3, ad_price, ad_location, ad_postedby, ad_postedon) values ( '$title', $cat_id, $subcat_id, '$desc','$image1', '$image2','$image3', $price, '$loc', $posted_by, '$posted_date')";
	$ress=mysqli_query($con,$query_post);
	
	if($ress)
	{
		$msg="Ad Posted Successfully";
		
	}
	else
	{
		$msg= "error in registration.Please try again later".mysqli_error($con);
	}
}
?>
<script>
$(document).ready(function(){
	
	$("#ddcat").change(function(){
		
		catid=$("#ddcat").val(); //dropdown value//6
		
		$.ajax({
			url:"getsubcat.php",
			type:"POST",
			data:{
				cat_id:catid
			},
			success:function(result)
			{
				$("#ddlsubcat").html(result)
			}
			
			
		});
		
		
	});
	
	
});
</script>
	<div id="fh5co-contact">
		<div class="container">
		<form method="post" enctype="multipart/form-data">
			<div class="row">
				<h3>Post Add</h3>
				<div class="col-md-6 ">
					
					<?php
						 if($msg!="")
						 {
							 echo "<p class='alert alert-success'>$msg</p>";
						 }
						
						?>
					
						
						<div class="row form-group">
							<div class="col-md-12">
								 <label for="email">Title</label>
								<input type="text" id="email" class="form-control"  name="txttitle">
							</div>
						</div>
						<div class="row form-group">
							<div class="col-md-12">
								 <label >Description</label>
								<textarea class="form-control"  name="txtdesc" rows="5">
								</textarea>
							</div>
						</div>

						<div class="row form-group">
							<div class="col-md-12">
								 <label for="subject">Category</label>
								<select class="form-control" name="ddlcat" id="ddcat">
									<option>--Select Category</option>
									
									<?php
									 $queryc="select * from category";
									 $resc=mysqli_query($con,$queryc);
									while( $rowc=mysqli_fetch_array($resc))
									{
									?>
									
									<option value="<?php echo $rowc['cat_id'];  ?>"><?php echo $rowc['cat_name'];  ?></option>
									
									<?php
									
									}
									?>
									
									
								</select>
							</div>
						</div>
						
						<div class="row form-group">
							<div class="col-md-12">
								 <label for="subject">SubCategory</label>
								<select class="form-control" name="ddlsubcat" id="ddlsubcat">
									<option>--Select SubCategory</option>
									
							
								</select>
							</div>
						</div>

						
						<div class="form-group">
							<input type="submit" name="btnpostad" value="Post Ad" class="btn btn-primary">
						</div>
	
				</div>
				<div class="col-md-6 ">
					
					
					
						<div class="row form-group">
							<div class="col-md-12">
								 <label >Ad Image1</label>
								<input type="file"  class="form-control"  name="ad_image1">
							</div>
						</div>
						<div class="row form-group">
							<div class="col-md-12">
								 <label >Ad Image2</label>
								<input type="file"  class="form-control"  name="ad_image2">
							</div>
						</div>
						<div class="row form-group">
							<div class="col-md-12">
								 <label >Ad Image3</label>
								<input type="file"  class="form-control"  name="ad_image3">
							</div>
						</div>
						<div class="row form-group">
							<div class="col-md-12">
								 <label >Ad Price</label>
								<input type="text"  class="form-control"  name="txtadprice">
							</div>
						</div>

						<div class="row form-group">
							<div class="col-md-12">
								 <label >Location</label>
								<input type="text" class="form-control" name="txtloc">
							</div>
						</div>

						
					

						
				</div>
			</div>
			</form>	
		</div>
	</div>

	<?php
	include('footer.php');
	?>


