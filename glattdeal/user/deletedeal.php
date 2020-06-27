<?php
include('connect.php');
$cid=$_GET['sup_id'];
$ctquery="delete from deal where deal_id=$cid";
$ctres=mysqli_query($con,$ctquery);
if($ctres)
{
	header("location:viewad.php");
	//echo "Error while";
}
else
{
	echo "Error while deleting deal.Pls Try Again".mysqli_error($con);
}
?>