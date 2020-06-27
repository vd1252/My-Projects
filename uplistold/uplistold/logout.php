<?php
 session_start();
 $_SESSION['uid']="";
  session_unset();
  session_destroy();
  header("location:login.php");

?>