<?php
ob_start();
include('connect.php');
include('user-header.php');
session_start();
$userid=$_SESSION['userid'];
?>
        <div class="container">
            <div class="row">
            <div class="row">
                <div class="col-md-3">
                    <aside class="sidebar-left">
                        <ul class="nav nav-pills nav-stacked nav-arrow">
                            <li class="active"><a href="user-setting.php">My Profile</a>
                            </li>
							<li class=""><a href="changepass.php">Change Password</a>
                            </li>
							<li class=""><a href="cart.php">My Cart</a>
                            </li>
							<li class=""><a href="payment-history.php">Order History</a>
                            </li>
							<li class=""><a href="logout.php">Logout</a>
                            </li>
                           
                        </ul>
                    </aside>
                </div>
                <div class="col-md-8">
                    <table class="table cart-table">
                        <thead>
                            <tr>
                                <th>Item</th>
                                <th>Name</th>
                                <th>QTY</th>
                                <th>Price</th>
                                <th>Total Price</th>
                                <th>Remove</th>
                            </tr>
                        </thead>
                        <tbody>
                        	<?php
									$total=0;
									$querycdeal="select c.*,d.* from cart c join deal d on c.deal_id=d.deal_id where user_id=$userid";
                                    $rescdeal=mysqli_query($con,$querycdeal);
                                    $deal_names=array();
                                    $deal_id=array();
                                    $deal_price=array();
									while($rowcdeal=mysqli_fetch_array($rescdeal))
									{
                                        $deal_name[]=$rowcdeal['dealtitle'];
                                        $deal_id[]=$rowcdeal['deal_id'];
                                        $deal_price[]=$rowcdeal['price']; 
									    $total=$total+$rowcdeal['total_price'];
										
									
									?>



                            <tr>
                                <td class="cart-item-image">
                                    <a href="#">
                                        <img src="<?php echo $rowcdeal['dealimage_1'];?>" class="cartimage" alt="White Blouse Armani">
                                    </a>
                                </td>
                                <td><a href="#"><?php echo $rowcdeal['dealtitle'];?></a>
                                </td>
                                
                                <td><?php echo $rowcdeal['quantity'];?></td>
                                <td>Rs <?php echo $rowcdeal['price'];?></td>
                                <td>Rs <?php echo $rowcdeal['total_price'];?></td>
                                <td class="cart-item-remove">
                                    <a class="fa fa-times"href="catremove.php?deal_id=<?php echo $rowcdeal['cart_id'];?>"> </a>
                                </td>
                            </tr>
                        
                        </tbody>
                        <?php
									}
                                    
                                    $_SESSION['deal_id']=$deal_id;
                                    
                                    $_SESSION['deal_price']=$deal_price;
                               
									?>
                               
                    </table>	
                </div>
                <div style="float: right;margin-right: 100px;" class="col-md-3">
                    <table class="table cart-table">
                        <thead>
                            <tr>
                                <th>Sub Total</th>
                                <th>Taxes</th>
                                <th>Total</th>
                               

                            </tr>
                        </thead>
                        <tbody>
                        	
                            <tr>
                               
                                
                                <td><span></span><span>Rs <?php echo $total;?></span></td>
                                <td><span><span>Rs 10.00</span></td>
                                <td><span>Rs <?php echo $total=$total+ 10;?></span></td>
                                
                            </tr>
                        
                        </tbody>
                       
                               
                    </table>	
                </div>
                <div class="col-md-12" style="position: relative;left: 795px;" >
                   
                    <div class="col-md-12">
                	
                        <div id="checkout-width" class="col-md-12 ">
                            <h3>Pay Via Paypal</h3>
                            
                            <a id="paypal" href="#" class="btn btn-primary">
							<?php
					$paypal_url='https://www.sandbox.paypal.com/cgi-bin/webscr'; // Test Paypal API URL
					$paypal_id='shivani7743@gmail.com'; // Business email ID
					?>
					<div class="btn">
	<form action="<?php echo $paypal_url; ?>" method="post" name="frmPayPal1">
		<input type="hidden" name="business" value="<?php echo $paypal_id; ?>">
		<input type="hidden" name="cmd" value="_xclick">
		<input type="hidden" name="item_name" value="<?php $rowcdeal['dealtitle'];?>">
		<input type="hidden" name="item_number" value="<?php $rowcdeal['deal_id'];?>">
		
		<input type="hidden" name="credits" value="510">
		<input type="hidden" name="userid" value="1">
		<input type="hidden" name="amount" value="<?php echo $total;?>">
		<input type="hidden" name="cpp_header_image" value="http://www.phpgang.com/wp-content/uploads/gang.jpg">
		<input type="hidden" name="no_shipping" value="1">
		<input type="hidden" name="currency_code" value="USD">
		<input type="hidden" name="handling" value="0">
		
		<input type="hidden" name="cancel_return"  value="http://localhost/glattdeal/user/cancel.php">
		<input type="hidden" name="return" value="http://localhost/glattdeal/user/success.php">
		<input type="hidden" name="rm" value="2"/>
		<input type="image" src="https://www.sandbox.paypal.com/en_US/i/btn/btn_buynowCC_LG.gif" border="0" name="submit" alt="PayPal - The safer, easier way to pay online!">
		<img alt="" border="0" src="https://www.sandbox.paypal.com/en_US/i/scr/pixel.gif" width="1" height="1">
    </form> 
    </div>
							
							
							
							</a>
                        </div>
                 
                
            </div>
            <div class="gap"></div>
        </div>
                </div>
            </div>
            <div class="gap"></div>
        </div>


        <!-- //////////////////////////////////
	//////////////END PAGE CONTENT///////// 
	////////////////////////////////////-->










<?php

include('footer.php');
ob_flush();
?>