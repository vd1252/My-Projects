<?php
ob_start();
include('connect.php');
?>

?>



<!DOCTYPE HTML>
<html>

<head>

    <title>alloverdeal.com</title>
    <!-- meta info -->
    <meta content="text/html; charset=utf-8" http-equiv="Content-Type">    
    <meta name="author" content="Tsoy">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Google fonts -->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,600,700,300' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Roboto:400,100,300' rel='stylesheet' type='text/css'>
    <!-- Bootstrap styles -->
    <link rel="stylesheet" href="css/boostrap.css">
    <!-- Font Awesome styles (icons) -->
    <link rel="stylesheet" href="css/font_awesome.css">
    <!-- Main Template styles -->
    <link rel="stylesheet" href="css/styles.css">
    <!-- IE 8 Fallback -->
    <!--[if lt IE 9]>
    <link rel="stylesheet" type="text/css" href="css/ie.css" />
<![endif]-->

    <!-- Your custom styles (blank file) -->
    <link rel="stylesheet" href="css/mystyles.css">
    <link rel="shortcut icon" href="img/logos/favicon.ico" type="image/x-icon">
    <link rel="icon" href="img/logos/favicon.ico" type="image/x-icon">
    <link rel="shortcut icon" href="img/logos/favicon.ico">
    <link rel="apple-touch-icon" href="img/logos/favicon.ico">
    <link rel="apple-touch-icon" sizes="72x72" href="img/logos/favicon.ico">
    <link rel="apple-touch-icon" sizes="114x114" href="img/logos/favicon.ico">
    <link rel="apple-touch-icon" sizes="144x144" href="img/logos/favicon.ico">
    
    
    <script src="js/jquery.min.js"></script>
    
    
</head>

