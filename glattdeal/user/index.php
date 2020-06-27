<?php
include('connect.php');
session_start();

if(isset($_SESSION['userid'])){
    require_once("indexheaderuser.php");
}else if(isset($_SESSION['supplierid']))  {  
    require_once("indexheadersupplier.php");
}
else{
    require_once("index-header.php");
}

?>


        <!-- //////////////////////////////////
	//////////////PAGE CONTENT///////////// 
	////////////////////////////////////-->



        <div class="container">
            <div class="row">
                <div class="col-md-10 col-md-offset-1">
                    <div class="text-center">
                        <h1>Explore Best Deals in TriCity</h1>
                        <p class="text-bigger">You do not need to spend a fortune to enjoy what you love. We assure you get unbelievable deals on restaurants, spas, salons, gym, travel and more. Glattdeal has a young and dynamic team, with expertise in Technology, Marketing and Relationship Management. We believe in creating a "WOW" for our customers through the best of services. Our team is comprised of numerous professionals from many diverse backgrounds.</p>
                    </div>
                </div>
            </div>
            <div class="gap"></div>
        </div>
        <div class="bg-holder">
            <div class="bg-mask"></div>
            <div class="bg-blur" style="background-image:url(img/backgrounds/phone.jpg)"></div>
            <div class="container bg-holder-content">
                <div class="gap gap-big text-center">
                    <h1 class="mb30 text-white">Weekly Featured Items</h1>
                    <div class="row row-wrap"> 


                        <?php
                                    $queryd="select * from deal limit 4 offset 0";
                                    $resd=mysqli_query($con,$queryd);
                                    while($rowd=mysqli_fetch_array($resd))
                                    {
                                    ?>
                        <a class="col-md-3" href="product-details.php?deal_id=<?php
									echo $rowd['deal_id'];
									?>">

                            <div class="div1">
                                
                            <div id="thumb-3" class="product-thumb">

                        
               
                                <header class="product-header">
                                
                                     <img src="<?php echo $rowd['dealimage_1']; ?>" alt="Image Alternative text" title="Ana 29" />
                                 
                                </header>
                                <div class="product-inner" >
                                   


                                    <h5 class="product-title"><?php echo $rowd['dealtitle']  ?></h5>
                                   
                                    <div class="product-meta"><span class="product-time"><i class="fa fa-clock-o"></i> 6 days 10 h remaining</span>
                                        <ul class="product-price-list">
                                            <li><span class="product-price">Rs <?php echo $rowd['deal_totalamount'] ?></span>
                                            </li>
                                            <li><span class="product-old-price">Rs <?php echo $rowd['dealactualprice'] ?></span>
                                            </li>
                                            <li><span class="product-save">Save <?php echo $rowd['dealdiscount']?> </span>
                                            </li>
                                        </ul>
                                    </div>
                                    <p style=" text-transform: capitalize;" class="product-location"><i class="fa fa-map-marker"></i> <?php echo $rowd['location']?></p>
                                </div>
</div>

                            </div>
                        </a>
                    
                                <?php
                    }
                    ?>

                    </div>	<a href="deals.php" class="btn btn-white btn-lg btn-ghost">Find More</a>
                </div>
            </div>
        </div>
          




        <div class="gap"></div>
        <div class="container">
            <div class="text-center">
                <h2 class="mb30">New Deals in Your TriCity</h2>
                <div class="row row-wrap" id="masonry">


                      <?php
                                    $queryd="select * from deal limit 16 offset 0";
                                    $resd=mysqli_query($con,$queryd);
                                    while($rowd=mysqli_fetch_array($resd))
                                    {
                                    ?>
                    <a class="col-md-3 " href="product-details.php?deal_id=<?php
									echo $rowd['deal_id'];
									?>">


                    



                        <div id="thumb-2" class="product-thumb">
                            <header class="product-header">
                                 <img src="<?php echo $rowd['dealimage_1']; ?>" alt="Image Alternative text" title="cascada" />
                            </header>
                            <div class="product-inner">
                                <h5 class="product-title"><?php echo $rowd['dealtitle']  ?></h5>
                                
                                <div class="product-meta"><span class="product-time"><i class="fa fa-clock-o"></i> 8 days 46 h</span>
                                    <ul class="product-price-list">
                                        <li><span class="product-price">Rs <?php echo $rowd['deal_totalamount'] ?></span>
                                        </li>
                                        <li><span class="product-old-price">Rs <?php echo $rowd['dealactualprice'] ?></span>
                                        </li>
                                    </ul>
                                </div>
                                <p style=" text-transform: capitalize;" class="product-location"><i class="fa fa-map-marker"></i>  <?php echo $rowd['location']?></p>
                            </div>
                        </div>
                    </a>
                                  <?php
                    }
                    ?>
                   
                </div>	<a href="deals.php" class="btn btn-primary btn-ghost">Explore All New Deals</a>
            </div>
            <div class="gap"></div>
        </div>


        <!-- //////////////////////////////////
	//////////////END PAGE CONTENT///////// 
	////////////////////////////////////-->



        <!-- //////////////////////////////////
	//////////////MAIN FOOTER////////////// 
	////////////////////////////////////-->


<?php
include('footer.php')
?>

       
</body>

</html>
<?php
ob_flush();
?>