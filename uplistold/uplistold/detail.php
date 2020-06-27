<?php 
ob_start();
 include('header.php');
$id=$_GET['id'];
$msg="";
$query_ad="select * from postad where ad_id=$id";
$resad=mysqli_query($con,$query_ad);
$rowad=mysqli_fetch_array($resad);

$catid=$rowad['ad_catid'];


if(isset($_POST['btnsend']))
{
	if(isset($_SESSION['uid']) && !empty($_SESSION['uid']))
	{
		
		$subj=$_POST['txtsub'];
		$message=$_POST['txtmessage'];
		$sender_id=$_SESSION['uid'];
		$reciver_id=$rowad['ad_postedby'];
		$posted_date=date('Y-m-d');
		$ad_id=$_GET['id'];
		$query_msg="insert into message(subject,message_detail,ad_id,sender_id,reciever_id,posted_date) values('$subj','$message',$ad_id,$sender_id,$reciver_id,'$posted_date')";
		
		$res_msg=mysqli_query($con,$query_msg);
		if($res_msg)
		{
			$msg="Message sent successfully";
		}
		else
		{
			$msg="error while sending message";
		}
		
	}
	else
	{
		header("location:login.php");
	}
	
}
?>
<style>
.fh5co-blog .blog-text {
    margin-bottom: 30px;
    position: relative;
    background: #fff;
    width: 100% !important;
    padding: 30px;
    float: right;
    margin-top:0 !important;
    -webkit-box-shadow: 0px 10px 20px -12px rgba(0, 0, 0, 0.18);
    -moz-box-shadow: 0px 10px 20px -12px rgba(0, 0, 0, 0.18);
    box-shadow: 0px 10px 20px -12px rgba(0, 0, 0, 0.18);
	height:130px;
	
}
#fh5co-services {
    padding: 7em 0 0em !important;
    clear: both;
	background-color:#fff !important;
}
.fh5co-blog .blog-text  h5 a
{
	color:#000 !important;
}
</style>
	
	

	<div id="fh5co-gallery">
		<div class="container">
			<div class="row row-bottom-padded-md">
				<div class="col-md-7">
					<img  class="img-thumbnail" src="<?php echo $rowad['ad_image1']; ?>" style="width:450px;height:400px;"/>
					<hr/>
					<img class="img-thumbnail" src="<?php echo $rowad['ad_image1']; ?>" style="width:100px;height:100px;margin-right:20px;"/>
					<img class="img-thumbnail" src="<?php echo $rowad['ad_image2']; ?>" style="width:100px;height:100px;margin-right:20px;"/>
					<img class="img-thumbnail" src="<?php echo $rowad['ad_image3']; ?>" style="width:100px;height:100px;"/>
					
				</div>
				<div class="col-md-5">
				<p>₹ <?php echo $rowad['ad_price']; ?></p>
				<h3><?php echo $rowad['ad_title']; ?></h3>
				<p><?php echo $rowad['ad_location']; ?></p>
				<div class="row">
					<div class="col-md-12">
						<form method="post">
							<div class="form-group">
								<label>Subject</label>
								<input type="text" class="form-control" name="txtsub"/>
							</div>
							<div class="form-group">
								<label>Message</label>
								<textarea class="form-control" name="txtmessage">
								</textarea>
							</div>
							<div class="form-group">
								
								<input type="submit" class="btn btn-primary" name="btnsend" value="Send Message"/>
								<?php
								if(!empty($msg))
								{
									echo "<p>$msg</p>";
								}
								?>
							</div>
						
						</form>
					</div>
					
				</div>
				</div>
				
			</div>
			<div class="row">
				<div class="col-md-12">
					<h5 style="margin-top:20px;">Description</h5>
					<p style="font-size:13px;"><?php echo $rowad['ad_desc']; ?></p>
				</div>
			</div>
		</div>
		<div class="container">
			<h4 class="text-center text-uppercase">Related ads</h4>
			<div class="row row-bottom-padded-md">
			<?php
			$relatedads="select * from postad where ad_catid=$catid and ad_id!=$id";
			$resrads=mysqli_query($con,$relatedads);
			while($rowrads=mysqli_fetch_array($resrads))
			{
			?>
				<div class="col-md-3 text-center img-thumbnail">
					<div>
						<img src="<?php echo $rowrads['ad_image1']; ?>" style="width:100%;height:270px;margin-bottom:7px;"/>
						<a href="detail.php?id=<?php echo $rowrads['ad_id']; ?>"><h5><?php echo $rowrads['ad_title']; ?></h5></a>
						<p>Rs.<?php echo $rowrads['ad_price']; ?></p>
					</div>
					
				</div>
				
				<?php
			}
			
			?>
			</div>
		</div>
	</div>
	
	



	
<?php  include('footer.php');
ob_flush();
?>
