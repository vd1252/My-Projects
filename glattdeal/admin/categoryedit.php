<?php
ob_start();
include('connect.php');
include('adminheader.php');
$catmsg="";
$dealid=$_GET['sid'];
$adequery="select * from category where dealcat_id=$dealid";
$aderes=mysqli_query($con,$adequery);
$aderow=mysqli_fetch_array($aderes);
if(isset($_POST['btnsubmit']))
 { 
    $name=$_POST['txtcatname'];
	$desc=$_POST['txtcatdesc'];
	$status=$_POST['ddlstatus'];
	$imgpath="images/".$_FILES['file1']['name'];
	move_uploaded_file($_FILES['file1']['tmp_name'],"../user/images/".$_FILES['file1']['name']);
	$queryupd="update category set catname='$name',catimage='$imgpath',catdesc='$desc',catstatus='$status' where dealcat_id=$dealid";
	 
	$resupd=mysqli_query($con,$queryupd);
	if($resupd)
	{
		header("location:basictable.php");
	}
	else
	{
		$catmsg="Error while updating data please try again";
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
		<div class="col-md-6">
			<div class="card">
				<div class="card-header">
					<h4 class="card-title" id="basic-layout-form">Category Form</h4>
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
				if($catmsg!="")
				{
				echo "<p class='alert alert-success'>$catmsg</p>"; 
				}
				?>
								
								<div class="form-group">
									<label>Category Name</label>
									<input type="text" id="companyName" class="form-control" name="txtcatname" value="<?php echo $aderow['catname'];?>" >
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
									<textarea id="projectinput8" rows="5" class="form-control"  name="txtcatdesc" placeholder="About Project"><?php echo $aderow['catdesc']; ?></textarea>
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
