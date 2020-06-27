<?php
ob_start();
include('connect.php');
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
         header("location:user-setting.php");
     }
     else
     {
        $msg1="Invalid Username/Password";
     }
 }
?>

<?php
$msg2=""; 
if(isset($_POST['btnnlogin']))
 { 
 $email=$_POST['textemail'];
 $pass=$_POST['textpass'];
 $query="select * from supplier where sup_email='$email' and sup_password='$pass'";
 $res=mysqli_query($con,$query);//true/false
 $count=mysqli_num_rows($res);
    if($count==1)
    {
         session_start();
         $row=mysqli_fetch_array($res);
         $_SESSION['supplierid']=$row['sup_id'];
         header("location:supplier-setting.php");
     }
     else
     {
        $msg2="Invalid Username/Password";
     }
 }
?>


<?php

$msg3="";
if(isset($_POST['btnnsubmit']))
 { 
	 
	 $supname=$_POST['txtname'];
	 $email=$_POST['txtemail'];
	 $password=$_POST['txtpass'];
	 $status=$_POST['status'];
	 $address=$_POST['address'];
	 $phoneno=$_POST['phone-no'];
     $detail=$_POST['txtdetail'];
     $profile=$_FILES['profile']['name'];
     $time=$_POST['txttime'];
     move_uploaded_file($_FILES['profile']['tmp_name'],"images/".$_FILES['profile']['name']);
    $profile="images/".$_FILES['profile']['name'];
$rquery="insert into supplier(sup_name,sup_email,sup_password,profile,sup_status,sup_address,sup_contact,sup_info,sup_timing) values('$supname','$email','$password','$profile','$status','$address','$phoneno','$detail','$time')";
	 $rres=mysqli_query($con,$rquery);//true/false
	 if($rres)
	 {
		 $msg3="Supplier Registered Successfully";
	 }
	 else
	 {
		$msg3="Please Registered Again".mysqli_error($con);
	 }
 }
?>


<!DOCTYPE HTML>
<html>

