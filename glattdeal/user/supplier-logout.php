<?php

session_start();
$_SESSION['supplierid']="";
session_unset($_SESSION['supplierid']);
session_destroy();
header("location:index.php");


?>