<?php
include('connect.php');

session_start();
$id=$_SESSION['userid'];
include('user-header.php');
?>



<div class="container">
<div class="row">
<div class="col-md-3" style="margin-top: 131px;">
                    <aside class="sidebar-left">
                        <ul class="nav nav-pills nav-stacked nav-arrow">
                        <li class="active"><a href="user-setting.php">My Profile</a>
                            </li>
							<li class=""><a href="changepass.php">Change Password</a>
                            </li>
							<li class=""><a href="cart.php">My Cart</a>
                            </li>
							<li class=""><a href="payment-history.php">Payment History</a>
                            </li>
							<li class=""><a href="logout.php">Logout</a>
                            </li>
                           
                        </ul>
                    </aside>
                </div>
    <div class="col-xs-9">
        <div class="card">
            <div class="card-header">
            <h2 class="content-header-title">Payment History</h2>
             
                <a class="heading-elements-toggle"><i class="icon-ellipsis font-medium-3"></i></a>
                <div class="heading-elements">
                    <ul class="list-inline mb-0">
                        <li><a data-action="collapse"><i class="icon-minus4"></i></a></li>
                        <li><a data-action="reload"><i class="icon-reload"></i></a></li>
                        <li><a data-action="expand"><i class="icon-expand2"></i></a></li>
                        <li><a data-action="close"><i class="icon-cross2"></i></a></li>
                    </ul>
                </div>
            </div>
            <div class="card-body collapse in">
               
                <div class="table-responsive">
                    <table class="table table-striped mb-0">
                        <thead>
                            <tr>
                                <th>S.No</th>
                                <th>Deal Title</th>
                                <th>Transaction ID </th>
                                <th>Payment Date </th>
                                <th>Payment Amount</th>
                                <th>Email Id</th>
                                
                            </tr>
                        </thead>
                        <tbody>
						<?php
						$count=1;
						$adquery="select * from payment inner join deal on payment.deal_id=deal.deal_id where user_id=$id";
						$adres=mysqli_query($con,$adquery);
						while($adrow=mysqli_fetch_array($adres))
						{
						?>
                            <tr>
                                <th scope="row"><?php echo $count++ ?> </th>
                                <td><?php  echo $adrow['dealtitle'];?> &nbsp;&nbsp;&nbsp; <i class="icon-delete"></i></td> 
                                <td><?php echo $adrow['txn_id']?></td>
								<td><?php  echo $adrow['payment_date'];?>&nbsp;&nbsp;<i class="icon-edit"></i></td>	
                                <td><?php  echo $adrow['payment_amount'];?>&nbsp;&nbsp;<i class="icon-edit"></i></td>	
                                <td><?php  echo $adrow['payer_email'];?> &nbsp;&nbsp;&nbsp; <i class="icon-delete"></i></td> 
                                
                            </tr>
							
						<?php
						}
						?>
						<tr>
						
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
							</tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Striped rows end -->


        </div>
      </div>
    </div>
                    </div>

    <?php
        include('footer.php');
    ?>