<head>
    <title>Glattdeal</title>
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

    <link rel="stylesheet"
    href="css/jquery-ui.css" />


   

    <script src="js/jquery.min.js"></script>
    
     
    <script>
   $( document ).ready( function () {
	//form validation rules
	$("#register-form").validate({
		rules:
		{
            firstname:"required",
            Username:"required",
            profile:"required",
			Email:{
				required:true,
				email:true,
			},
			password:{
				required:true,
				minlength:8,
			},
			phoneno:{
            required:true,
            minlength:10,
            maxlength:10,
            number: true
            },
		},
		messages:
		{
            firstname:"Please enter firtsname",
            Username:"Please enter username:",
			Email:{
				 required:"Please enter email id",
				Email:"Please enter valid email address",
				},
			password:{
				required:"Please enter Password",
				minlength:"Password must be 8 characters long",
			},
			phoneno:{
			
				required: "Please enter Contact No",
				minlength:"Contact no must be 10 digit long"
				
			} ,
		},
	});
  });
   </script>
   <script>
   $( document ).ready( function () {
	//form validation rules
	$("#register2-dialogsupplier").validate({
		rules:
		{
            txtname:"required",
            profile:"required",
            address:"required",
            txtdetail:"required",
            txttime:"required",
			txtemail:{
				required:true,
				email:true,
            },
            status:{
				required:true,
				minlength:1,
                maxlength:10,
                number: true
			},
			txtpass:{
				required:true,
				minlength:8,
			},
			phoneno:{
            required:true,
            minlength:10,
            maxlength:10,
            number: true
            },
		},
		messages:
		{
            txtname:"Please enter your name",
            txttime:"Please enter time in this format 11:00 AM To 11:00 PM",
            address:"Please enter your address:",
			txtemail:{
				 required:"Please enter email id",
				Email:"Please enter valid email address",
				},
			txtpass:{
				required:"Please enter Password",
				minlength:"Password must be 8 characters long",
			},
			phoneno:{
			
				required: "Please enter Contact No",
				minlength:"Contact no must be 10 digit long"
				
			} ,
		},
	});
  });
   </script>
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
                    <div class="col-md-8">
                        <!-- MAIN NAVIGATION -->
                        <div class="flexnav-menu-button" id="flexnav-menu-button">Menu</div>
                        <nav>
                            <ul class="nav nav-pills flexnav" id="flexnav" data-breakpoint="800">
                                <li class="active"><a href="index.php">Home</a>
                                   
                                </li>
                                <li><a href="deals.php">Deals</a>
                                    <ul>
                                        <li><a href="deals.php">Category</a>
                                        
                                         <ul>
                                        <?php
                                        $cquery="select * from category limit 3 offset 0;";
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
                                <li><a href="deals.php">Sub Category </a>
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
                              
                                       
                                        <li><a href="contact.php">Contact</a>
                                        </li>
                                           
                                    </ul>
                                </li>
                         
                                <li id="signup-dropdown"><a class="popup-text" href="#login-dialogsupplier" data-effect="mfp-move-from-top">Supplier Login</a>
                                 <ul> 
                                    
                                 <li><a class="popup-text" href="#register-dialogsupplier" data-effect="mfp-move-from-top"><i class="fa fa-edit"></i> Supplier Sign up</a>
                                </li>
                               
                                </ul>
                                </li>
                                <li id="signup-dropdown"> <a class="popup-text" href="#login-dialog" data-effect="mfp-move-from-top">User Login</a>
                                 <ul>
                                      
                                
                                <li><a class="popup-text" href="#register-dialog" data-effect="mfp-move-from-top"><i class="fa fa-edit"></i> User Sign up</a>
                                </li>
                                </ul>
                                </li>
                                    
                               
                            </ul>
                        </nav>
                        <!-- END MAIN NAVIGATION -->
                    </div>
                    
                </div>
            </div>
        </header>

        
 <!-- LOGIN REGISTER LINKS CONTENT -->

 <div id="login-dialog" class="mfp-with-anim mfp-hide mfp-dialog clearfix">
            <i class="fa fa-sign-in dialog-icon"></i>
            <h3>User Login</h3>
            <h5>Welcome back, friend. Login to get started</h5>
            <form method="post" enctype="multipart/form-data" class="dialog-form">
                <div class="form-group">
                    <label>E-mail</label>
                    <input type="text" placeholder="email@domain.com" class="form-control" name="txtemail">
                </div>
                <div class="form-group">
                    <label>Password</label>
                    <input type="password" placeholder="My secret password" class="form-control" name="txtpass">
                </div>
                <div class="checkbox">
                    <label>
                        <input type="checkbox">Remember me
                    </label>
                </div>
                <input type="submit" value="Sign in" class="btn btn-primary" name="btnlogin">
            </form>
            <ul class="dialog-alt-links">
                <li><a class="popup-text" href="#register-dialog" data-effect="mfp-zoom-out">Not member yet</a>
                </li>
                <li><a  href="recover-password.php"  data-effect="mfp-zoom-out">Forgot password</a>
                </li>
            </ul>
        </div>

            <?php 
                if($msg!="")
                {
                echo "<p class='alert alert-success'>$msg</p>"; 
                }
                ?>
        <div id="register-dialog" class="mfp-with-anim mfp-hide mfp-dialog clearfix">
            <i class="fa fa-edit dialog-icon"></i>
            <h3>User Register</h3>
            <h5>Ready to get best offers? Let's get started!</h5>
            <form action="" method="post" id="register-form" enctype="multipart/form-data" class="dialog-form" novalidate="novalidate">
                <div class="form-group">
                    <label>First Name</label>
                    <input type="text" placeholder="First Name" class="form-control" id="firstname" name="firstname">
                </div>
                <div class="form-group">
                    <label>Username</label>
                    <input type="text" placeholder="Username" class="form-control" name="Username">
                </div>
                <div class="form-group">
                    <label>E-mail</label>
                    <input type="text" placeholder="email@domain.com" class="form-control" name="Email">
                </div>
                <div class="form-group">
                    <label>Password</label>
                    <input type="password" placeholder="My secret password" class="form-control" name="password">
                </div>
                
                <div class="row">
                    <div class="col-md-8">
                        <div class="form-group">
                            <label>Contact No</label>
                            <input  type="text" placeholder="Contact No" class="form-control" name="phoneno">
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <label>Profile Photo</label>
                            <input id="reg-photo" type="file" class="form-control" name="profile">
                        </div>
                    </div>
                </div>
               
                <input type="submit" value="Sign up" class="btn btn-primary" name="btnsubmit">
            </form>
            <ul class="dialog-alt-links">
                <li><a class="popup-text" href="#login-dialog" data-effect="mfp-zoom-out">Already member</a>
                </li>
            </ul>
        </div>

        <div id="login-dialogsupplier" class="mfp-with-anim mfp-hide mfp-dialog clearfix">
            <i class="fa fa-sign-in dialog-icon"></i>
            <h3>Supplier Login</h3>
            <h5>Welcome back, friend. Login to get started</h5>
            <form method="post" enctype="multipart/form-data" class="dialog-form">
                <div class="form-group">
                    <label>E-mail</label>
                    <input type="text" placeholder="email@domain.com" class="form-control" name="textemail">
                </div>
                <div class="form-group">
                    <label>Password</label>
                    <input type="password" placeholder="My secret password" class="form-control" name="textpass">
                </div>
                <div class="checkbox">
                    <label>
                        <input type="checkbox">Remember me
                    </label>
                </div>
                <input type="submit" value="Sign in" class="btn btn-primary" name="btnnlogin">
            </form>
            <ul class="dialog-alt-links">
                <li><a class="popup-text" href="#register-dialogsupplier" data-effect="mfp-zoom-out">Not member yet</a>
                </li>
                <li><a  href="recover-password-sup.php"  data-effect="mfp-zoom-out">Forgot password</a>
                </li>
            </ul>
        </div>



        <?php 
                if($msg3!="")
                {
                echo "<p class='alert alert-success'>$msg3</p>"; 
                }
                ?>
        <div id="register-dialogsupplier" class="mfp-with-anim mfp-hide mfp-dialog clearfix "style="max-height: 997px !important;max-width: 483px !important;">

            <i class="fa fa-edit dialog-icon"></i>
            <h3>Supplier Register</h3>
            <h5>Ready to post best offers? Let's get started!</h5>
            <form method="post" id="register2-dialogsupplier" enctype="multipart/form-data" class="dialog-form">
                <div class="form-group">
                    <label>Supplier Name</label>
                    <input type="text" placeholder="Supplier Name" class="form-control" name="txtname">
                </div>
                
                <div class="form-group">
                    <label> E-mail</label>
                    <input type="text" placeholder="email@domain.com" class="form-control" name="txtemail">
                </div>
                <div class="form-group">
                    <label>Password</label>
                    <input type="password" placeholder="My secret password" class="form-control" name="txtpass">
                </div>
                <div class="form-group">
                    <label>Status</label>
                    <input type="text" placeholder="Status " class="form-control" name="status">
                </div>
                <div class="form-group">
                    <label>Address</label> 
                    <input type="text" placeholder="Address" class="form-control" name="address">
                </div>
                <div class="form-group">
                    <label>Detail</label> 
                    <input type="text" placeholder="Detail" class="form-control" name="txtdetail">
                </div>
                <div class="form-group">
                    <label>Timing</label> 
                    <input type="text" placeholder="Timing" class="form-control" name="txttime">
                </div>
                
                <div class="row">
                    <div class="col-md-8">
                        <div class="form-group">
                            <label>Contact No</label>
                            <input  type="text" placeholder="Contact No" class="form-control" name="phoneno">
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="form-group">
                            <label>Profile Photo</label>
                            <input id="reg-photo" type="file" class="form-control" name="profile">
                        </div>
                    </div>
                </div>
               
                <input type="submit" value="Sign up" class="btn btn-primary" name="btnnsubmit">
            </form>
            <ul class="dialog-alt-links">
                <li><a class="popup-text" href="#login-dialogsupplier" data-effect="mfp-zoom-out">Already member</a>
                </li>
            </ul>
        </div>
       
        <!-- END LOGIN REGISTER LINKS CONTENT -->



       

        <!-- SEARCH AREA -->
        
        <form class="search-area form-group" method="post" action="search.php">
            <div class="container">
                <div class="row">
                    <div class="col-md-8 clearfix">
                        <label><i class="fa fa-search"></i><span>I am searching for</span>
                        </label>
                        <div class="search-area-division search-area-division-input">
                            <input class="form-control" name="txtsearch" type="text" placeholder="best deals of " />
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

