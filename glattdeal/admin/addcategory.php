<?php
ob_start();
include('connect.php');
include('adminheader.php');
$msg2="";

if(isset($_POST['btnsubmit']))
 { 
    $name=$_POST['txtcatname'];
	$desc=$_POST['txtcatdesc'];
	$status=$_POST['ddlstatus'];
	move_uploaded_file($_FILES['profile']['tmp_name'],"../user/images/".$_FILES['profile']['name']);
	$profile="images/".$_FILES['profile']['name'];
$catquery="insert into category(catname,catimage,catdesc,catstatus) values('$name','$profile','$desc','$status')";
	  
	 
	 $catres=mysqli_query($con,$catquery);//true/false
	 if($catres)
	 {
		 header("location:basictable.php");
	 }
	 else
	 {
		$msg2="Error in insertion".mysqli_error($con);
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
            <h2 class="content-header-title"></h2>
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
		<div class="col-md-8">
			<div class="card">
				<div class="card-header">
					<h4 class="card-title" id="basic-layout-form">Add Category</h4>
					<a class="heading-elements-toggle"><i class="icon-ellipsis font-medium-3"></i></a>
					
				</div>
				<div class="card-body collapse in">
					<div class="card-block">
						
						<form class="form" method="post" enctype="multipart/form-data">
				
								
								<div class="form-group">
									<label>Category </label>
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
									<textarea id="projectinput8" rows="5" class="form-control"  name="txtcatdesc" placeholder="Category Description"></textarea>
								</div>
								
								
							</div>
							
							<div class="form-actions">
								
								<button type="submit" name="btnsubmit" class="btn btn-primary  ">Save
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
	ob_flush();
	include('adminfooter.php');
	?>
