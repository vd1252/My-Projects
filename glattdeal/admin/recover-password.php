<!DOCTYPE html>

<?php
// Import PHPMailer classes into the global namespace
// These must be at the top of your script, not inside a function
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;


require 'PHPMailer/src/Exception.php';
require 'PHPMailer/src/PHPMailer.php';
require 'PHPMailer/src/SMTP.php';
require 'PHPMailer/connect.php';

if(isset($_POST['email']))
{

    $emailTo = $_POST['email'];

    $code = uniqid(true);
    $query = mysqli_query($con,"INSERT INTO resetpassword(code, email) VALUES ('$code', '$emailTo')");
    if(!$query){
        exit("Error");
    }

    // Instantiation and passing `true` enables exceptions
$mail = new PHPMailer(true);

try {
    //Server settings
    $mail->SMTPDebug = 2;                                       // Enable verbose debug output
    $mail->isSMTP();                                            // Set mailer to use SMTP
    $mail->Host       = 'smtp.gmail.com';  // Specify main and backup SMTP servers
    $mail->SMTPAuth   = true;                                   // Enable SMTP authentication
    $mail->Username   = 'allovedeal12@gmail.com';                     // SMTP username
    $mail->Password   = '100&deals';                               // SMTP password
    $mail->SMTPSecure = 'tls';                                  // Enable TLS encryption, `ssl` also accepted
    $mail->Port       = 587;                                    // TCP port to connect to

    //Recipients
    $mail->setFrom('allovedeal12@gmail.com', 'Allover-Deal');
    $mail->addAddress($emailTo);     // Add a recipient     
    $mail->addReplyTo('no-reply@gmail.com', 'Information');
    
    // Content


    $url = "http://".$_SERVER["HTTP_HOST"]. dirname($_SERVER["PHP_SELF"])."/reset-password.php?code=$code";

    $mail->isHTML(true);                                  // Set email format to HTML
    $mail->Subject = 'Your password reset link';
    $mail->Body    = "<h1> You requested a password reset </h1>
        Click this <a href='$url'> link</a> to do so ";
    $mail->AltBody = 'This is the body in plain text for non-HTML mail clients';

    $mail->send(header("Location: password-link-sent.php"));
    
} catch (Exception $e) {
    echo "Message could not be sent. Mailer Error: {$mail->ErrorInfo}";
}
    exit();
}


?>
<html lang="en" data-textdirection="ltr" class="loading">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
    <meta name="description" content="alloverdeal admin is super flexible, powerful, clean &amp; modern responsive bootstrap 4 admin template with unlimited possibilities.">
    <meta name="keywords" content="admin template, alloverdeal admin template, dashboard template, flat admin template, responsive admin template, web app">
    <meta name="author" content="PIXINVENT">
    <title>Recover Password - alloverdeal </title>
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
    <!-- END Page Level CSS-->
    <!-- BEGIN Custom CSS-->
    <link rel="stylesheet" type="text/css" href=" assets/css/style.css">
    <!-- END Custom CSS-->
  </head>
  <body data-open="click" data-menu="vertical-menu" data-col="1-column" class="vertical-layout vertical-menu 1-column  blank-page blank-page">
    <!-- ////////////////////////////////////////////////////////////////////////////-->
    <div class="app-content content container-fluid">
      <div class="content-wrapper">
        <div class="content-header row">
        </div>
        <div class="content-body"><section class="flexbox-container">
    <div class="col-md-4 offset-md-4 col-xs-10 offset-xs-1 box-shadow-2 p-0">
        <div class="card border-grey border-lighten-3 px-2 py-2 m-0">
            <div class="card-header no-border pb-0">
                <div class="card-title text-xs-center">
                    <img src=" app-assets/images/logo/allover-deal-logo.png" alt="branding logo">
                </div>
                <h6 class="card-subtitle line-on-side text-muted text-xs-center font-small-3 pt-2"><span>We will send you a link to reset your password.</span></h6>
            </div>
            <div class="card-body collapse in">
                <div class="card-block">
                    <form method="POST"   class="form-horizontal" novalidate>
                        <fieldset class="form-group position-relative has-icon-left">
                            <input  name="email" type="email" class="form-control form-control-lg input-lg" id="user-email" placeholder="Your Email Address" required>
                            <div class="form-control-position">
                                <i class="icon-mail6"></i>
                            </div>
                        </fieldset>
                        <button type="submit"  class="btn btn-primary btn-lg btn-block"><i class="icon-lock4"></i> Recover Password</button>
                    </form>
                </div>
            </div>
            <div class="card-footer no-border">
                <p class="float-sm-left text-xs-center"><a href="login.php" class="card-link"><i class="icon-arrow-left"></i> &nbsp;Back to Login Page </a></p>
               
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
