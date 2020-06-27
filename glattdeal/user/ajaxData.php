<?php
//Include the database configuration file
include 'connect.php';

if(!empty($_POST["dealcat_id"])){
    //Fetch all state data
    $query = $con->query("SELECT * FROM subcategory WHERE dealcat_id = ".$_POST['dealcat_id']." AND subcat_status = 1 ORDER BY subcat_name ASC");
    
    //Count total number of rows
    $rowCount = $query->num_rows;
    
    //State option list
    if($rowCount > 0){
        echo '<option value="">Select Subcategory</option>';
        while($row = $query->fetch_assoc()){ 
            echo '<option value="'.$row['dealcat_id'].'">'.$row['subcat_name'].'</option>';
        }
    }else{
        echo '<option value="">Category not available</option>';
    }
}elseif(!empty($_POST["state_id"])){
    //Fetch all city data
    $query = $db->query("SELECT * FROM cities WHERE state_id = ".$_POST['state_id']." AND status = 1 ORDER BY city_name ASC");
    
    //Count total number of rows
    $rowCount = $query->num_rows;
    
}
?>