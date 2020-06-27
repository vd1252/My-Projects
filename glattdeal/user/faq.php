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



<body>


    <div class="global-wrap">


       

        <!-- //////////////////////////////////
	//////////////PAGE CONTENT///////////// 
	////////////////////////////////////-->



        <div class="container">
            <div class="row row-wrap">
                <div class="col-md-12">
                    <div class="panel-group" id="accordion">
                        <div class="panel panel-default">
                        
                            <div class="panel-heading">
                                <h4 class="panel-title"><a data-toggle="collapse" data-parent="#accordion" href="#collapse-1">What does alloverdeal.com do?</a></h4>
                            </div>
                            <div class="panel-collapse collapse in" id="collapse-1">
                                <div class="panel-body">
                                    <p>Alloverdeal offers best deals and discount coupons from top brands in the tricity. Get deals through our website. Going shopping? Don’t forget to check out our deals to save money!</p>
                                </div>
                            </div>
                        </div>
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h4 class="panel-title"><a data-toggle="collapse" data-parent="#accordion" href="#collapse-2">Where is alloverdeal.com located?</a></h4>
                            </div>
                            <div class="panel-collapse collapse" id="collapse-2">
                                <div class="panel-body">
                                    <p>Currently, alloverdeal.com is located in  Mohali. But soon, we are going to launch our services in many different cities of the country including metro cities. We keep looking for best deals for our customers. </p>
                                </div>
                            </div>
                        </div>
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h4 class="panel-title"><a data-toggle="collapse" data-parent="#accordion" href="#collapse-3">How can I purchase a deal?</a></h4>
                            </div>
                            <div class="panel-collapse collapse" id="collapse-3">
                                <div class="panel-body">
                                    <p>Click “Buy Now”,  you will then be redirected to payment option page where you can select the payment mode and make the payment. </p>
                                </div>
                            </div>
                        </div>
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h4 class="panel-title"><a data-toggle="collapse" data-parent="#accordion" href="#collapse-4">What payment modes do I have?</a></h4>
                            </div>
                            <div class="panel-collapse collapse" id="collapse-4">
                                <div class="panel-body">
                                    <p>You can make the payment through PayPal</p>
                                </div>
                            </div>
                        </div>
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h4 class="panel-title"><a data-toggle="collapse" data-parent="#accordion" href="#collapse-5">Do I need to register to buy the deal?</a></h4>
                            </div>
                            <div class="panel-collapse collapse" id="collapse-5">
                                <div class="panel-body">
                                    <p> Yes you need to register.You will need to provide few personal details such as name, email id and phone number. We ask for personal details only to ensure best customer services. </p>
                                </div>
                            </div>
                        </div>
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h4 class="panel-title"><a data-toggle="collapse" data-parent="#accordion" href="#collapse-6">Are there any terms & conditions for buying deals?</a></h4>
                            </div>
                            <div class="panel-collapse collapse" id="collapse-6">
                                <div class="panel-body">
                                    <p>Yes, you can read them under terms and conditions section. Make sure to go through them carefully.</p>
                                </div>
                            </div>
                        </div>
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h4 class="panel-title"><a data-toggle="collapse" data-parent="#accordion" href="#collapse-7"> Are there any "hidden charges"?</a></h4>
                            </div>
                            <div class="panel-collapse collapse" id="collapse-7">
                                <div class="panel-body">
                                    <p>No. There are no hidden costs and conditions. Pay for the voucher and get the best products and services at unbeatable price. </p>
                                </div>
                            </div>
                        </div>
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h4 class="panel-title"><a data-toggle="collapse" data-parent="#accordion" href="#collapse-8">Is Alloverdeal safe?</a></h4>
                            </div>
                            <div class="panel-collapse collapse" id="collapse-8">
                                <div class="panel-body">
                                    <p>Alloverdeal is 100% safe to use. At no time we save your PayPal information. The transaction is secured with Verisign SSL. </p>
                                </div>
                            </div>
                        </div>
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h4 class="panel-title"><a data-toggle="collapse" data-parent="#accordion" href="#collapse-9"> I bought a deal, but can I cancel it before the deal ends?</a></h4>
                            </div>
                            <div class="panel-collapse collapse" id="collapse-9">
                                <div class="panel-body">
                                    <p>No. You cannot cancel the deal once you brought. If you don't want it, you can always make your friend or family member happy by gifting it.</p>
                                </div>
                            </div>
                        </div>
                       
                    </div>
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