<body class="boxed" style="background-image: url(img/backgrounds/background.jpg); background-attachment: fixed;">


    <div class="global-wrap">


        <!-- //////////////////////////////////
    //////////////MAIN HEADER///////////// 
    ////////////////////////////////////-->
        <div class="top-main-area text-center">
            <div class="container">
                <a href="index.php" class="logo mt5">
                    <img src="img/logo-small-dark.png" alt="Image Alternative text" title="Image Title" />
                </a>
            </div>
        </div>
        <header class="main">
            <div class="container">
                <div class="row">
                    <div class="col-md-6">
                        <!-- MAIN NAVIGATION -->
                        <div class="flexnav-menu-button" id="flexnav-menu-button">Menu</div>
                        <nav>
                            <ul class="nav nav-pills flexnav" id="flexnav" data-breakpoint="800">
                                <li class="active"><a href="index.php">Home</a>
                                    <ul>
                                        
                                  
                                    </ul>
                                </li>
                                <li><a href="deals.php">Deals</a>
                                    <ul>
                                        <li><a href="deals.php">Category</a>
                                        
                                         <ul>
                                            <?php
                                        $cquery="select * from category limit 3 offset 0";
                                        $cres=mysqli_query($con,$cquery);
                                        while($crow=mysqli_fetch_array($cres))
                                        {
                                        ?>

                                                <li><a href="dealbycategory.php?catid=<?php echo $crow['dealcat_id'];?>">
                                                    <?php echo $crow['catname'];?></a>
                                                </li>
                                                <?php
                                                }
                                                ?>
                                        </ul>
                                        
                                        </li>
                                    </ul>
                                </li>
                                <li><a href="">Sub Category </a>
                                    <ul>

                                        <li><a href="">Food and Restaurant</a>
                                            <ul>
                                            <?php
                                            $queryd="select * from subcategory where dealcat_id=1";
                                            $resd=mysqli_query($con,$queryd);
                                            while($rowd=mysqli_fetch_array($resd))
                                            {
                                            ?>
                                              <li><a href="dealbysubcategory.php?subcatid=<?php echo $rowd['dealsubcat_id'];?>"><?php echo $rowd['subcat_name'];?></a>
                                                </li>
                                            <?php
                                            }
                                            ?>
                                            </ul>
                                        </li>
                                        <li><a href="">Beauty/Salon</a>
                                            <ul>
                                            <?php
                                            $queryd="select * from subcategory where dealcat_id=2";
                                            $resd=mysqli_query($con,$queryd);
                                            while($rowd=mysqli_fetch_array($resd))
                                            {
                                            ?>
                                                <li><a href="dealbysubcategory.php?subcatid=<?php echo $rowd['dealsubcat_id'];?>"><?php echo $rowd['subcat_name'];?></a>
                                                </li>
                                            <?php
                                            }
                                            ?>
                                            </ul>
                                        </li>
                                         <li><a href="">Health and Fitness</a>
                                             <ul>
                                            <?php
                                            $queryd="select * from subcategory where dealcat_id=3";
                                            $resd=mysqli_query($con,$queryd);
                                            while($rowd=mysqli_fetch_array($resd))
                                            {
                                            ?>
                                                <li><a href="dealbysubcategory.php?subcatid=<?php echo $rowd['dealsubcat_id'];?>"><?php echo $rowd['subcat_name'];?></a>
                                                </li>
                                            <?php
                                            }
                                            ?>
                                            </ul>
                                        </li>
                                       

                                    </ul>
                                </li>
                               
                               
                                <li><a href="contact.php">About Us</a>
                                 <ul>
                                      
                                        <li><a href="faq.php">Faq</a>
                                        </li>
                                     
                                        <li><a href="team.php">Team</a>
                                        </li>
                              
                                        </li>
                                        <li><a href="contact.php">Contact</a>
                                        </li>
                                          
                                    </ul>
                                </li>
                                <li><a href="supplier-setting.php">My Account</a>
                                            <ul>
                                                <li><a href="supplier-setting.php">Settings</a>
                                                </li>
                                                
                                            </ul>
                                        </li>
                                </ul>
                                </li>
                                
                                
                                
                                        
                                    </li>
                            </ul>
                        </nav>
                        <!-- END MAIN NAVIGATION -->
                    </div>
                    <div class="col-md-6">
                        <!-- LOGIN REGISTER LINKS -->
                        <ul class="login-register">
                            
                            <li><a  href="supplier-logout.php" data-effect="mfp-move-from-top"><i class="fa fa-sign-in"></i>Logout</a>
                            </li>
                            
                        </ul>
                    </div>
                </div>
            </div>
        </header>



        <!-- TOP AREA -->
        <div class="top-area">
            <div class="owl-carousel owl-slider" id="owl-carousel-slider" data-inner-pagination="true" data-white-pagination="true">
                
            <div>
                    <div class="bg-holder">
                        <img src="img/carousel/carousel-image-2.jpg" alt="Image Alternative text" title="Bridge" />
                        <div class="bg-mask"></div>
                        <div class="bg-front vert-center text-white text-center">
                            <h2 class="text-hero">Chandigarh Weekends</h2>
                            <div class="countdown countdown-big" data-countdown="Jul 30, 2014 5:30:00"></div><a class="btn btn-lg btn-ghost btn-white" href="deals.php">Save 70% Now</a>
                        </div>
                    </div>
                </div>
                <div>
                    <div class="bg-holder">
                        <img src="img/carousel/carousel-image-1.jpg" alt="Image Alternative text" title="4 Strokes of Fun" />
                        <div class="bg-mask"></div>
                        <div class="bg-front vert-center text-white text-center">
                            <h2 class="text-hero">Adrenaline Madness</h2>
                            <div class="countdown countdown-big" data-countdown="Jul 18, 2014 5:30:00"></div><a class="btn btn-lg btn-ghost btn-white" href="deals.php">Save 60% Now</a>
                        </div>
                    </div>
                </div>
                
                
                
                <div>
                    <div class="bg-holder">
                        <img src="img/carousel/carousel-image-3.jpg" alt="Image Alternative text" title="LHOTEL PORTO BAY SAO PAULO luxury suite" />
                        <div class="bg-mask"></div>
                        <div class="bg-front vert-center text-white text-center">
                            <h2 class="text-hero">Premium Spa Treatments</h2>
                            <div class="countdown countdown-big" data-countdown="Jul 16, 2014 5:30:00"></div><a class="btn btn-lg btn-ghost btn-white" href="deals.php">Save 70% Now</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- END TOP AREA -->

        <!-- SEARCH AREA -->
        <form class="search-area form-group" method="post" action="search.php">
            <div class="container">
                <div class="row">
                    <div class="col-md-8 clearfix">
                        <label><i class="fa fa-search"></i><span>I am searching for</span>
                        </label>
                        <div class="search-area-division search-area-division-input">
                            <input class="form-control" name="txtsearch" type="text" placeholder="best deals of" />
                        </div>
                    </div>
                    <div class="col-md-3 clearfix">
                        <label><i class="fa fa-map-marker"></i><span>In</span>
                        </label>
                        <div class="search-area-division search-area-division-location">
                            <input class="form-control" name="textsearch" type="text" placeholder="Location" />
                        </div>
                    </div>
                    <div class="col-md-1">
                        <button class="btn btn-block btn-white search-btn" type="submit">Search</button>
                    </div>
                </div>
            </div>
        </form>
        <!-- END SEARCH AREA -->
        <div class="gap"></div>


        <!-- //////////////////////////////////
    //////////////END MAIN HEADER////////// 
    ////////////////////////////////////-->

       
    