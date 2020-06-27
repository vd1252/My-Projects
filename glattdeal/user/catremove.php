<?php
include('connect.php');
$cid=$_GET['deal_id'];
$query="delete from cart where cart_id=$cid";
$res=mysqli_query($con,$query);
if($res)
{
	header("location:cart.php");
	//echo "Error while";
}
else
{
	echo "Error while deleting product.Pls Try Again".mysqli_error($con);
}
?>