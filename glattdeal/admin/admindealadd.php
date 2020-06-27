<?php
ob_start();
include('connect.php');
include('adminheader.php');
$msg4="";

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
	 
	 move_uploaded_file($_FILES['profile']['tmp_name'],"../user/images/".$_FILES['profile']['name']);
	$profile="../user/images/".$_FILES['profile']['name'];
	move_uploaded_file($_FILES['profile1']['tmp_name'],"../user/images/".$_FILES['profile1']['name']);
	$profile1="../user/images/".$_FILES['profile1']['name'];
	move_uploaded_file($_FILES['profile2']['tmp_name'],"../user/images/".$_FILES['profile2']['name']);
	$profile2="../user/images/".$_FILES['profile2']['name'];
	
	 
	 $rquery="insert into deal(dealtitle,dealdesc,dealactualprice,dealdiscount,deal_totalamount,location,dealimage_1,dealimage_2,dealimage_3,dealcat_id,dealsubcat_id,posted_on,validity,sup_id) values('$title','$desc','$price','$discount','$totamount','$location','$profile','$profile1','$profile2',$catid,$subcatid,'$poston','$validity','$supid')";
	 
	 
	 $rres=mysqli_query($con,$rquery);//true/false
	 if($rres)
	 {
		 $msg="Data inserted Successfully";
	 }
	 else
	 {
		$msg="Error in insertion".mysqli_error($con);
	 }
 
}
?>
<style>
button{
	margin-left:220px;
}
</style>



<script src=" app-assets/js/core/libraries/jquery.min.js" type="text/javascript"></script>

<script>
   $( document ).ready( function () {
	//form validation rules
	$("#editdeal").validate({
		rules:
		{
            deal_title:"required",
						deal_desc:"required",
						location:"required",
						profile:"required",
						profile1:"required",
						profile2:"required",
						deal_catid:"required",
						deal_subcatid:"required",
						postedon:"required",
					valid:"required",
						supid:"required",
           
			deal_price:{
				required:true,
				minlength:1,
				number: true,
			},
			deal_discount:{
				required:true,
				minlength:1,
				number: true,
			},
			deal_totamount:{
				required:true,
				minlength:1,
				number: true
            },
		},
		
	});
  });
	 </script>


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
					<h4 class="card-title" id="basic-layout-form">Deal Add Form</h4>
					<a class="heading-elements-toggle"><i class="icon-ellipsis font-medium-3"></i></a>
					<div class="heading-elements">
						
					</div>
				</div>
				<div class="card-body collapse in">
					<div class="card-block">
						
						<form id="editdeal" class="form" method="post" enctype="multipart/form-data">
						<?php 
				if($msg4!="")
				{
				echo "<p class='alert alert-success'>$msg4</p>"; 
				}
				?>
								<div class="form-group"> 
Title <input type="text" class="form-control" name="deal_title"/>
</div>
<div class="form-group"> 
Description<textarea class="form-control" name="deal_desc" rows="5">
</textarea>
</div>
<div class="form-group"> 
Price<input type="text" class="form-control" name="deal_price"/>
</div>
<div class="form-group"> 
Discount<input type="text" class="form-control" name="deal_discount"/>
</div>
<div class="form-group"> 
Total Amount<input type="text" class="form-control" name="deal_totamount"/>
</div>
<div class="form-group"> 
Location<input type="text" class="form-control" name="location"/>
</div>

<div class="form-group"> 
<input type="file"  class="form-control" name="profile"/>
</div>
<div class="form-group"> 
<input type="file"  class="form-control" name="profile1"/>
</div>
<div class="form-group"> 
<input type="file" class="form-control" name="profile2"/>
</div>
<div class="form-group"> 
Category Id
<select class="form-control"  name="deal_catid">
  <option value="1">Food and Restaurant</option>
  <option value="2">Beauty/Salon</option>
  <option value="3">Health and Fitness</option>
  <option value="4">Entertainment</option>
  <option value="5">Shoes</option>
  <option value="6">Electronics</option>
  
</select>
</div>
<div class="form-group"> 
Sub Category Id <select class="form-control" name="deal_subcatid">
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
<div class="form-group"> 
Posted On<input type="date" class="form-control" name="postedon"/>
</div>
Validity<input type="date" class="form-control" name="valid"/>
</div>
<div class="form-group"> 
Supplier ID
<select class="form-control" name="supid">
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
							<div class="form-actions">
								
								<button type="submit" name="btnsubmit" class="btn btn-primary">ADD
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
