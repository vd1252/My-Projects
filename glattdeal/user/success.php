<?php
ob_start();
include('connect.php');

session_start();

if(isset($_SESSION['userid'])){
    require_once("user-header.php");
}else{  
    require_once("header.php");
}


$userid=$_SESSION['userid'];
$query="select * from register where reg_id=$userid";
$ress=mysqli_query($con,$query);
$rowss=mysqli_fetch_array($ress);
$umail=$rowss['email_id'];
$deal_id=$_SESSION['deal_id'];
$deal_price=$_SESSION['deal_price'];

$count=count($deal_id);

$i=0;

$payer_email = $_POST['payer_email'];
$txn_id = $_POST['txn_id'];
$payment_currency = $_POST['mc_currency'];
$payment_amount = $_POST['mc_gross'];
$payment_status = $_POST['payment_status'];
$payment_date = date('Y-m-d');
//print_r($deal_price);
foreach($deal_id as $value)
	{
		
    $query1="insert into payment (payer_email,payment_amount,payment_status,payment_currency, payment_date, txn_id, user_id,deal_id) VALUES('$umail','$payment_amount','$payment_status','$payment_currency','$payment_date','$txn_id','$userid','$value')";
    
     $res=mysqli_query($con,$query1);
  
     $i++;
     if($res){
       
    }
    else{
        echo "Invalid";
    }
    }
 

?>



<?php
$name=$rowss['first_name'];
/**
 * This example shows settings to use when sending via Google's Gmail servers.
 */

//SMTP needs accurate times, and the PHP time zone MUST be set
//This should be done in your php.ini, but this is how to do it if you don't have access to that
date_default_timezone_set('Etc/UTC');

use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;


require 'PHPMailer/src/Exception.php';
require 'PHPMailer/src/PHPMailer.php';
require 'PHPMailer/src/SMTP.php';
require 'PHPMailer/connect.php';

//Create a new PHPMailer instance
$mail = new PHPMailer;

//Tell PHPMailer to use SMTP
$mail->isSMTP();

//Enable SMTP debugging
// 0 = off (for production use)
// 1 = client messages
// 2 = client and server messages
$mail->SMTPDebug = 0;

//Ask for HTML-friendly debug output
$mail->Debugoutput = 'html';
$mail->SMTPOptions = array(
'ssl' => array(
'verify_peer' => false,
'verify_peer_name' => false,
'allow_self_signed' => true
)
);

//Set the hostname of the mail server
$mail->Host = 'smtp.gmail.com';

//Set the SMTP port number - 587 for authenticated TLS, a.k.a. RFC4409 SMTP submission
$mail->Port = 587;

//Set the encryption system to use - ssl (deprecated) or tls
$mail->SMTPSecure = 'tls';

//Whether to use SMTP authentication
$mail->SMTPAuth = true;

//Username to use for SMTP authentication - use full email address for gmail
$mail->Username = "allovedeal12@gmail.com";

//Password to use for SMTP authentication
$mail->Password = "100&deals";

//Set who the message is to be sent from
$mail->setFrom('allovedeal12@gmail.com', 'Administrator Glattdeal');

//Set an alternative reply-to address
//$mail->addReplyTo('rimpusidhu7007@gmail.com', 'Administrator TemplateMart');
$htmlcontent="";
//Set who the message is to be sent to
$mail->addAddress($rowss['email_id'],$rowss['first_name']);

//Set the subject line
$mail->Subject = ' Thanks for Buying from galttdeal';

//Read an HTML message body from an external file, convert referenced images to embedded,
//convert HTML into a basic plain-text alternative body

					$query2="select c.* , d.* from cart c join deal d on c.deal_id=d.deal_id where user_id=$userid";
					
					//echo  $query2;
					
					$res2=mysqli_query($con,$query2);
					//$row1=mysqli_fetch_array($res1);
					?>
					<ul>
					<?php
					$htmlcontent.="<ul>";
					while($row2=mysqli_fetch_array($res2))
					{
						$deal_name=$row2['dealtitle'];
						$amt=$row2['deal_totalamount'];
                         $htmlcontent.="<li>$deal_name  Price: Rs.$amt </li>";
					} 
					$htmlcontent.="</ul>";	
						//echo $_SESSION["pay_amount"];?>
						</span></li>
					</ul>
					<?php
					
$mail->msgHTML("<html>
<body>

<p>
Dear $name,</p>
<p>Thank you for your order from glattdeal.com. This email contains important information regarding your recent purchase . please save it for reference. 
</p>
<p>
For your convenience, we have included a copy of your order below.</p>
<p>


<ul>
<li>Transaction Id # : $txn_id</li>
<li>Email Id: $umail</li>
<li>Purchase Date :  $payment_date</li>
<li>Total Amount Paid : Rs $payment_amount</li>
<li>Payment Status: $payment_status</li>
<li>Deal Details: $htmlcontent  </li>

</ul>
</p>
<p>
Terms & Conditions</p>
<p>
Taxes Included </p>
<p>
Can purchase multiple vouchers for gifting</p>
<p>
Cannot be redeemed with cash</p>
<p>
Cannot be combined with other existing offers</p>
If you have a question about your order status, you can contact the seller directly by e-mail at : galttdeal@gmail.com
<p>+91-6868687587
Customer Support</p>
");

//Replace the plain text body with one created manually
$mail->AltBody = 'This is a plain-text message body';

//Attach an image file
//$mail->addAttachment('images/phpmailer_mini.png');

//send the message, check for errors
if (!$mail->send()) {
    echo "Mailer Error: " . $mail->ErrorInfo;
} else {
   //echo "Message sent!";
}
?>







<p>
Dear <?php echo $name;?>,</p>
<p>Thank you for your order from glattdeal.com. This email contains important information regarding your recent purchase . please save it for reference. 
</p>
<p>
For your convenience, we have included a copy of your order below.</p>
<p>


<ul>
<li>Transaction Id # :<?php echo $txn_id;?> </li>
<li>Email Id: <?php echo $umail;?></li>
<li>Purchase Date :  <?php echo $payment_date;?></li>
<li>Total Amount Paid : Rs <?php echo $payment_amount;?></li>
<li>Payment Status: <?php echo $payment_status;?></li>
<li>Deal Details: <?php echo $htmlcontent;?>  </li>

</ul>
</p>
<p>
Terms & Conditions</p>
<p>
Taxes Included </p>
<p>
Can purchase multiple vouchers for gifting</p>
<p>
Cannot be redeemed with cash</p>
<p>
Cannot be combined with other existing offers</p>
If you have a question about your order status, you can contact the seller directly by e-mail at : glattdeal@gmail.com
<p>+91-6757575467
Customer Support</p>





	<?php
include('footer.php');
ob_flush();?>


