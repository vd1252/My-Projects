<?php
ob_start();
include('connect.php');
include('supplier-header.php');
session_start();
$id=$_SESSION['supplierid'];
?>
		<div class="container">
				
			<div class="row">
			 <div class="col-md-3">
			 
                    <aside class="sidebar-left">
                        <ul class="nav nav-pills nav-stacked nav-arrow">
                            <li class="active"><a href="supplier-setting.php">My Profile</a>
                            </li>
								<li class=""><a href="changepass-sup.php">Change Password</a>
                            </li>
							 <li class=""><a href="dealadd.php">Post Deal</a>
                            </li>
							<li class=""><a href="viewad.php">My Posted Deals</a>
                            </li>
							 <li class=""><a href="logout.php">Logout</a>
                            </li>
                           
                        </ul>
                    </aside>
                </div>
				<div class="col-md-9">
				<div class="mb30 text-center">
                        <h1>My Posted Deals Information</h1>
                        
                </div>
				 <table class="table cart-table">
                        <thead>
                            <tr>
                                <th>Item</th>
                                <th>Name</th>
                                <th>Price</th>
                                <th>Discount</th>
                                <th>Total Amount</th>
                                
                                <th>Remove</th>
                            </tr>
                        </thead>
                        <tbody>
                        	<?php
									$total=0;
									$querycdeal="select * from deal where sup_id=$id";
                                    $rescdeal=mysqli_query($con,$querycdeal);
									$count=mysqli_num_rows($rescdeal);
									if($count>0)
									{
                                    $deal_names=array();
                                    $deal_id=array();
                                    $deal_price=array();
									while($rowcdeal=mysqli_fetch_array($rescdeal))
									{
										
									
									?>
                            <tr>
                                <td class="cart-item-image">
                                    <a href="#">
                                        <img src="<?php echo $rowcdeal['dealimage_1'];?>" class="cartimage" alt="White Blouse Armani">
                                    </a>
                                </td>
                                <td><a href="#"><?php echo $rowcdeal['dealtitle'];?></a>
                                </td>
                                <td>Rs <?php echo $rowcdeal['dealactualprice'];?></td>
                                <td>Rs <?php echo $rowcdeal['dealdiscount'];?></td>
                                <td>Rs <?php echo $rowcdeal['deal_totalamount'];?></td>
								
                                <td class="cart-item-remove">
                                    <a class="fa fa-times"href="deletedeal.php?sup_id=<?php echo $rowcdeal['deal_id'];?>"> </a>
                                </td>
								
                               
                            </tr>
                        
                        </tbody>
                        <?php
									}
                                    
                                    $_SESSION['deal_id']=$deal_id;
                                    
                                    $_SESSION['deal_price']=$deal_price;
                                    $_SESSION['deal_names']=$deal_names;
									?> <?php
                                }
                                
                                ?>
                               
                    </table>
                    	
			
			    </div>
				
			</div>
			
			</div>
			

					<!-- Delivery -->
					

	<!-- Footer -->
	<?php

include('footer.php');
ob_flush();
?>
	