<?php
include('connect.php');
$ssid=$_GET['id'];
$ctquery="delete from supplier where sup_id=$ssid";
$ctres=mysqli_query($con,$ctquery);
if($ctres)
{
	header("location:managesupp.php");
	//echo "Error while";
}
else
{
	echo "Error While Deleting Supplier Please Try Again".mysqli_error($con);
}
?>