
<?php
ob_start();

include('connect.php');

    if(!isset($_GET["code"])){

    exit("Can't find page");

    }

    $code = $_GET["code"];

    $getEmailQuery = mysqli_query($con, "SELECT email FROM resetpassword WHERE code='$code'");

    if(isset($_POST["sup_password"])) {
        $pw =$_POST["sup_password"];
        

        $row = mysqli_fetch_array($getEmailQuery);
        $email = $row["email"];

        $query = mysqli_query($con, "UPDATE supplier SET sup_password='$pw' WHERE sup_email='$email'");

        if($query){
            $query= mysqli_query($con, "DELETE FROM resetpassword WHERE code='$code'");
            exit(header("Location: password-updated.php"));
        }
        else
        {
            exit("Something went wrong");
        }



    }
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
    <title>Login Page - alloverdeal </title>
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
    <link rel="stylesheet" type="text/css" href=" app-assets/css/pages/login-register.css">
    <!-- END Page Level CSS-->
    <!-- BEGIN Custom CSS-->
    <link rel="stylesheet" type="text/css" href=" assets/css/style.css">
    <!-- END Custom CSS-->
     <link rel="icon" href="img/favicon.ico" type="image/x-icon">
  </head>
  <body data-open="click" data-menu="vertical-menu" data-col="1-column" class="vertical-layout vertical-menu 1-column  blank-page blank-page">
    <!-- ////////////////////////////////////////////////////////////////////////////-->
    <div class="app-content content container-fluid">
      <div class="content-wrapper">
        <div class="content-header row">
        </div>
        <div class="content-body"><section class="flexbox-container">
    <div class="col-md-4 offset-md-4 col-xs-10 offset-xs-1  box-shadow-2 p-0">
        <div class="card border-grey border-lighten-3 m-0">
            <div class="card-header no-border">
                <div class="card-title text-xs-center">
                    <div class="p-1"><img src="img/logos/allover-deal-logo.png" alt="branding logo"></div>
                </div>
                <h6 class="card-subtitle line-on-side text-muted text-xs-center font-small-3 pt-2"><span>Change Your Password</span></h6>
            </div>
            <div class="card-body collapse in">
                <div class="card-block">
                    <form class="form-horizontal form-simple" method="POST" novalidate>
                        
                        <fieldset class="form-group position-relative has-icon-left">
                            <input type="password" class="form-control form-control-lg input-lg" id="user-password" name="sup_password" placeholder="Enter New Password" required>
                            <div class="form-control-position">
                                <i class="icon-key3"></i>
                            </div>
                        </fieldset>
                        <fieldset class="form-group row">
                           
                           
                        </fieldset>
                        <button  type="submit" name="btnlogin" class="btn btn-primary btn-lg btn-block"><i class="icon-unlock2"></i>Change Password</a> </button>
                    </form>
                </div>
            </div>
            <div class="card-footer">
                
            </div>
        </div>
    </div>
</section>

        </div>
      </div>
    </div>
    <!-- ////////////////////////////////////////////////////////////////////////////-->

    <!-- BEGIN VENDOR JS-->
    <script src=" app-assets/js/core/libraries/jquery.min.js" type="text/javascript"></script>
    <script src=" app-assets/vendors/js/ui/tether.min.js" type="text/javascript"></script>
    <script src=" app-assets/js/core/libraries/bootstrap.min.js" type="text/javascript"></script>
    <script src=" app-assets/vendors/js/ui/perfect-scrollbar.jquery.min.js" type="text/javascript"></script>
    <script src=" app-assets/vendors/js/ui/unison.min.js" type="text/javascript"></script>
    <script src=" app-assets/vendors/js/ui/blockUI.min.js" type="text/javascript"></script>
    <script src=" app-assets/vendors/js/ui/jquery.matchHeight-min.js" type="text/javascript"></script>
    <script src=" app-assets/vendors/js/ui/screenfull.min.js" type="text/javascript"></script>
    <script src=" app-assets/vendors/js/extensions/pace.min.js" type="text/javascript"></script>
    <!-- BEGIN VENDOR JS-->
    <!-- BEGIN PAGE VENDOR JS-->
    <!-- END PAGE VENDOR JS-->
    <!-- BEGIN alloverdeal JS-->
    <script src=" app-assets/js/core/app-menu.js" type="text/javascript"></script>
    <script src=" app-assets/js/core/app.js" type="text/javascript"></script>
    <!-- END alloverdeal JS-->
    <!-- BEGIN PAGE LEVEL JS-->
    <!-- END PAGE LEVEL JS-->
  </body>
</html>
<?php
ob_flush();
?>
