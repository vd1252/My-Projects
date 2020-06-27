<?php
ob_start();
include('connect.php');

session_start();
$id=$_SESSION['userid'];
$querypic="select * from register where reg_id=$id";
$respic=mysqli_query($con,$querypic);
$rowpic=mysqli_fetch_array($respic);
$msg11="";
if(isset($_POST['btnnsubmit']))
{  
		$old_pass=$_POST['opass'];
		$new_pass=$_POST['npass'];
		$c_pass=$_POST['cnpass'];
		
		$id=$_SESSION['userid'];
		$select="select password from register where reg_id=$id";
		$res=mysqli_query($con,$select);
		$row=mysqli_fetch_array($res);
		$dbpass=$row['password'];
		
		if($dbpass==$old_pass && $new_pass==$c_pass)
		{
				$upd="update register set password='$c_pass'   where reg_id=$id";
				mysqli_query($con,$upd);
				$msg11="password change successfully";
			
		
		}
		else
		{
			echo "<script>alert('Type correct password '); </script>";
		}
}
include('user-header.php');
?>




<script src="https://cdn.jsdelivr.net/jquery/1.12.4/jquery.min.js"></script>
    
     
    <script>
   $( document ).ready( function () {
	//form validation rules
	$("#register1").validate({
		rules:
		{
            firstname:"required",
            Username:"required",
           
			Email:{
				required:true,
				email:true,
			},
			password:{
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
            firstname:"Please enter firtsname",
            Username:"Please enter username:",
			Email:{
				 required:"Please enter email id",
				Email:"Please enter valid email address",
				},
			password:{
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
                        <li class="active"><a href="user-setting.php">My Profile</a>
                            </li>
							<li class=""><a href="changepass.php">Change Password</a>
                            </li>
							<li class=""><a href="cart.php">My Cart</a>
                            </li>
							<li class=""><a href="payment-history.php">Payment History</a>
                            </li>
							<li class=""><a href="logout.php">Logout</a>
                            </li>
                           
                        </ul>
                    </aside>
                </div>
                <div class="col-md-9">
                    <div class="row">
                        <div class="col-md-6">
                            <form method="post" id="register1"  enctype="multipart/form-data" action="">
                                 <div id="profile-div" class="form-group">
                                    <label for="">Profile Photo</label>
                                        <img  id="profile-photo" src="<?php echo $rowpic['profile']; ?>"/>
                                    <input   id="profilephoto-margin" type="file"   class="form-control" name="pic" >
                                </div>
                                <?php
                        if($msg11!="")
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
                               
                                
                                
                                <input type="submit" value="Change Password" class="btn btn-primary" name="btnnsubmit">
                            </form>
                            
                        </div>
                    </div>
                    <div class="gap"></div>
                </div>
            </div>

        </div>
</body>

</html>

<?php
include('footer.php')

?>