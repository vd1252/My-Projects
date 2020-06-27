<?php
ob_start();
include("connect.php");
include('adminheader.php');
$msg="";
$reid=$_GET['sid'];
$reequery="select d.*,s.* from deal d join supplier s on d.sup_id=s.sup_id where deal_id=$reid";
$reeres=mysqli_query($con,$reequery);
$reerow=mysqli_fetch_array($reeres);
if(isset($_POST['btnsubmit']))
 { 
	 
	 $title=$_POST['deal_title'];
	 $desc=$_POST['deal_desc'];
	 $price=$_POST['deal_price'];
	 $discount=$_POST['deal_discount'];
	 $totamount=$_POST['deal_totamount'];
	 $location=$_POST['location'];
	 $profile=$_FILES['profile']['name'];
	 $profile1=$_FILES['profile1']['name'];
	 $profile2=$_FILES['profile2']['name'];
	 $catid=$_POST['deal_catid'];
	 $subcatid=$_POST['deal_subcatid'];
	 $poston=$_POST['postedon'];
	 $validity=$_POST['valid'];
	 $supid=$_POST['supid'];
	 
	 move_uploaded_file($_FILES['profile']['tmp_name'],"images/".$_FILES['profile']['name']);
	$profile="images/".$_FILES['profile']['name'];
	move_uploaded_file($_FILES['profile1']['tmp_name'],"images/".$_FILES['profile1']['name']);
	$profile1="images/".$_FILES['profile1']['name'];
	move_uploaded_file($_FILES['profile2']['tmp_name'],"images/".$_FILES['profile2']['name']);
	$profile2="images/".$_FILES['profile2']['name'];
	
	 
	 $rquery="update deal set dealtitle='$title',dealdesc='$desc',dealactualprice='$price',dealdiscount='$discount',deal_totalamount='$totamount',location='$location',dealimage_1='$profile',dealimage_2='$profile1',dealimage_3='$profile2',dealcat_id='$catid',dealsubcat_id='$subcatid',posted_on='$poston',validity='$validity',sup_id='$supid' where deal_id=$reid";
	 
	 
	 $rres=mysqli_query($con,$rquery);//true/false
	 if($rres)
	 {
		 header("location:managedeal.php");
	 }
	 else
	 {
		$msg="Error in insertion".mysqli_error($con);
	 }
 
}
?>
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
		<div class="col-md-8">
			<div class="card">
				<div class="card-header">
					<h4 class="card-title" id="basic-layout-form">Deal Form</h4>
					<a class="heading-elements-toggle"><i class="icon-ellipsis font-medium-3"></i></a>
					
				</div>
				<div class="card-body collapse in">
					<div class="card-block">
						
						<form  class="form" method="post" enctype="multipart/form-data">
						
							<div class="form-group">
									<label>Title</label>
									<input type="text" id="companyName" class="form-control" name="deal_title" value="<?php echo $reerow['dealtitle'];?>" >
								</div>
								<div class="form-group">
									<label>Description</label>
									<textarea type="text" id="companyName" class="form-control" name="deal_desc"  rows="5"><?php echo $reerow['dealdesc'];?></textarea>
								</div>
								<div class="form-group">
									<label>Actual Price</label>
									<input type="text" id="companyName" class="form-control" name="deal_price" value="<?php echo $reerow['dealactualprice'];?>" >
								</div>
								<div class="form-group">
									<label>Discount</label>
									<input type="text" id="companyName" class="form-control" name="deal_discount" value="<?php echo $reerow['dealdiscount'];?>" >
								</div>
								<div class="form-group">
									<label>Price</label>
									<input type="text" id="companyName" class="form-control" name="deal_totamount" value="<?php echo $reerow['deal_totalamount'];?>" >
								</div>
								<div class="form-group">
									<label>Location</label>
									<input type="text" id="companyName" class="form-control" name="location" value="<?php echo $reerow['location'];?>" >
								</div>
								<div class="form-group">
									<label>Image1</label>
									<label id="projectinput7" class="file center-block">
										<input type="file" name="profile">
										<span class="file-custom"></span>
									</label>
								</div>
								<div class="form-group">
									<label>Image2</label>
									<label id="projectinput7" class="file center-block">
										<input type="file" name="profile1">
										<span class="file-custom"></span>
									</label>
								</div>
								<div class="form-group">
									<label>Image3</label>
									<label id="projectinput7" class="file center-block">
										<input type="file" name="profile2">
										<span class="file-custom"></span>
									</label>
								</div>
								<div class="form-group">
									<label>Cat ID</label>
									
									<select id="companyName" class="form-control" name="deal_catid">
										  <option value="1">Food and Restaurant</option>
										  <option value="2">Beauty/Salon</option>
										  <option value="3">Health and Fitness</option>
										 
										  
										</select>
								</div>
								<div class="form-group">
									<label>Subcat ID</label>
									<select id="companyName" class="form-control" name="deal_subcatid">
										  <option value="1"  >Breakfast</option>
										  <option value="2">Buffet</option>
										  <option value="3">Club & Bars</option>
										  <option value="4" >Dinner</option>
										  <option value="5" >Elante Special</option>
										  <option value="6" >Fast Food</option>
										  <option value="7" >Lalit Chandigarh</option>
										  <option value="8" >Lunch</option>
										  <option value="9" >Beauty Services at home</option>
										  <option value="10" >Bridal</option>
										  <option value="11" >Facial</option>
										  <option value="12" >Haircut</option>
										  <option value="13" >Kurvachauth Special Offer</option>
										  <option value="14" >Manicure</option>
										  <option value="15">Rebonding & Smoothening</option>
										  <option value="16" >Waxing</option>
										  <option value="17" >Dental Care</option>
										  <option value="18">Medical Checkup</option>
										  <option value="18">Weight Loss</option>
										  <option value="18">Books and Magazine</option>
										  
										</select>
								</div>
								<div class="form-group">
									<label>Posted On</label>
									<input type="date" id="companyName" class="form-control" name="postedon" value="<?php echo $reerow['posted_on'];?>" >
								</div>
								<div class="form-group">
									<label>Validity</label>
									<input type="date" id="companyName" class="form-control" name="valid" value="<?php echo $reerow['validity'];?>" >
								</div>
								<div class="form-group">
									<label>Sup ID</label>
									<select id="companyName" class="form-control" name="supid">
										  <option value="1"  >Food & Drink Fast Food
										Wah Ji Wah Chandigarh</option>
										  <option value="2">Swag Mohali</option>
										  <option value="3">Katani Dhaba Panchkula</option>
										  <option value="4" >Wellington Cafe</option>
										  <option value="5" >Bon Nourriture Chandigarh</option>
										  <option value="6" >French Press Cafe</option>
										  <option value="7" >REGENTA Almeida</option>
										  <option value="8" >Bean Bucket Cafe at Hotel Turquoise</option>
										  <option value="9" >Sagar Ratna Mohali</option>
										  <option value="10" >Buffet Lounge (Hotel KLG)</option>
										  <option value="11" >Jukero Unisex Salon</option>
										  <option value="12" >LA Bella Mohali</option>
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
	ob_flush();
	include('adminfooter.php');
	?>
