<?php
ob_start() ;
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
$search=$_POST['txtsearch'];
$searchloc=$_POST['textsearch'];
?>


<!-- //////////////////////////////////
	//////////////PAGE CONTENT///////////// 
	////////////////////////////////////-->



        <div class="container">
            <div class="row">
                <div class="col-md-3">
                    <aside class="sidebar-left">
                    <ul class="nav nav-tabs nav-stacked nav-coupon-category">
                        <li class="active"><a href="deals.php"><i class="fa fa-ticket"></i>All</a>
                            </li>
                            <li><a href="fooddeals.php"><i class="fa fa-cutlery"></i>Food and Restaurant</a>
                            </li>
                            <li><a href="spadeals.php"><i class="fa fa-female"></i>Beauty/Salon</a>
                            </li>
                            <li><a href="healthdeals.php"><i class="fa fa-bolt"></i>Health and Fitness</a>
                            </li>
                           
                            
                           
                        </ul>
                        <div class="sidebar-box">
                            <h5>Filter By Price</h5>
                            <input type="text" id="price-slider">
                        </div>
                        <div class="sidebar-box">
                            <h5>Product Feature</h5>
                            <ul class="checkbox-list">
                                <li class="checkbox">
                                    <label>
                                        <input type="checkbox" class="i-check">On Sale</label>
                                </li>
                                <li class="checkbox">
                                    <label>
                                        <input type="checkbox" class="i-check">New</label>
                                </li>
                                <li class="checkbox">
                                    <label>
                                        <input type="checkbox" class="i-check">Ending Soon</label>
                                </li>
                                <li class="checkbox">
                                    <label>
                                        <input type="checkbox" class="i-check">High Rating</label>
                                </li>
                               
                            </ul>
                        </div>
                        <div class="sidebar-box">
                            <h5>Recent Viewed</h5>
                            <ul class="thumb-list">
                                <?php
                        
                        $dealquery="select * from deal limit 3 offset 0";
                        $dealres=mysqli_query($con,$dealquery);
                        while($dealrow=mysqli_fetch_array($dealres))
                        {
                        ?>  


                                <li>
                                    <a href="#">
                                        <img src="<?php echo $dealrow['dealimage_1'];?>" alt="Image Alternative text" title="Urbex Esch/Lux with Laney and Laaaaag" />
                                    </a>
                                    <div class="thumb-list-item-caption">
                                        <h5 class="thumb-list-item-title"><a href="dealbycategory.php"><?php
                                    echo $dealrow['dealtitle'];
                                    ?></a></h5>
                                        <p class="thumb-list-item-price">Rs <?php echo $dealrow['deal_totalamount']?></p>
                                    </div>
                                </li>
                                 <?php
                        }
                        ?>
                            </ul>
                        </div>
                        <div class="sidebar-box">
                            <h5>Popular</h5>
                            <ul class="thumb-list">
                                <?php
                        
                        $dealquery="select * from deal  limit 3 offset 3";
                        $dealres=mysqli_query($con,$dealquery);
                        while($dealrow=mysqli_fetch_array($dealres))
                        {
                        ?>  
                                <li>
                                    <a href="#">
                                        <img src="<?php echo $dealrow['dealimage_1'];?>"  alt="Image Alternative text" title="Food is Pride" />
                                    </a>
                                    <div class="thumb-list-item-caption">
                                        <h5 class="thumb-list-item-title"><a href="dealbycategory.php"><?php
                                    echo $dealrow['dealtitle'];
                                    ?></a></h5>
                                        <p class="thumb-list-item-price">Rs <?php echo $dealrow['deal_totalamount']?></p>
                                    </div>
                                </li>

                                  <?php
                        }
                        ?>
                            </ul>
                        </div>
                    </aside>
                </div>
                <div class="col-md-9">
                    <div class="row">
                        <div class="col-md-3">
                            <div class="product-sort">
                                <span class="product-sort-selected">sort by <b>Price</b></span>
                                <a href="#" class="product-sort-order fa fa-angle-down"></a>
                                <ul>
                                    <li><a href="#">sort by Name</a>
                                    </li>
                                    <li><a href="#">sort by Date</a>
                                    </li>
                                    <li><a href="#">sort by Popularity</a>
                                    </li>
                                    <li><a href="#">sort by Rating</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-md-2 col-md-offset-7">
                            <div class="product-view pull-right">
                               
                            </div>
                        </div>
                    </div>
                    <div class="row row-wrap">

                    <?php
						$dealquery="select * from deal where dealtitle like '%$search%' and location like '%$searchloc%'";
						$dealres=mysqli_query($con,$dealquery);
						while($dealrow=mysqli_fetch_array($dealres))
						{
						?>
                        <div class="col-md-4">


                            <div id="product-thumb-1" class="product-thumb">

                                <header class="product-header">
                                	<a href="product-details.php?deal_id=<?php
									echo $dealrow['deal_id'];
									?>">
                                     <img src="<?php echo $dealrow['dealimage_1'];?>" alt="" class="img-responsive">
                                            </a>
                                </header>
                                <div class="product-inner">
                                    <h5 class="product-title"><?php
									echo substr($dealrow['dealtitle'],0,25);
									?></h5>
                                    <div class="product-meta">
                                        <ul class="product-price-list">
                                            <li><span class="product-price">Rs <?php echo $dealrow['deal_totalamount']?></span>
                                            </li>
                                            <li><span class="product-old-price">Rs <?php echo $dealrow['dealactualprice'] ?></span>
                                            </li>
                                            <li><span class="product-save">Save <?php echo $dealrow['dealdiscount']?></span>
                                            </li>
                                        </ul>
                                        <ul class="product-actions-list">
                                            <li><a  class="btn btn-sm" href="cart.php"><i class="fa fa-shopping-cart"></i> To Cart</a>
                                            </li>
                                            <li><a href="product-details.php?deal_id=<?php echo $dealrow['deal_id']?>" class="btn btn-sm"><i class="fa fa-bars"></i> Details</a>
                                            </li>
                                             <p style=" text-transform: capitalize;" class="product-location"><i class="fa fa-map-marker"></i>  <?php echo $dealrow['location']?></p>
                                        </ul>
                                    </div>
                                </div>
                               
                            </div> 
                        </div>
                        <?php
						}
						?>

                        
                    </div>
                   
                    
                </div>
            </div>

        </div>


        <!-- //////////////////////////////////
	//////////////END PAGE CONTENT///////// 
	////////////////////////////////////-->














<?php

;
include('footer.php');
ob_flush();
?>