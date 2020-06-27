<?php  
include('header.php');

?>

	

	<div id="fh5co-gallery">
		<div class="container">
			<div class="row">
				<div class="col-md-8 col-md-offset-2 text-center fh5co-heading animate-box">
					<h2>OutBox</h2>
					
				</div>
			</div>
		</div>
		<div class="container-fluid">
			
				<div class="row">
				<div class="col-md-8  fh5co-heading animate-box">
					

					<?php
					 $id=$_SESSION['uid'];
					 $querym="select m.*,r.* from message m join register r on m.reciever_id=r.reg_id where m.sender_id=$id";
					 
					 $resm=mysqli_query($con,$querym);
					 $count=mysqli_num_rows($resm);
					 if($count>=1)
					 {
					 while($rowm=mysqli_fetch_array($resm))
					 {
					
					?>
					<div class="row row-bottom-padded-md" style="padding-bottom:40px;">
						<div class="col-md-2"  >
							<img src="<?php echo $rowm['profile_pic'];?>"/ style="height:100px;width:100px;">
							<p style="margin-left:15px;font-size:13px;"><?php echo $rowm['fname']."".$rowm['lname'];?></p>
						</div>
						<div class="col-md-10"  >
							<h5 class="text-primary"><?php echo $rowm['subject'];?></h5>
							<p style="font-size:14px !important;padding:20px;background-color:    #E3DDDB;"><?php echo $rowm['message_detail'];?></p>
						</div>
						</div>
						<?php
					 }
					 }
					 else
					 {
						 echo "<h4 class='text-center alert alert-warning'>There no messages you have sent</h4>";
					 }
						?>
						

						
						
				
			
		</div>
		</div>
		</div>
	</div>
	
	



	
<?php  include('footer.php');?>
