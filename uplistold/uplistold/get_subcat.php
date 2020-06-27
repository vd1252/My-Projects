<?php
	include 'connect.php';
	$category_id=$_POST["category_id"];
	$result = mysqli_query($con,"SELECT * FROM subcategory where cat_id=$category_id");
?>
<option value="">Select SubCategory</option>
<?php
while($row = mysqli_fetch_array($result)) {
?>
	<option value="<?php echo $row["subcat_id"];?>"><?php echo $row["subcat_name"];?></option>
<?php
}
?>