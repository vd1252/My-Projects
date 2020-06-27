<?php
ob_start();
 include('header.php');
 
 $msg="";
if(isset($_POST['btnsignin']))
{
	$email=$_POST['txtemail'];
	$pass=$_POST['txtpass'];
	
	$query_login="select * from register where email_id='$email' and password='$pass'";
	$res=mysqli_query($con,$query_login);
	$count=mysqli_num_rows($res);//1
	if($count==1)
	{   
		$row=mysqli_fetch_array($res);
		
		$_SESSION['uid']=$row['reg_id'];//4
		$_SESSION['email_id']=$row['email_id'];//4
		header("location:postad.php");
		
	}
	else
	{
		$msg= "Invalid Username/Password";
	}
}
?>

	<div id="fh5co-contact">
		<div class="container">
			<div class="row">
				
				<div class="col-md-6 animate-box">
					<?php
						 if($msg!="")
						 {
							 echo "<p class='alert alert-danger'>$msg</p>";
						 }
						
						?>
					<h3>Sign In</h3>
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

						
						
						<div class="form-group">
							<input type="submit" name="btnsignin" value="Login" class="btn btn-primary">
						</div>
						

					</form>		
				</div>
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
			</div>
			
		</div>
	</div>

	<?php
	include('footer.php');
	ob_flush();
	?>
