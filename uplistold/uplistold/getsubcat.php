<?php
include('connect.php');
$catid=$_POST['cat_id'];//6

$querysubcat="select * from subcategory where cat_id=$catid";
$ressub=mysqli_query($con,$querysubcat);
?>
<option>--Select SubCategory</option>
<?php
while($rowsub=mysqli_fetch_array($ressub))
{
?>
<option value="<?php echo $rowsub['subcat_id'];  ?>"><?php echo $rowsub['subcat_name'];  ?></option>
<?php	
	
}



?>