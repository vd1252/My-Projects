<?php
include('connect.php');
$rid=$_GET['id'];
$ctquery="delete from review where review_id=$rid";
$ctres=mysqli_query($con,$ctquery);
if($ctres)
{
	header("location:managerev.php");
	//echo "Error while";
}
else
{
	echo "Error While Deleting Supplier Please Try Again".mysqli_error($con);
}
?>