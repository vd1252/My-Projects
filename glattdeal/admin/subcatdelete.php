<?php
include('connect.php');
$subid=$_GET['catids'];
$subcatquery="delete from subcategory where dealsubcat_id=$subid";
$subcatres=mysqli_query($con,$subcatquery);
if($subcatres)
{
	header("location:subcattable.php");
	//echo "Error while";
}
else
{
	echo "Error while deleting product.Pls Try Again".mysqli_error($con);
}
?>