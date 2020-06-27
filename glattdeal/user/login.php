<?php
ob_start();
include('connect.php');
?>
<?php
$msg="";
if(isset($_POST['btnsubmit']))
 { 
     
     $fname=$_POST['firstname'];
     $username=$_POST['Username'];
     $password=$_POST['password'];
     $email=$_POST['Email'];
     $profile=$_FILES['profile']['name'];
     $phoneno=$_POST['phone-no'];
     move_uploaded_file($_FILES['profile']['tmp_name'],"images/".$_FILES['profile']['name']);
    $profile="images/".$_FILES['profile']['name'];
$rquery="insert into register(username,password,email_id,profile,phone_no,first_name) values('$username','$password','$email','$profile','$phoneno','$fname')";
     $rres=mysqli_query($con,$rquery);//true/false
     if($rres)
     {
         $msg="User Registered Successfully";
     }
     else
     {
        $msg="Please Registered Again".mysqli_error($con);
     }
 }
$msg1=""; 
if(isset($_POST['btnlogin']))
 { 
 $email=$_POST['txtemail'];
 $pass=$_POST['txtpass'];
 $query="select * from register where email_id='$email' and password='$pass'";
 $res=mysqli_query($con,$query);//true/false
 $count=mysqli_num_rows($res);
    if($count==1)
    {
         session_start();
         $row=mysqli_fetch_array($res);
         $_SESSION['userid']=$row['reg_id'];
         header("location:/index.php");
     }
     else
     {
        $msg1="Invalid Username/Password";
     }
 }
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
                                <li><a href="dealbycategory.php">Category</a>
                                    <ul>
                                        <li><a href="dealbycategory.php">Deals</a>
                                        
                                         <ul>
                                            <?php
                                        $cquery="select * from category limit 6 offset 0";
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
                                <li><a href="#">Sub Category </a>
                                    <ul>

                                        <li><a href="product-shop-sidebar.html">Food and Restaurant</a>
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
                                        <li><a href="product-coupon-default.html">Beauty/Salon</a>
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
                                         <li><a href="product-coupon-default.html">Health and Fitness</a>
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
                                         <li><a href="product-coupon-default.html">Entertainment</a>
                                             <ul>
                                            <?php
                                            $queryd="select * from subcategory where dealcat_id=4";
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
                                         <li><a href="product-coupon-default.html">Shoes</a>
                                             <ul>
                                            <?php
                                            $queryd="select * from subcategory where dealcat_id=5";
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
                                         <li><a href="product-coupon-default.html">Electronics</a>
                                            <ul>
                                            <?php
                                            $queryd="select * from subcategory where dealcat_id=6";
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
                               
                               
                                <li><a href="about-us.php">About Us</a>
                                    <ul>
                                      
                                        <li><a href="faq.php">Faq</a>
                                        </li>
                                     
                                        <li><a href="team.php">Team</a>
                                        </li>
                              
                                        </li>
                                        <li><a href="contact.php">Contact</a>
                                        </li>
                                           <li><a href="about-us.php">About us</a>
                                        </li>
                                    </ul>
                                </li>
                         
                            
                            </ul>
                        </nav>
                        <!-- END MAIN NAVIGATION -->
                    </div>
                    <div class="col-md-6">
                        <!-- LOGIN REGISTER LINKS -->
                        <ul class="login-register">
                              <li ><a href="user-setting.php"><i class="fa fa-user"></i>My Account</a>
                               
                            </li>
                            <li class="shopping-cart"><a href="cart.php"><i class="fa fa-shopping-cart"></i>My Cart</a>
                                <div class="shopping-cart-box">
                                    <ul class="shopping-cart-items">
                                        <li>
                                            <a href="product-shop-sidebar.html">
                                                <img src="img/70x70.png" alt="Image Alternative text" title="AMaze" />
                                                <h5>New Glass Collection</h5><span class="shopping-cart-item-price">$150</span>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="product-shop-sidebar.html">
                                                <img src="img/70x70.png" alt="Image Alternative text" title="Gamer Chick" />
                                                <h5>Playstation Accessories</h5><span class="shopping-cart-item-price">$170</span>
                                            </a>
                                        </li>
                                    </ul>
                                    <ul class="list-inline text-center">
                                        <li><a href="cart.php"><i class="fa fa-shopping-cart"></i> View Cart</a>
                                        </li>
                                        <li><a href="checkout.php"><i class="fa fa-check-square"></i> Checkout</a>
                                        </li>
                                    </ul>
                                </div>
                            </li>
                            <li><a  href="index.php" data-effect="mfp-move-from-top"><i class="fa fa-sign-in"></i>Logout</a>
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
                            <div class="countdown countdown-big" data-countdown="Jul 30, 2014 5:30:00"></div><a class="btn btn-lg btn-ghost btn-white" href="dealbycategory.php">Save 70% Now</a>
                        </div>
                    </div>
                </div>
                <div>
                    <div class="bg-holder">
                        <img src="img/carousel/carousel-image-1.jpg" alt="Image Alternative text" title="4 Strokes of Fun" />
                        <div class="bg-mask"></div>
                        <div class="bg-front vert-center text-white text-center">
                            <h2 class="text-hero">Adrenaline Madness</h2>
                            <div class="countdown countdown-big" data-countdown="Jul 18, 2014 5:30:00"></div><a class="btn btn-lg btn-ghost btn-white" href="dealbycategory.php">Save 60% Now</a>
                        </div>
                    </div>
                </div>
                
                <div>
                    <div class="bg-holder">
                        <img src="img/carousel/carousel-image-3.jpg" alt="Image Alternative text" title="LHOTEL PORTO BAY SAO PAULO luxury suite" />
                        <div class="bg-mask"></div>
                        <div class="bg-front vert-center text-white text-center">
                            <h2 class="text-hero">Premium Spa Treatments</h2>
                            <div class="countdown countdown-big" data-countdown="Jul 16, 2014 5:30:00"></div><a class="btn btn-lg btn-ghost btn-white" href="dealbycategory.php">Save 70% Now</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- END TOP AREA -->

        <!-- SEARCH AREA -->
        <form class="search-area form-group">
            <div class="container">
                <div class="row">
                    <div class="col-md-8 clearfix">
                        <label><i class="fa fa-search"></i><span>I am searching for</span>
                        </label>
                        <div class="search-area-division search-area-division-input">
                            <input class="form-control" type="text" placeholder="Best Deals" />
                        </div>
                    </div>
                    <div class="col-md-3 clearfix">
                        <label><i class="fa fa-map-marker"></i><span>In</span>
                        </label>
                        <div class="search-area-division search-area-division-location">
                            <input class="form-control" type="text" placeholder="TriCity" />
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


        <!-- //////////////////////////////////
	//////////////PAGE CONTENT///////////// 
	////////////////////////////////////-->



        <div class="container">
            <div class="row">
                <div class="col-md-10 col-md-offset-1">
                    <div class="text-center">
                        <h1>Explore Best Deals in TriCity</h1>
                        <p class="text-bigger">You do not need to spend a fortune to enjoy what you love. We assure you get unbelievable deals on restaurants, spas, salons, gym, travel and more. Alloverdeal has a young and dynamic team, with expertise in Technology, Marketing and Relationship Management. We believe in creating a "WOW" for our customers through the best of services. Our team is comprised of numerous professionals from many diverse backgrounds.</p>
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
                        <a class="col-md-3" href="dealbycategory.php">

                            <div class="div1">
                                
                            <div class="product-thumb">

                        
               
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

                    </div>	<a href="dealbycategory.php" class="btn btn-white btn-lg btn-ghost">Find More</a>
                </div>
            </div>
        </div>
          




        <div class="gap"></div>
        <div class="container">
            <div class="text-center">
                <h2 class="mb30">New Deals in Your City</h2>
                <div class="row row-wrap" id="masonry">


                      <?php
                                    $queryd="select * from deal limit 18 offset 0";
                                    $resd=mysqli_query($con,$queryd);
                                    while($rowd=mysqli_fetch_array($resd))
                                    {
                                    ?>
                    <a class="col-md-2 col-masonry" href="dealbycategory.php">
                        <div class="product-thumb">
                            <header class="product-header">
                                 <img src="<?php echo $rowd['dealimage_1']; ?>" alt="Image Alternative text" title="cascada" />
                            </header>
                            <div class="product-inner">
                                <h5 class="product-title"><?php echo $rowd['dealtitle']  ?></h5>
                                <div class="product-desciption"><?php echo $rowd['dealdesc'] ?></div>
                                <div class="product-meta"><span class="product-time"><i class="fa fa-clock-o"></i> 8 days 46 h</span>
                                    <ul class="product-price-list">
                                        <li><span class="product-price">Rs <?php echo $rowd['deal_totalamount'] ?></span>
                                        </li>
                                        <li><span class="product-old-price">Rs <?php echo $rowd['dealactualprice'] ?></span>
                                        </li>
                                    </ul>
                                </div>
                                <p class="product-location"><i class="fa fa-map-marker"></i>  <?php echo $rowd['location']?></p>
                            </div>
                        </div>
                    </a>
                                  <?php
                    }
                    ?>
                   
                </div>	<a href="dealbycategory.php" class="btn btn-primary btn-ghost">Explore All New Deals</a>
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

        <!-- Scripts queries -->
        <script src="js/jquery.js"></script>
        <script src="js/boostrap.min.js"></script>
        <script src="js/countdown.min.js"></script>
        <script src="js/flexnav.min.js"></script>
        <script src="js/magnific.js"></script>
        <script src="js/tweet.min.js"></script>
        <script src="https://maps.googleapis.com/maps/api/js?v=3.exp&sensor=false"></script>
        <script src="js/fitvids.min.js"></script>
        <script src="js/mail.min.js"></script>
        <script src="js/ionrangeslider.js"></script>
        <script src="js/icheck.js"></script>
        <script src="js/fotorama.js"></script>
        <script src="js/card-payment.js"></script>
        <script src="js/owl-carousel.js"></script>
        <script src="js/masonry.js"></script>
        <script src="js/nicescroll.js"></script>

        <!-- Custom scripts -->
        <script src="js/custom.js"></script>
    </div>
</body>

</html>
<?php
ob_flush();
?>