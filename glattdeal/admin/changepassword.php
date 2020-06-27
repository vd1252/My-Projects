<?php 
ob_start();
//include('header.php');  
include('connect.php');  
$msg="";
 session_start();
			
			if(isset($_SESSION['userid']))
			{ 
		$id= $_SESSION['userid'];
		include('iheader.php');
			}
			else{
			 include('header.php');
			}
if(isset($_POST['btnlogin']))
{$id= $_SESSION['userid'];
	$oldpass=$_POST['txtoldpass'];
	 $newpass=$_POST['txtnewpass'];
	 $confirmpass=$_POST['txtconfirmpass'];
	
	$querypass="select * from signup where regid=$id and password='$oldpass'";
	//echo $querylogin;
	$respass=mysqli_query($con,$querypass);
	$countpass=mysqli_num_rows($respass);
	if($countpass==1)
	 {
		$querypass1="update signup set password='$newpass' where regid=$id";
		$respass1=mysqli_query($con,$querypass1);
		$msg="password updated successfully";
	 }
	 else
	 {
		 $msg= "Invalid Username/Password";
	 }
 }

?>
<div class="products">
<div class="container">
	<div class="row">
		<div  class="col-md-9 product-w3ls-right">
						
		<div class="login-page">
		<div class="container"> 
			<h3 class="w3ls-title w3ls-title1">change password</h3>  
			<div class="login-body">
				<form method="post">
				Oldpassword<div class="key">
							<i class="fa fa-lock" aria-hidden="true"></i>
							<input  type="password" value="Old Password" name="txtoldpass" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Password';}" required="">
							
							<div class="clearfix"></div>
						</div>
						Newpassword
					<div class="key">
							<i class="fa fa-lock" aria-hidden="true"></i>
							<input  type="password" value=" New Password" name="txtnewpass" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Password';}" required="">
							<div class="clearfix"></div>
						</div>
						Confirmpassword
						<div class="key">
							<i class="fa fa-lock" aria-hidden="true"></i>
							<input  type="password" value="Confirm Password" name="txtconfirmpass" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Password';}" required="">
							<div class="clearfix"></div>
						</div>
						<input type="submit" value="update" name="btnlogin">
						<p><?php echo $msg; ?></p>
					</form>
					</div>
				<div class="forg">
					
					<a href="login.php" class="forg-right">login</a>
				<div class="clearfix"></div>

				</div>
			</div>
		</div>
		</div>
		<?php include('userside.php');?>
		
	</div>
</div>
</div>
			
					

<?php include('footer.php');
ob_flush();
?>