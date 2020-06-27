<?php
include('connect.php');
$cid=$_GET['id'];
$ctquery="delete from register where reg_id=$cid";
$ctres=mysqli_query($con,$ctquery);
if($ctres)
{
	header("location:manageuser.php");
	//echo "Error while";
}
else
{
	echo "Error while deleting product.Pls Try Again".mysqli_error($con);
}
?>