<?php
ob_start();
include('connect.php');
include('adminheader.php');
$catmsg="";
$supid=$_GET['sid'];
$adequery="select * from supplier where sup_id=$supid";
$aderes=mysqli_query($con,$adequery);
$aderow=mysqli_fetch_array($aderes);
if(isset($_POST['btnsubmit']))
 { 
    $name=$_POST['txtsupname'];
	$desc=$_POST['txtsupdesc'];
	$email=$_POST['txtemail'];
	$status=$_POST['status'];
	$address=$_POST['txtaddress'];
	$contact=$_POST['txtcontact'];
	$time=$_POST['txttime'];
	$time1=$_POST['txttime1'];
	$imgpath="images/".$_FILES['file1']['name'];
	move_uploaded_file($_FILES['file1']['tmp_name'],"../user/images/".$_FILES['file1']['name']);
	
	$queryupd="update supplier set sup_name='$name',sup_email='$email',profile='$imgpath',sup_status='$status',sup_address='$address',sup_contact='$contact',sup_info='$desc',start_time='$time',end_time='$time1' where sup_id=$supid";
	 
	$resupd=mysqli_query($con,$queryupd);
	if($resupd)
	{
		header("location:managesupp.php");
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
		<div class="col-md-8">
			<div class="card">
				<div class="card-header">
					<h4 class="card-title" id="basic-layout-form">Supplier Form</h4>
					<a class="heading-elements-toggle"><i class="icon-ellipsis font-medium-3"></i></a>
					
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
									<label>Supplier Name</label>
									<input type="text" id="companyName" class="form-control" name="txtsupname" value="<?php echo $aderow['sup_name'];?>" >
								</div>
								<div class="form-group">
									<label>Email</label>
									<input type="text" id="companyName" class="form-control" name="txtemail" value="<?php echo $aderow['sup_email'];?>" >
								</div>
								<div class="form-group">
									<label>Address</label>
									<textarea id="companyName" class="form-control" name="txtaddress"><?php echo $aderow['sup_address'];?></textarea>
								</div>
								<div class="form-group">
									<label>Contact</label>
									<input type="text" id="companyName" class="form-control" name="txtcontact" value="<?php echo $aderow['sup_contact'];?>" >
								</div>
								<div class="form-group">
									<label>Start Time</label>
									<input type="time" id="companyName" class="form-control" name="txttime" value="<?php echo $aderow['start_time'];?>" >
								</div>
								<div class="form-group">
									<label>End Time</label>
									<input type="time" id="companyName" class="form-control" name="txttime1" value="<?php echo $aderow['end_time'];?>" >
								</div>

								<div class="row">
									<div class="col-md-6">
										<div class="form-group">
											<label for="projectinput5">Status</label>
											<select id="projectinput5" name="status" class="form-control">
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
									<textarea id="projectinput8" rows="7" class="form-control"  name="txtsupdesc" placeholder="About Project"><?php echo $aderow['sup_info']; ?></textarea>
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
