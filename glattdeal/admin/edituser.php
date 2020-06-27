<?php
ob_start();
include('connect.php');
include('adminheader.php');
$catmsg="";
$regid=$_GET['sid'];
$regequery="select * from register where reg_id=$regid";
$regeres=mysqli_query($con,$regequery);
$regerow=mysqli_fetch_array($regeres);
if(isset($_POST['btnsubmit']))
 { 
    $name=$_POST['txtname'];
	$pass=$_POST['txtpass'];
	$email=$_POST['txtemail'];
	$phone=$_POST['txtphone'];
	$fname=$_POST['txtfname'];
	$imgpath="images/".$_FILES['file1']['name'];
	move_uploaded_file($_FILES['file1']['tmp_name'],"../user/images/".$_FILES['file1']['name']);
	$queryupd="update register set username='$name',password='$pass',email_id='$email',profile='$imgpath',phone_no='$phone',first_name='$fname' where reg_id=$regid";
	 
	$resupd=mysqli_query($con,$queryupd);
	if($resupd)
	{
		header("location:manageuser.php");
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
                <li class="breadcrumb-item"><a href="login.php">Home</a>
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
					<h4 class="card-title" id="basic-layout-form">Manage Users Form</h4>
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
						
							
							<div class="form-group">
									<label>First Name</label>
									<input type="text" id="companyName" class="form-control" name="txtfname" value="<?php echo $regerow['first_name'];?>" >
								</div>
								<div class="form-group">
									<label>User Name</label>
									<input type="text" id="companyName" class="form-control" name="txtname" value="<?php echo $regerow['username'];?>" >
								</div>
								<div class="form-group">
									<label>Email</label>
									<input type="text" id="companyName" class="form-control" name="txtemail" value="<?php echo $regerow['email_id'];?>" >
								</div>
								<div class="form-group">
									<label>Password</label>
									<input type="text" id="companyName" class="form-control" name="txtpass" value="<?php echo $regerow['password'];?>" >
								</div>

								
								<div class="form-group">
								
									<label>Select File</label>
									<label id="projectinput7" class="file center-block">
										<input type="file" name="file1">
										<span class="file-custom"></span>
									</label>
								</div>
								<div class="form-group">
									<label>Contact</label>
									<input type="text" id="companyName" class="form-control" name="txtphone" value="<?php echo $regerow['phone_no'];?>" >
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
