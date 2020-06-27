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

<script src="https://cdn.jsdelivr.net/jquery/1.12.4/jquery.min.js"></script>
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
                        <?php
$min = 10;
$max = 300;

if (! empty($_POST['min_price'])) {
    $min = $_POST['min_price'];
}

if (! empty($_POST['max_price'])) {
    $max = $_POST['max_price'];
}

?>

<head>

<link rel="stylesheet"
    href="https://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css" />


<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>


<script type="text/javascript">
  
  $(function() {
    $( "#slider-range" ).slider({
      range: true,
      min: 0,
      max: 1000,
      values: [ <?php echo $min; ?>, <?php echo $max; ?> ],
      slide: function( event, ui ) {
        $( "#amount" ).html( "$" + ui.values[ 0 ] + " - $" + ui.values[ 1 ] );
		$( "#min" ).val(ui.values[ 0 ]);
		$( "#max" ).val(ui.values[ 1 ]);
      }
      });
    $( "#amount" ).html( "$" + $( "#slider-range" ).slider( "values", 0 ) +
     " - $" + $( "#slider-range" ).slider( "values", 1 ) );
  });
  </script>


</head>

<body>
    <h5> Price Range Search  </h5>

    <div class="form-price-range-filter">
        <form method="post" action="filterhealth.php">
            <div>
          <span class="span1"><b>  Rs</b></span><input type="" id="min" name="min_price"
                    value="<?php echo $min; ?>" >
                <div id="slider-range"></div>
              <span class="span2"> <b>Rs</b></span> <input type="" id="max" name="max_price"
                    value="<?php echo $max; ?>">
            </div>
            <div>
                <input type="submit" name="submit_range"
                    value="Filter Deal" class="btn-submit" >
            </div>
        </form>
    </div>
  

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
                            <span class="product-sort-selected">sort by&nbsp; &nbsp; </span>
                                <a href="sortbyprice.php" class="product-sort-order fa fa-angle-down"></a>
                                <ul>
                                    <li><a href="sorthealth.php">sort by Name</a>
                                    </li>
                                    <li><a href="sorthealthprice.php">sort by Price </a>
                                    </li>
                                 
                                </ul>
                            </div>
                        </div>
                        
                    </div>
                    <div class="row row-wrap">


                    	      	<?php
						
						$dealquery="select * from deal where  dealcat_id= 3 order by dealtitle asc ";
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
?>