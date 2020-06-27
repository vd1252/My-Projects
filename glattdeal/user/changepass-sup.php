<?php
ob_start();
include('connect.php');
$msg="";
session_start();
$id=$_SESSION['supplierid'];
if(isset($_POST['btnnsubmit']))
{  
		$old_pass=$_POST['opass'];
		$new_pass=$_POST['npass'];
		$c_pass=$_POST['cnpass'];
		
		$id=$_SESSION['supplierid'];
		$select="select sup_password from supplier where sup_id=$id";
		$res=mysqli_query($con,$select);
		$row=mysqli_fetch_array($res);
		$dbpass=$row['sup_password'];
		
		if($dbpass==$old_pass && $new_pass==$c_pass)
		{
				$upd="update supplier set sup_password='$c_pass' where sup_id=$id";
				mysqli_query($con,$upd);
				$msg="Password Change Successfully";
			
		
		}
		else
		{
			echo "<script>alert('Your old password is wrong'); </script>";
		}
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
				required:true,
				email:true,
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
                             <?php
                        if($msg!="")
                        {
                            echo "<p class='alert alert-success'>$msg11</p>";
                        }
                        
                        ?>
						<div class="form-group">
							<label>Old Password</label>
							<input type="password" value="" class="form-control" name="opass">
						</div>
						<div class="form-group">
							<label>New Password</label>
							<input type="password" value="" class="form-control" name="npass">
						</div>
						<div class="form-group">
							  <label>Confirm Password</label>
							   <input type="password" value="" class="form-control" name="cnpass">
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