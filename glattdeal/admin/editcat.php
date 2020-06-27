<?php
ob_start();
include('adminheader.php');
include('connect.php');
$id=$_GET['sid'];
$querycat="select * from  category where cat_id=$id ";
$cres=mysqli_query($con,$querycat);
$crow=mysqli_fetch_array($cres);

$msg="";
if(isset($_POST['btnsubmit']))
{
	$name=$_POST['txtcatname'];
	$desc=$_POST['txtcatdesc'];
	$status=$_POST['ddlstatus'];
	$catimgpath="images/".$_FILES['file1']['name'];
	$path="../user/images/".$_FILES['file1']['name'];
	$queryupd="update category set catname='$name',catimage='$catimgpath',catstatus=$status,catdesc='$desc' where cat_id=$id";
	
	move_uploaded_file($_FILES['file1']['tmp_name'],$path);
	$resupd=mysqli_query($con,$queryupd);
	if($resupd)
	{
		header("location:basictable.php");
	}
	else
	{
		$msg="Error while updating data.Please try again";
	}
	
}
?>

    <div class="app-content content container-fluid">
      <div class="content-wrapper">
        <div class="content-header row">
          <div class="content-header-left col-md-6 col-xs-12 mb-1">
            <h2 class="content-header-title">Basic Forms</h2>
          </div>
          <div class="content-header-right breadcrumbs-right breadcrumbs-top col-md-6 col-xs-12">
            <div class="breadcrumb-wrapper col-xs-12">
              <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="login.php">Home</a>
                </li>
                <li class="breadcrumb-item"><a href="#">Form Layouts</a>
                </li>
                <li class="breadcrumb-item active"><a href="#">Basic Forms</a>
                </li>
              </ol>
            </div>
          </div>
        </div>
        <div class="content-body"><!-- Basic form layout section start -->
<section id="basic-form-layouts">
	<div class="row match-height">
		<div class="col-md-12">
			<div class="card">
				<div class="card-header">
					<h4 class="card-title" id="basic-layout-form">Edit Category</h4>
					<a class="heading-elements-toggle"><i class="icon-ellipsis font-medium-3"></i></a>
					<div class="heading-elements">
						<ul class="list-inline mb-0">
							<li><a data-action="collapse"><i class="icon-minus4"></i></a></li>
							<li><a data-action="reload"><i class="icon-reload"></i></a></li>
							<li><a data-action="expand"><i class="icon-expand2"></i></a></li>
						
						</ul>
					</div>
				</div>
				<div class="card-body collapse in">
					<div class="card-block">
						
						<form enctype="multipart/form-data" class="form" method="post">
							<div class="form-body">
						

								<div class="form-group">
									<label for="companyName">Category Name</label>
									<input type="text" id="companyName" class="form-control" placeholder="Company Name" value="<?php echo $crow['catname']; ?>" name="txtcatname">
								</div>

								<div class="row">
									<div class="col-md-6">
										<div class="form-group">
											<label for="projectinput5">Status</label>
											<select id="projectinput5" name="ddlstatus" class="form-control">
				
				<option value="1" >Enable</option>
				<option value="0" >Disable</option>

											</select>
										</div>
									</div>

									
								</div>

								<div class="form-group">
									<label>Select Image</label>
									<label id="projectinput7" class="file center-block">
										<input type="file" name="file1" id="file">
										<span class="file-custom"></span>
									</label>
								</div>

								<div class="form-group">
									<label for="projectinput8">Category Info</label>
									<textarea id="projectinput8" rows="5" class="form-control" name="txtcatdesc" placeholder="About Project"><?php echo $crow['catdesc']; ?></textarea>
								</div>
							</div>

							<div class="form-actions">
								
								<button name="btnsubmit" type="submit" class="btn btn-primary">
									Save Category
								</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>

	
	</div>


	



</section>
<!-- // Basic form layout section end -->
        </div>
      </div>
    </div>
    <!-- ////////////////////////////////////////////////////////////////////////////-->


    <footer class="footer footer-static footer-light navbar-border">
      <p class="clearfix text-muted text-sm-center mb-0 px-2"><span class="float-md-left d-xs-block d-md-inline-block">Copyright  &copy; 2017 <a href="https://themeforest.net/user/pixinvent/portfolio?ref=pixinvent" target="_blank" class="text-bold-800 grey darken-2">PIXINVENT </a>, All rights reserved. </span><span class="float-md-right d-xs-block d-md-inline-block">Hand-crafted & Made with <i class="icon-heart5 pink"></i></span></p>
    </footer>

    <!-- BEGIN VENDOR JS-->
    <script src="app-assets/js/core/libraries/jquery.min.js" type="text/javascript"></script>
    <script src="app-assets/vendors/js/ui/tether.min.js" type="text/javascript"></script>
    <script src="app-assets/js/core/libraries/bootstrap.min.js" type="text/javascript"></script>
    <script src="app-assets/vendors/js/ui/perfect-scrollbar.jquery.min.js" type="text/javascript"></script>
    <script src="app-assets/vendors/js/ui/unison.min.js" type="text/javascript"></script>
    <script src="app-assets/vendors/js/ui/blockUI.min.js" type="text/javascript"></script>
    <script src="app-assets/vendors/js/ui/jquery.matchHeight-min.js" type="text/javascript"></script>
    <script src="app-assets/vendors/js/ui/screenfull.min.js" type="text/javascript"></script>
    <script src="app-assets/vendors/js/extensions/pace.min.js" type="text/javascript"></script>
    <!-- BEGIN VENDOR JS-->
    <!-- BEGIN PAGE VENDOR JS-->
    <!-- END PAGE VENDOR JS-->
    <!-- BEGIN alloverdeal JS-->
    <script src="app-assets/js/core/app-menu.js" type="text/javascript"></script>
    <script src="app-assets/js/core/app.js" type="text/javascript"></script>
    <!-- END alloverdeal JS-->
    <!-- BEGIN PAGE LEVEL JS-->
    <!-- END PAGE LEVEL JS-->
  </body>
</html>
<?php
ob_flush();
?>