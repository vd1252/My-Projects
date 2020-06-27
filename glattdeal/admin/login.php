<?php
include('connect.php');
include('adminheader.php')
?>
<!DOCTYPE html>
<html lang="en" data-textdirection="ltr" class="loading">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
    <meta name="description" content="alloverdeal admin is super flexible, powerful, clean &amp; modern responsive bootstrap 4 admin template with unlimited possibilities.">
    <meta name="keywords" content="admin template, alloverdeal admin template, dashboard template, flat admin template, responsive admin template, web app">
    <meta name="author" content="PIXINVENT">
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
     


    <div class="app-content content container-fluid">
      <div class="content-wrapper">
        <div class="content-header row">
        </div>
        <div class="content-body"><!-- stats -->
<div class="row">
<div class="col-xl-3 col-lg-6 col-xs-12">
        <div class="card">
            <div class="card-body">
                <div class="card-block">
                    <div class="media">
                        <div class="media-body text-xs-left">


                        <?php
                        
                        $dealquery="select COUNT(deal_id) as totaldeals FROM deal limit 1 offset 0";
                        $dealres=mysqli_query($con,$dealquery);
                        while($dealrow=mysqli_fetch_array($dealres))
                        {
                        ?>  
                         
                            <span style="font-size: 25px;font-weight: bold;"> Deal Count <br/>  <?php echo $dealrow['totaldeals']?> deals</span>

                            <?php 
                        }
                        ?>
                        </div>
                        <div class="media-right media-middle">
                            <i class="icon-upload pink font-large-5 float-xs-right"></i>
                        </div>
                        
                    </div>
                </div>
            </div>
        </div>
    </div> <div class="col-xl-3 col-lg-6 col-xs-12">
        <div class="card">
            <div class="card-body">
                <div class="card-block">
                    <div class="media">
                        <div class="media-body text-xs-left">


                        <?php
                        
                        $dealquery="select COUNT(sup_id) as totalsupplier FROM supplier limit 1 offset 0";
                        $dealres=mysqli_query($con,$dealquery);
                        while($dealrow=mysqli_fetch_array($dealres))
                        {
                        ?>  
                         
                            <span style="font-size: 25px;font-weight: bold;">Supplier Count <br/> <?php echo $dealrow['totalsupplier']?> suppliers</span>

                            <?php 
                        }
                        ?>
                        </div>
                        <div class="media-right media-middle">
                            <i class="icon-upload pink font-large-5 float-xs-right"></i>
                        </div>
                        
                    </div>
                </div>
            </div>
        </div>
    </div> <div class="col-xl-3 col-lg-6 col-xs-12">
        <div class="card">
            <div class="card-body">
                <div class="card-block">
                    <div class="media">
                        <div class="media-body text-xs-left">


                        <?php
                        
                        $dealquery="select COUNT(reg_id) as totaluser FROM register limit 1 offset 0";
                        $dealres=mysqli_query($con,$dealquery);
                        while($dealrow=mysqli_fetch_array($dealres))
                        {
                        ?>  
                         
                            <span style="font-size: 25px;font-weight: bold;" >Registered Users Count <br/> <?php echo $dealrow['totaluser']?> users</span>

                            <?php 
                        }
                        ?>
                        </div>
                        <div class="media-right media-middle">
                            <i class="icon-upload pink font-large-5 float-xs-right"></i>
                        </div>
                        
                    </div>
                </div>
            </div>
        </div>
    </div> <div class="col-xl-3 col-lg-6 col-xs-12">
        <div class="card">
            <div class="card-body">
                <div class="card-block">
                    <div class="media">
                        <div class="media-body text-xs-left">


                        <?php
                        
                        $dealquery="select COUNT(dealcat_id) as totalcategory FROM category limit 1 offset 0";
                        $dealres=mysqli_query($con,$dealquery);
                        while($dealrow=mysqli_fetch_array($dealres))
                        {
                        ?>  
                         
                            <span style="font-size: 25px;font-weight: bold;" >Total No of Deal Categories <br/> <?php echo $dealrow['totalcategory']?> categories</span>

                            <?php 
                        }
                        ?>
                        </div>
                        <div class="media-right media-middle">
                            <i class="icon-upload pink font-large-5 float-xs-right"></i>
                        </div>
                        
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="col-xl-3 col-lg-6 col-xs-12">
        <div class="card">
            <div class="card-body">
                <div class="card-block">
                    <div class="media">
                        <div class="media-body text-xs-left">
                         
                            <span style="font-size: 25px;font-weight: bold;" ><a href="basictable.php" style="color: black;">Manage Cateogries</a></span>
                        </div>
                        <div class="media-right media-middle">
                            <i class="icon-paper pink font-large-5 float-xs-right"></i>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="col-xl-3 col-lg-6 col-xs-12">
        <div class="card">
            <div class="card-body">
                <div class="card-block">
                    <div class="media">
                        <div class="media-body text-xs-left">
                            
                            <span style="font-size: 25px;font-weight: bold;"><a href="subcattable.php" style="color: black;">Manage SubCategories</a></span>
                        </div>
                        <div class="media-right media-middle">
                           <i class="icon-table2 pink font-large-5 float-xs-right"></i>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="col-xl-3 col-lg-6 col-xs-12">
        <div class="card">
            <div class="card-body">
                <div class="card-block">
                    <div class="media">
                        <div class="media-body text-xs-left">
                        
                            <span style="font-size: 25px;font-weight: bold;"><a href="managedeal.php" style="color: black;">Manage Deals</a></span>
                        </div>
                        <div class="media-right media-middle">
                            <i class="icon-diagram deep-orange font-large-5 float-xs-right"></i>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="col-xl-3 col-lg-6 col-xs-12">
        <div class="card">
            <div class="card-body">
                <div class="card-block">
                    <div class="media">
                        <div class="media-body text-xs-left">
                            
                            <span style="font-size: 25px;font-weight: bold;"><a href="manageuser.php" style="color: black;">Manage Users</a></span>
                        </div>
                        <div class="media-right media-middle">
                            <i class="icon-user1 teal font-large-5 float-xs-right"></i>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="col-xl-3 col-lg-6 col-xs-12">
        <div class="card">
            <div class="card-body">
                <div class="card-block">
                    <div class="media">
                        <div class="media-body text-xs-left">
                         
                            <span style="font-size: 25px;font-weight: bold;" ><a href="managesupp.php" style="color: black;">Manage Supplier</a></span>
                        </div>
                        <div class="media-right media-middle">
                            <i class="icon-user1 pink font-large-5 float-xs-right"></i>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div> <div class="col-xl-3 col-lg-6 col-xs-12">
        <div class="card">
            <div class="card-body">
                <div class="card-block">
                    <div class="media">
                        <div class="media-body text-xs-left">
                         
                            <span style="font-size: 25px;font-weight: bold;" ><a href="managerev.php" style="color: black;">Manage Reviews</a></span>
                        </div>
                        <div class="media-right media-middle">
                            <i class="icon-paper pink font-large-5 float-xs-right"></i>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>



<!--/ stats -->
<!--/ project charts -->

   
</div>

    
</div>

        </div>
      </div>
    </div>
    <!-- ////////////////////////////////////////////////////////////////////////////-->


   

   
  </body>
</html>
<?php
include('adminfooter.php')
?>

    