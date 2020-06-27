<?php
include('connect.php');

session_start();

if(isset($_SESSION['userid'])){
    require_once("user-header.php");
}else if(isset($_SESSION['supplierid']))  {  
    require_once("supplier-header.php");
}
else{
    require_once("header.php");
}


?>




<!DOCTYPE HTML>
<html>


<link rel="stylesheet" href="css/font_awesome.css">
<body>


    <div class="global-wrap">





        <!-- //////////////////////////////////
	//////////////PAGE CONTENT///////////// 
	////////////////////////////////////-->



        <div class="container">
            <div class="row row-wrap">
                <div class="col-md-2">
                <iframe src="https://www.google.com/maps/embed?pb=!1m16!1m12!1m3!1d54893.505769554!2d76.69027726803738!3d30.694661902396675!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!2m1!1smoh+ali!5e0!3m2!1sen!2sin!4v1555747174718!5m2!1sen!2sin" width="1150" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>
                </div>
               
                <div class="col-md-12">
                    <h5>Contact Info</h5>
                
                  <b>  <ul class="list">
                        <li><i class="fa fa-map-marker"></i>&nbsp; Location: Phase-8, Mohali</li>
                        <li><i class="fa fa-phone"></i>&nbsp; Phone:+91-8968-029-707</li>
                        <li><i class="fa fa-envelope"></i>&nbsp; E-mail: <a href="#">allovedeal12@gmail.com</a>
                        </li>
                    </ul></b>
                    <p> <br>We always try to reach our customers as soon as possible. The standard response time is 24 Hours.</p>

                </div>
            </div>
            <div class="gap gap-small"></div>
        </div>


        <!-- //////////////////////////////////
	//////////////END PAGE CONTENT///////// 
	////////////////////////////////////-->



       
</body>

</html>

<?php

include('footer.php');
?>