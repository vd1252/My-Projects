<?php
include('connect.php');
include('adminheader.php');
$msg4="";
if(isset($_POST['btnsubmit']))
 { 
    $name=$_POST['txtcatname'];
	$desc=$_POST['txtcatdesc'];
	$status=$_POST['ddlstatus'];
	$dealid=$_POST['dealsid'];
	move_uploaded_file($_FILES['profile']['tmp_name'],"../user/images/".$_FILES['profile']['name']);
	$profile="images/".$_FILES['profile']['name'];
$catquery="insert into subcategory(subcat_name,subcat_description,subcat_image,subcat_status,dealcat_id) values('$name','$desc','$profile','$status','$dealid')";
	 
	 
	 $catres=mysqli_query($con,$catquery);//true/false
	 if($catres)
	 {
		 $msg4="SubCategory Added Successfully";
	 }
	 else
	 {
		$msg4="Error in insertion".mysqli_error($con);
	 }
 }
?>
<style>
button{
	margin-left:220px;
}
</style>
    <div class="app-content content container-fluid">
      <div class="content-wrapper">
       
        <div class="content-body"><!-- Basic form layout section start -->
<section id="basic-form-layouts">
	<div class="row match-height">
		<div class="col-md-8">
			<div class="card">
				<div class="card-header">
					<h4 class="card-title" id="basic-layout-form">Add SubCategory </h4>
					<a class="heading-elements-toggle"><i class="icon-ellipsis font-medium-3"></i></a>
					
				</div>
				<div class="card-body collapse in">
					<div class="card-block">
						
						<form class="form" method="post" enctype="multipart/form-data">
						<?php 
				if($msg4!="")
				{
				echo "<p class='alert alert-success'>$msg4</p>"; 
				}
				?>
								<div class="form-group">
									<label>SubCategory </label>
									<input type="text" id="companyName" class="form-control" name="txtcatname">
								</div>

								<div class="row">
									<div class="col-md-6">
										<div class="form-group">
											<label for="projectinput5">Status</label>
											<select id="projectinput5" name="ddlstatus" class="form-control">
												<option value="1">Enable</option>
												<option value="0">Disable</option>	
											</select>
										</div>
									</div>
									<div class="col-md-6">	
									</div>
								</div>
								<div class="form-group">
								
									<label>Select File</label>
									<label id="projectinput7" class="file center-block">
										<input type="file" name="profile">
										<span class="file-custom"></span>
									</label>
								</div>
								<div class="form-group">
									<label>Description</label>
									<textarea id="projectinput8" rows="5" class="form-control"  name="txtcatdesc" 
									></textarea>
								</div>
								<div class="form-group">
									<label>Deal Subcat ID</label>
									<select id="projectinput8" rows="5" class="form-control"  name="dealsid">
										  <option value="1">Food and Restaurant</option>
										  <option value="2">Beauty/Salon</option>
										  <option value="3">Health and Fitness</option>
										  <option value="4">Entertainment</option>
										  <option value="5">Shoes</option>
										  <option value="6">Electronics</option>
										  
									</select>
								</div>
							</div>
							
							<div class="form-actions">
								
								<button type="submit" name="btnsubmit" class="btn btn-primary">Save
								</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>

	</div>


	
        </div>
      </div>
    </div>
    <!-- ////////////////////////////////////////////////////////////////////////////-->
	<?php
	include('adminfooter.php');
	?>
