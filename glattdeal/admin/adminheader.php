<?php
ob_start();
include('connect.php');
session_start();
$id=$_SESSION['admin_id'];



if(!isset($_SESSION['admin_id']))
{
	header("location:login.php");
}
?>


<!DOCTYPE html>
<html lang="en" data-textdirection="ltr" class="loading">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
    <meta name="keywords" content="admin, admin template, dashboard template, flat admin template, responsive admin template, web app">
    <title>Dashboard - alloverdeal</title>
    <link rel="apple-touch-icon" sizes="60x60" href=" app-assets/images/ico/apple-icon-60.png">
    <link rel="apple-touch-icon" sizes="76x76" href=" app-assets/images/ico/apple-icon-76.png">
    <link rel="apple-touch-icon" sizes="120x120" href=" app-assets/images/ico/apple-icon-120.png">
    <link rel="apple-touch-icon" sizes="152x152" href=" app-assets/images/ico/apple-icon-152.png">
    <link rel="shortcut icon" type="image/x-icon" href=" app-assets/images/ico/favicon.ico">
    <link rel="shortcut icon" type="image/png" href=" app-assets/images/ico/favicon-32.png">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-touch-fullscreen" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="default">
    <!-- BEGIN VENDOR CSS-->
    <link rel="stylesheet" type="text/css" href=" app-assets/css/bootstrap.css">
    <!-- font icons-->
    <link rel="stylesheet" type="text/css" href=" app-assets/fonts/icomoon.css">
    <link rel="stylesheet" type="text/css" href=" app-assets/fonts/flag-icon-css/css/flag-icon.min.css">
    <link rel="stylesheet" type="text/css" href=" app-assets/vendors/css/extensions/pace.css">
    <!-- END VENDOR CSS-->
    <!-- BEGIN alloverdeal CSS-->
    <link rel="stylesheet" type="text/css" href=" app-assets/css/bootstrap-extended.css">
    <link rel="stylesheet" type="text/css" href=" app-assets/css/app.css">
    <link rel="stylesheet" type="text/css" href=" app-assets/css/colors.css">
    <!-- END alloverdeal CSS-->
    <!-- BEGIN Page Level CSS-->
    <link rel="stylesheet" type="text/css" href=" app-assets/css/core/menu/menu-types/vertical-menu.css">
    <link rel="stylesheet" type="text/css" href=" app-assets/css/core/menu/menu-types/vertical-overlay-menu.css">
    <link rel="stylesheet" type="text/css" href=" app-assets/css/core/colors/palette-gradient.css">
    <!-- END Page Level CSS-->
    <!-- BEGIN Custom CSS-->
    <link rel="stylesheet" type="text/css" href=" assets/css/style.css">
    <!-- END Custom CSS-->
    <style>
    .brand-logo1
    {
        position: relative;
        bottom: 13px;
        right: 31px;

    }
    #adminphoto{
      height: 100px;
      margin-left: 49px;
    }
    .username{

        text-align: center;
    }
    </style>
  <script src=" app-assets/js/core/libraries/jquery.min.js" type="text/javascript"></script>
	<script>
	$(document).ready(function(){
	  $("#search").on("keyup", function() {
		var value = $(this).val().toLowerCase();
		$("#myTable tr").filter(function() {
		  $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
		});
	  });
	});
	</script>
  </head>
  <body data-open="click" data-menu="vertical-menu" data-col="2-columns" class="vertical-layout vertical-menu 2-columns  fixed-navbar">

    <!-- navbar-fixed-top-->
    <nav class="header-navbar navbar navbar-with-menu navbar-fixed-top navbar-semi-dark navbar-shadow">
      <div class="navbar-wrapper">
        <div class="navbar-header">
          <ul class="nav navbar-nav">
            <li class="nav-item mobile-menu hidden-md-up float-xs-left"><a class="nav-link nav-menu-main menu-toggle hidden-xs"><i class="icon-menu5 font-large-1"></i></a></li>
            <li class="nav-item"><a href="login.php" class="navbar-brand nav-link"><img alt="branding logo" class="brand-logo1" src=" app-assets/images/logo-small-dark.png" data-expand=" app-assets/images/logo/allover-deal-logo-small.png" data-collapse=" app-assets/images/logo/allover-deal-logo-small.png" class="brand-logo"></a></li>
            <li class="nav-item hidden-md-up float-xs-right"><a data-toggle="collapse" data-target="#navbar-mobile" class="nav-link open-navbar-container"><i class="icon-ellipsis pe-2x icon-icon-rotate-right-right"></i></a></li>
          </ul>
        </div>
        <div class="navbar-container content container-fluid">
          <div id="navbar-mobile" class="collapse navbar-toggleable-sm">
            <ul class="nav navbar-nav">
              <li class="nav-item hidden-sm-down"><a class="nav-link nav-menu-main menu-toggle hidden-xs"><i class="icon-menu5"></i></a></li>
              
            </ul>
            <ul class="nav navbar-nav float-xs-right">
            
              
              
              <li class="dropdown dropdown-user nav-item"><a href="#" data-toggle="dropdown" class="dropdown-toggle nav-link dropdown-user-link"><span class="avatar avatar-online">

				<?php
				 $querya="select * from login where id=$id";
				 $resa=mysqli_query($con,$querya);
				 $rowa=mysqli_fetch_array($resa);
         ?>
         	<img class="user-avatar rounded-circle" src="../user/<?php echo $rowa['image'];  ?>" >
                <i></i></span><span class="user-name"><?php echo $rowa['username'];  ?></span></a>



                <div class="dropdown-menu dropdown-menu-right"><a href="editadmin.php?admin_id=<?php  echo $rowa['id'];?>" class="dropdown-item"><i class="icon-head"></i> Edit Profile</a>
                  <div class="dropdown-divider"></div><a href="logout.php" class="dropdown-item"><i class="icon-power3"></i> Logout</a>
                </div>
              </li>
            </ul>
          </div>
        </div>
      </div>
    </nav>

    <!-- ////////////////////////////////////////////////////////////////////////////-->


    <!-- main menu-->
    <div data-scroll-to-active="true" class="main-menu menu-fixed menu-dark menu-accordion menu-shadow">
      <!-- main menu header-->
      <div class="main-menu-header">
       <div class="profile clearfix">
              <div class="profile_pic">
              <img id="adminphoto" class="user-avatar rounded-circle" src="../user/<?php echo $rowa['image'];  ?>" >
                <br>
                <p  class="username"> <br><?php echo $rowa['username'];  ?></p>
              </div>
              
            </div>
      </div>
      <!-- / main menu header-->
      <!-- main menu content-->
      <div class="main-menu-content">
        <ul id="main-menu-navigation" data-menu="menu-navigation" class="navigation navigation-main">
          <li class=" nav-item"><a href="login.php"><i class="icon-home3"></i><span data-i18n="nav.dash.main" class="menu-title">Dashboard</span></a>
          </li>
    
        
        
          <li class=" nav-item"><a href="managecategories.php"><i class="icon-table"></i><span data-i18n="nav.form_layouts.form_layout_basic" class="menu-title">Manage Categories</span></a>
          </li>
          <li class=" nav-item"><a href="managesubcat.php"><i class="icon-table2"></i><span data-i18n="nav.bootstrap_tables.table_basic" class="menu-title">Manage SubCategories</span></a>
          </li>
          <li class=" nav-item"><a href="managedeal.php"><i class="icon-stats-dots"></i><span data-i18n="nav.google_charts.main" class="menu-title">Manage Deals</span></a>
            
          </li>
          <li class=" nav-item"><a href="manageuser.php"><i class="icon-user"></i><span data-i18n="nav.chartjs.main" class="menu-title">Manage Users</span></a>
            
          </li>
          <li class=" nav-item"><a href="manageadmin.php"><i class="icon-user"></i><span data-i18n="nav.chartjs.main" class="menu-title">Manage Admin</span></a>
            
          </li>
          <li class=" nav-item"><a href="managesupp.php"><i class="icon-user"></i><span data-i18n="nav.chartjs.main" class="menu-title">Manage Suppliers</span></a>
            
          </li>
          <li class=" nav-item"><a href="managerev.php"><i class="icon-paper"></i><span data-i18n="nav.chartjs.main" class="menu-title">Manage Reviews</span></a>
            
            </li>
			<li class=" nav-item"><a href="logout.php"><i class="icon-paper"></i><span data-i18n="nav.chartjs.main" class="menu-title">Logout</span></a>
            
            </li>
          
          
  
        </ul>
      </div>
      </div>
    </body>
</html>

<?php
ob_flush();
?>