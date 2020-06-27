<?php

ob_start();
include('connect.php');


$msg="";
session_start();
$id=$_SESSION['supplierid'];
$querypic="select * from supplier where sup_id=$id";
$respic=mysqli_query($con,$querypic);
$rowpic=mysqli_fetch_array($respic);
if(isset($_POST['btnsubmit']))
 { 
     
    $supname=$_POST['txtname']; 
   
    
    $status=$_POST['status'];
    $address=$_POST['address'];
    $phoneno=$_POST['phone-no'];
    $detail=$_POST['txtdetail'];
    $profile=$_FILES['profile']['name'];
    $time=$_POST['txttime'];
	$time1=$_POST['txttime1'];

    if (!empty($profile)) {
    move_uploaded_file($_FILES['profile']['tmp_name'],"images/".$_FILES['profile']['name']);
   $profile="images/".$_FILES['profile']['name'];
    $rquery="update supplier set sup_status='$status',start_time='$time',end_time='$time1',sup_info='$detail',sup_address='$address',sup_name='$supname',profile='$profile',sup_contact='$phoneno' where sup_id=$id";
    }
    else
    {
        $rquery="update supplier set sup_status='$status',start_time='$time',end_time='$time1',sup_info='$detail',sup_address='$address',sup_name='$supname',sup_contact='$phoneno' where sup_id=$id";
    }
     $rres=mysqli_query($con,$rquery);//true/false
     if($rres)
     {
         $msg="Data Uploaded Successfully";
     }
     else
     {
        $msg="Please Try Again".mysqli_error($con);
     }
 }
?>

<?php




if(isset($_POST['btnnsubmit']))
{  
		header("location:changepass-sup.php");
}
		
include('supplier-header.php');
?>



<script src="https://cdn.jsdelivr.net/jquery/1.12.4/jquery.min.js"></script>
<script>
   $( document ).ready( function () {
	//form validation rules
	$("#register").validate({
		rules:
		{
            txtname:"required",
            address:"required",
            txtdetail:"required",
            txttime:"required",
			txtemail:{
				
            },
            status:{
				required:true,
				minlength:1,
                maxlength:10,
                number: true
			},
			txtpass:{
				required:true,
				minlength:8,
			},
			phoneno:{
            required:true,
            minlength:10,
            maxlength:10,
            number: true
            },
		},
		messages:
		{
            txtname:"Please enter your name",
            txttime:"Please enter time in this format 11:00 AM To 11:00 PM",
            address:"Please enter your address:",
			txtemail:{
				 required:"Please enter email id",
				Email:"Please enter valid email address",
				},
			txtpass:{
				required:"Please enter Password",
				minlength:"Password must be 8 characters long",
			},
			phoneno:{
			
				required: "Please enter Contact No",
				minlength:"Contact no must be 10 digit long"
				
			} ,
		},
	});
  });
   </script>









    <div class="global-wrap">


       


        <!-- //////////////////////////////////
	//////////////PAGE CONTENT///////////// 
	////////////////////////////////////-->



        <div class="container">
            <div class="row">
                <div class="col-md-3">
                    <aside class="sidebar-left">
                        <ul class="nav nav-pills nav-stacked nav-arrow">
                            <li class="active"><a href="supplier-setting.php">My Profile</a>
                            </li>
							<li class=""><a href="changepass-sup.php">Change Password</a>
                            </li>
							<li class=""><a href="dealadd.php">Add Deal</a>
                            </li>
							<li class=""><a href="viewad.php">My Posted Deals</a>
                            </li>
							<li class=""><a href="supplier-logout.php">Logout</a>
                            </li>
                           
                        </ul>
                    </aside>
                </div>
                <div class="col-md-9">
                    <div class="row">
                        <div class="col-md-6">
                            <form method="post" id="register" enctype="multipart/form-data" action="">
                            <div id="profile-div" class="form-group">
                            <label>Profile Photo</label>
                            <img  id="profile-photo" src="<?php echo $rowpic['profile']; ?>"/>
                            <input id="reg-photo" type="file" class="form-control" name="profile">
                        </div>
                            <div class="form-group">
                    <label>Supplier Name</label>
                    <input type="text" value="<?php echo $rowpic['sup_name']; ?>" class="form-control" name="txtname">
                </div>
                
                <div class="form-group">
                    <label> E-mail</label>
                    <input type="text" value="<?php echo $rowpic['sup_email']; ?>" class="form-control" name="txtemail" disabled>
                </div>
                <div class="form-group">

                <div class="form-group">
											<label for="projectinput5">Status</label>
											<select id="projectinput5" name="status" class="form-control">
												<option value="1">Enable</option>
												<option value="0">Disable</option>	
											</select>
										</div>
                   
                </div>
                <div class="form-group">
                    <label>Address</label> 
                    <input type="text" value="<?php echo $rowpic['sup_address']; ?>" class="form-control" name="address">
                </div>
                <div class="form-group">
                    <label>Detail</label> 
                    <input type="text" value="<?php echo $rowpic['sup_info']; ?>" class="form-control" name="txtdetail">
                </div>
                <div class="form-group">
									<label>Start Time</label>
									<input type="time" id="companyName" class="form-control" name="txttime" value="<?php echo $rowpic['start_time'];?>" >
								</div>
								<div class="form-group">
									<label>End Time</label>
									<input type="time" id="companyName" class="form-control" name="txttime1" value="<?php echo $rowpic['end_time'];?>" >
								</div>
                
                <div class="row">
                    <div class="col-md-8">
                        <div class="form-group">
                            <label>Contact No</label>
                            <input  type="text" value="<?php echo $rowpic['sup_contact']; ?>" class="form-control" name="phone-no">
                        </div>
                    </div>
                  
                </div>
                               
                                
                                <input type="submit" value="Save Changes" class="btn btn-primary" name="btnsubmit">
                            </form>
                           
                            <?php
                        if($msg!="")
                        {
                            echo "<p class='alert alert-success'>$msg</p>";
                        }
                        
                        ?>
                        </div>
                    </div>
                    <div class="gap"></div>
                </div>
            </div>

        </div>


        <!-- //////////////////////////////////
	//////////////END PAGE CONTENT///////// 
	////////////////////////////////////-->



      
</body>

</html>

<?php
ob_flush();
include('footer.php')

?>