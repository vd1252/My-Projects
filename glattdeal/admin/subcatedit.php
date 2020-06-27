<?php
ob_start();
include('connect.php');
include('adminheader.php');
$catmsg1="";
$dealid1=$_GET['subid'];
$adequery1="select * from subcategory where dealsubcat_id=$dealid1";
$aderes1=mysqli_query($con,$adequery1);
$aderow1=mysqli_fetch_array($aderes1);
if(isset($_POST['btnsubmit']))
 { 
    $name1=$_POST['txtcatname'];
	$desc1=$_POST['txtcatdesc'];
	$status1=$_POST['ddlstatus'];
	$dealscatid=$_POST['categoryid'];
	$imgpath1="images/".$_FILES['file1']['name'];
	move_uploaded_file($_FILES['file1']['tmp_name'],"../user/images/".$_FILES['file1']['name']);
	$queryupd1="update subcategory set subcat_name='$name1',subcat_description='$desc1',catimage='$imgpath1',catstatus='$status1',dealcat_id='$dealscatid' where dealsubcat_id=$dealid1";
	 
	$resupd1=mysqli_query($con,$queryupd1);
	if($resupd1)
	{
		header("location:basictable.php");
	}
	else
	{
		$catmsg1="Error while updating data please try again";
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
        <div class="content-header row">
          <div class="content-header-left col-md-6 col-xs-12 mb-1">
            
          </div>
          <div class="content-header-right breadcrumbs-right breadcrumbs-top col-md-6 col-xs-12">
            <div class="breadcrumb-wrapper col-xs-12">
              <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="welcome.php">Home</a>
                </li>
              </ol>
            </div>
          </div>
        </div>
        <div class="content-body"><!-- Basic form layout section start -->
<section id="basic-form-layouts">
	<div class="row match-height">
		<div class="col-md-6">
			<div class="card">
				<div class="card-header">
					<h4 class="card-title" id="basic-layout-form">SubCategory Form</h4>
					<a class="heading-elements-toggle"><i class="icon-ellipsis font-medium-3"></i></a>
					<div class="heading-elements">
						<ul class="list-inline mb-0">
							<li><a data-action="collapse"><i class="icon-minus4"></i></a></li>
							<li><a data-action="reload"><i class="icon-reload"></i></a></li>
							<li><a data-action="expand"><i class="icon-expand2"></i></a></li>
							<li><a data-action="close"><i class="icon-cross2"></i></a></li>
						</ul>
					</div>
				</div>
				<div class="card-body collapse in">
					<div class="card-block">
						
						<form class="form" method="post" enctype="multipart/form-data">
						<?php 
				if($catmsg1!="")
				{
				echo "<p class='alert alert-success'>$catmsg1</p>"; 
				}
				?>
								
								<div class="form-group">
									<label>Sub Category</label>
									<input type="text" id="companyName" class="form-control" name="txtcatname" value="<?php echo $aderow1['subcat_name'];?>" >
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
										<input type="file" name="file1">
										<span class="file-custom"></span>
									</label>
								</div>
								<div class="form-group">
									<label>Description</label>
									<textarea id="projectinput8" rows="5" class="form-control"  name="txtcatdesc" value="<?php echo $aderow1['subcat_description'];?>"> </textarea>
								</div>
								<div class="form-group">
									<label>Category ID</label>
									<select id="companyName" class="form-control" name="categoryid"">
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
	ob_flush();
	?>
