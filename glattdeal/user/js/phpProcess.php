<?php

// retrieve data from ajax request
$first = $_POST['first'];
$second = $_POST['second'];
// this is just an example to select data between min and max
$getData = mysqli_query($con, "select *FROM deals WHERE deal_totalamount BETWEEN '$first' AND '$second'");
$data = mysqli_fetch_array($getData);
// this output will available on success ajax callback
echo json_encode($data);

?>