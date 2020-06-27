<?php
ob_start();
include('connect.php');
$msg="";
session_start();
$id=$_SESSION['userid'];
$querypic="select * from register where reg_id=$id";
$respic=mysqli_query($con,$querypic);
$rowpic=mysqli_fetch_array($respic);
if(isset($_POST['btnsubmit']))
 { 
     
     $fname=$_POST['firstname'];
     $username=$_POST['Username'];
   
     $phoneno=$_POST['phone-no'];
     
     $profile=$_FILES['pic']['name'];
     if (!empty($profile)) 
     {
        move_uploaded_file($_FILES['pic']['tmp_name'],"images/".$_FILES['pic']['name']);
        $profile="images/".$_FILES['pic']['name'];
         $rquery="update register set username='$username',profile='$profile',phone_no='$phoneno',first_name='$fname' where reg_id=$id";
     }
     else
     {
       
         $rquery="update register set username='$username',phone_no='$phoneno',first_name='$fname' where reg_id=$id";
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
		header("location:changepass.php");
}
		

 ?>



<?php
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
                                <div class="form-group">
                                    <label for="">First Name</label>
                                    <input type="text" value="<?php echo $rowpic['first_name']; ?>" class="form-control" name="firstname">
                                </div>
								<div class="form-group">
                                    <label for="">User Name</label>
                                    <input type="text" value="<?php echo $rowpic['username']; ?>" class="form-control" name="Username">
                                </div>
                                
                                
                               
                                <div class="form-group">
                                    <label for="">E-mail</label>
                                    <input type="text" value="<?php echo $rowpic['email_id'];?>"  class="form-control" name="Email " disabled> 
                                </div>
                                <div class="form-group">
                                    <label for="">Phone Number</label>
                                    <input type="text"  value="<?php echo $rowpic['phone_no'];?>" class="form-control" name="phone-no">
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
include('footer.php')

?>