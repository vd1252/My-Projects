<?php
ob_start();
 include('header.php');
 
 $msg="";
if(isset($_POST['btnsignup']))
{
	$email=$_POST['txtemail'];
	$pass=$_POST['txtpass'];
	$phoneno=$_POST['txtphone'];
	$query_reg="insert into register(email_id,password,phoneno) values('$email','$pass','$phoneno')";
	$res=mysqli_query($con,$query_reg);
	if($res)
	{
		header("location:login.php");
		
	}
	else
	{
		$msg= "error in registration.Please try again later".mysqli_error($con);
	}
}
?>

	<div id="fh5co-contact">
		<div class="container">
			<div class="row">
				<div class="col-md-5 col-md-push-1 animate-box">
					
					<div class="fh5co-contact-info">
						<h3>Contact Information</h3>
						<ul>
							<li class="address">198 West 21th Street, <br> Suite 721 New York NY 10016</li>
							<li class="phone"><a href="tel://1234567920">+ 1235 2355 98</a></li>
							<li class="email"><a href="mailto:info@yoursite.com">info@yoursite.com</a></li>
							<li class="url"><a href="http://gettemplates.co">gettemplates.co</a></li>
						</ul>
					</div>

				</div>
				<div class="col-md-6 animate-box">
					<h3>Sign Up</h3>
					<?php
						 if($msg!="")
						 {
							 echo "<p class='alert alert-danger'>$msg</p>";
						 }
						
						?>
					<form method="post">
						
						<div class="row form-group">
							<div class="col-md-12">
								 <label for="email">Email</label>
								<input type="text" id="email" class="form-control"  name="txtemail">
							</div>
						</div>
						<div class="row form-group">
							<div class="col-md-12">
								 <label >Password</label>
								<input type="password"  class="form-control"  name="txtpass">
							</div>
						</div>

						<div class="row form-group">
							<div class="col-md-12">
								 <label for="subject">Phone</label>
								<input type="text" class="form-control" name="txtphone">
							</div>
						</div>

						
						<div class="form-group">
							<input type="submit" name="btnsignup" value="Sign Up" class="btn btn-primary">
						</div>

					</form>		
				</div>
			</div>
			
		</div>
	</div>

	<?php
	include('footer.php');
	ob_flush();
	?>


