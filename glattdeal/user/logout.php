<?php

session_start();
$_SESSION["userid"]="";
session_unset($_SESSION["userid"]);
session_destroy();
header("location:index.php");


?>