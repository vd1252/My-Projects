<?php
    $con=mysqli_connect("localhost","root","","dbuplistold");
	if(!$con)
	{
		die("error while connecting data with database".mysqli_connect_error());
	}

?>