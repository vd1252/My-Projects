<?php
include('connect.php');

session_start();

if(isset($_SESSION['userid'])){
    require_once("user-header.php");
}else if(isset($_SESSION['supplierid']))  {  
    require_once("supplier-header.php");
}
else{
    require_once("header.php");
}
$id=$_GET['deal_id'];
$querytemp="select d.*,s.* from deal d join supplier s on d.sup_id=s.sup_id where deal_id=$id";
$restemp=mysqli_query($con,$querytemp);
$rowtemp=mysqli_fetch_array($restemp);
$msg="";
$msgg="";
if(isset($_POST['btncart'] ))
{   
	
	if(isset($_SESSION['userid']) && !empty($_SESSION['userid']))
	{       $userid=$_SESSION['userid'];
			$dealid=$_GET['deal_id'];//url
			$quantity=$_POST['qty'];
			$price=$rowtemp['deal_totalamount'];
			$tprice=$price *$quantity;
			//check wthether user deal exists
            $querychk="select * from cart where user_id=$userid and deal_id=$dealid";
           
			$reschk=mysqli_query($con,$querychk);
			$rec=mysqli_num_rows($reschk);
			
			if($rec==0)
			{
				//row data 
				
                $queryc="insert into cart(user_id,deal_id,quantity,price,total_price) values($userid,$dealid,$quantity,$price,$tprice)";
				$resc=mysqli_query($con,$queryc);
				if($resc)
				{
					$msg="Item added to cart successfully";
				}
				else
				{
					$msg="Error while adding data to cart.Please try again later";
				}
			
			}
			else
			{
				
				$queryupd="update cart set quantity=quantity+$quantity,total_price=quantity* price where user_id=$userid and deal_id=$dealid";
				$resupd=mysqli_query($con,$queryupd);
				if($resupd)
				{
					$msg="Item updated in cart successfully";
				}
				else
				{
                    $msg="Error while update data to cart.Please try again later";
                    
				}
			}

     			//session variable	
		
	}
	else
	{
        echo "<script>alert('Login First'); </script>";
       
     
    }	
}
$mssg="";
if(isset($_POST['btnreview']))
 { 
	
	if(isset($_SESSION['userid']) && !empty($_SESSION['userid']))
	{ 
	$userid=$_SESSION['userid'];
	$id=$_GET['deal_id'];
	 $review=$_POST['comment'];
	 $email=$_POST['email'];
	 $rev_prod=$_POST['deal'];
	 $rate=$_POST['ddlrate'];
	 $rquery="insert into review(review,email,review_on,review_by,deal_id,rate) values('$review','$email',CURDATE(),'$userid','$id','$rate')"; 
	 
	 $res=mysqli_query($con,$rquery);//true/false
	 if($res)
	 {
		 $mssg="Data inserted Successfully";
	 }
	 else
	 {
		$mssg="Error in insertion".mysqli_error($con);
	 }
	}
	 else
	{
		echo "<script>alert('Login First'); </script>";
	}
 }
?>
<script src=" app-assets/js/core/libraries/jquery.min.js" type="text/javascript"></script>
<script>
   $( document ).ready( function () {
	//form validation rules
	$("#review").validate({
		rules:
		{
            email:"required",
			comment:"required",
			ddlrate:"required",
		},
		
	});
  });
	 </script>
	 <script src="js/jquery.min.js">
</script>



        <!-- //////////////////////////////////
	//////////////PAGE CONTENT///////////// 
	////////////////////////////////////-->



        <div class="container">
            <div class="row">
                <div class="col-md-3">
                    <aside class="sidebar-left">
                         <div class="sidebar-box">
                            <h5>Recent Viewed</h5>
                            <ul class="thumb-list">
                             
                        <?php
                        
                        $dealquery="select * from deal limit 3 offset 0";
                        $dealres=mysqli_query($con,$dealquery);
                        while($dealrow=mysqli_fetch_array($dealres))
                        {
                        ?>  


                                <li>
                                    <a href="#">
                                        <img src="<?php echo $dealrow['dealimage_1'];?>" alt="Image Alternative text" title="Urbex Esch/Lux with Laney and Laaaaag" />
                                    </a>
                                    <div class="thumb-list-item-caption">
									
													    
                                        <h5 class="thumb-list-item-title"><a href="product-details.php?deal_id=<?php echo $dealrow['deal_id']?>"><?php
                                    echo $dealrow['dealtitle'];
                                    ?></a></h5>
                                        <p class="thumb-list-item-price">Rs <?php echo $dealrow['deal_totalamount']?></p>
                                    </div>
                                </li>
                                 <?php
                        }
                        ?>
                              
                            </ul>
                        </div>
                         <div class="sidebar-box">
                            <h5>Popular</h5>
                            <ul class="thumb-list">
                                

                        <?php
                        
                        $dealquery="select * from deal  limit 3 offset 3";
                        $dealres=mysqli_query($con,$dealquery);
                        while($dealrow=mysqli_fetch_array($dealres))
                        {
                        ?>  
                                <li>
                                    <a href="#">
                                        <img src="<?php echo $dealrow['dealimage_1'];?>"  alt="Image Alternative text" title="Food is Pride" />
                                    </a>
                                    <div class="thumb-list-item-caption">
                                        <h5 class="thumb-list-item-title"><a href="product-details.php?deal_id=<?php echo $dealrow['deal_id']?>"><?php
                                    echo $dealrow['dealtitle'];
                                    ?></a></h5>
                                        <p class="thumb-list-item-price">Rs <?php echo $dealrow['deal_totalamount']?></p>
                                    </div>
                                </li>

                                  <?php
                        }
                        ?>
                                
                            </ul>
                        </div>
                        
                    </aside>
                </div>
                <div class="col-md-9">
				<?php 
							if($mssg!="")
							{
							echo "<p class='alert alert-success'>$mssg</p>"; 
							}
							?>
                    <div id="review-dialog" class="mfp-with-anim mfp-hide mfp-dialog clearfix">
							
					
                        <h3>Add a Review</h3>
                        <form method="post" id="review">
                            <div class="form-group">
                                <label>E-mail</label>
                                <input type="text" name="email" placeholder="Email" class="form-control" />
                            </div>
                            <div class="form-group">
                                <label>Review</label>
                                <textarea name="comment" class="form-control"></textarea>
                            </div>
                            <div class="form-group">
                                <label>Rating</label>
                                <select class="form-control" name="ddlrate">
                                <option selected="true" disabled="">Rating</option>
                                <option value="1">1</option>
                                <option value="2">2</option>
                                <option value="3">3</option>
                                <option value="4">4</option>
                                <option value="5">5</option>
                              </select>
                            </div>
							<div class="form-group">
                                
                                <input type="hidden" name="deal" value="<?php echo $rowtemp['deal_id']; ?>" class="form-control"/>
                            </div>
                            <input type="submit" class="btn btn-primary" name="btnreview" value="Submit" />
                        </form>
                    </div>



                    <div class="row">
                        <div class="col-md-7">
                            <div class="fotorama" data-nav="thumbs" data-allowfullscreen="1" data-thumbheight="150" data-thumbwidth="150">
                                <img src="<?php echo $rowtemp['dealimage_1'];?>" alt="Image Alternative text" title="Gamer Chick" />
                                <img src="<?php echo $rowtemp['dealimage_2'];?>" alt="Image Alternative text" title="AMaze" />
                                <img src="<?php echo $rowtemp['dealimage_3'];?>" alt="Image Alternative text" title="Urbex Esch/Lux with Laney and Laaaaag" />
                                <img src="<?php echo $rowtemp['dealimage_1'];?>" alt="Image Alternative text" title="Food is Pride" />
                            </div>
                        </div>
                        <div class="col-md-5">
                            <div class="product-info box">
                            <p class="text-smaller text-muted"><?php echo $rowtemp['sup_name']; ?></p>
                                <ul class="icon-group icon-list-rating text-color" title="4.5/5 rating">
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                    <li><i class="fa fa-star"></i>
                                    </li>
                                    <li><i class="fa fa-star-half-empty"></i>
                                    </li>
                                </ul>	<small><a href="#" class="text-muted">based on 8 reviews</a></small>
                                
														<?php 
														if($msg!="")
														{
														echo "<p class='alert alert-success'>$msg</p>"; 
														}
														?>
								
                                <h3><?php echo $rowtemp['dealtitle']; ?></h3>
                                <p class="product-info-price"> Rs <?php echo $rowtemp['deal_totalamount']; ?></p>
                                <p class="text-smaller text-muted"><?php echo $rowtemp['dealdesc']; ?></p>
                            
                                <ul class="icon-list list-space product-info-list">
                                    <li></i>Posted On : <?php echo $rowtemp['posted_on']; ?></li>
                                    <li></i>Valid Till : <?php echo $rowtemp['validity']; ?></li>
                                   <li></i>Actual Price : Rs <?php echo $rowtemp['dealactualprice']; ?></li>
                                   <li></i>Deal Discount Price : Rs <?php echo $rowtemp['dealdiscount']; ?></li>
                                    <li> <p style=" text-transform: capitalize;" class="product-location"><i class="fa fa-map-marker"></i> <?php echo $rowtemp['location']?></p></li>
                                
                                </ul>
                        
                                <form method="post" >
                                        <ul class="product-actions-list">

                                        
                                    Quantity :  &nbsp;<i class="fa fa-minus cart-item-minus"></i>  &nbsp; <input id="quantity" value="1" type="number" name="qty" class="cart-quantity" min="1" max="10" />  &nbsp;<i class="fa fa-plus cart-item-plus"></i> &nbsp;
                                    </li>
                                    
                                           <button type="submit" name="btncart" class="btn btn-sm" >  <i class="fa fa-shopping-cart"></i> To Cart </button> 

                    </form>
                            </div>
                        </div>
                    </div>
                    <div class="gap"></div>
                    <div class="tabbable">
                        <ul class="nav nav-tabs" id="myTab">
                            
                            <li class="active"><a href="#tab-1" data-toggle="tab"><i class="fa fa-info"></i>Additional Information</a>
                            </li>
                            <li ><a href="#tab-2" data-toggle="tab"><i class="fa fa-pencil"></i>Desciption</a>
                            </li>
                            <li><a href="#tab-3" data-toggle="tab"><i class="fa fa-truck"></i>Payment</a>
                            </li>
                            <li><a href="#tab-4" data-toggle="tab"><i class="fa fa-comments"></i>Reviews</a>
                            </li>
                        </ul>
                        <div class="tab-content">
                            <div class="tab-pane fade in active" id="tab-1">
                            <table class="table table-striped mb0">
                                    <tbody>
                                        <tr>
                                            <td>Taxes are not included</td>
                                        </tr>
                                        <tr>
                                            <td>One voucher valid for 1 Person only</td>
                                      
                                        </tr>
                                        <tr>
                                            <td>Voucher to be redeemed in a single visit</td>
                                           
                                        </tr>
                                        <tr>
                                            <td>Voucher will be deal specific and can't be clubbed with any other offer</td>
                                         
                                        </tr>
                                        <tr>
                                            <td>Cannot be redeemed with cash</td>
                                            
                                        </tr>
                                        <tr>
                                            <td>Can purchase multiple vouchers for gifting</td>
                                           
                                        </tr>
                                    
                                    </tbody>
                                </table>
                               
                               
                               
                               
                                
                            </div>
                            <div class="tab-pane fade" id="tab-2">
                            <p><?php echo $rowtemp['dealdesc']; ?></p>
                            </div>
                            <div class="tab-pane fade" id="tab-3">
                            <p>You can pay for your purchase through PayPal only.</p>
                                <p>PayPal Services in India are provided by PayPal Payments Private Limited (CIN U74990MH2009PTC194653). Users are advised to read the terms and conditions carefully.</p>
                            </div>
                            <div class="tab-pane fade" id="tab-4">
                                <ul class="comments-list">
								
									<?php
									$count=0;
									$queryrev="select reg.*,r.* from register reg join review r on reg.reg_id=r.review_by where deal_id=$id";
                                    $resrev=mysqli_query($con,$queryrev);
                                    $count=mysqli_num_rows($resrev);
									if($count!=0)
									{
                                    while($rowrev=mysqli_fetch_array($resrev))
                                    {
									
								
									?>
								
                                <li>
                                        <!-- REVIEW -->
                                        <article class="comment">
                                            <div class="comment-author">
                                                <img id="reviewpic" src="<?php echo $rowrev['profile']; ?>" alt="Image Alternative text" title="Gamer Chick" />
                                            </div>
                                            <div class="comment-inner">
                                                <ul class="icon-group icon-list-rating comment-review-rate" title="4/5 rating">
												<?php
											  $rate=$rowrev['rate'];
											  for($i=1;$i<=$rate;$i++){	  
											  ?>
													<li><i class="fa fa-star"></i>
                                                    </li>
													<?php
													  }
													  ?>
                                                </ul><span class="comment-author-name"><?php echo $rowrev['first_name']; ?></span>
                                                <p class="comment-content"><?php echo $rowrev['review']; ?></p>
                                            </div>
                                        </article>
                                    </li>
									<?php
									} } 
									else
									{
									?>
									<li>
                                        <!-- REVIEW -->
                                        <article class="comment">
                                            <div class="comment-author">
                                            </div>
                                            <div class="comment-inner">
                                                <ul class="icon-group icon-list-rating comment-review-rate" title="4/5 rating">
												<p class="comment-content"><?php echo "No Reviews"; ?></p>
                                            </div>
                                        </article>
                                    </li>
									<?php
									}
									?>
                                </ul><a class="popup-text btn btn-primary" href="#review-dialog" data-effect="mfp-zoom-out"><i class="fa fa-pencil"></i> Add a review</a>
                            </div>
                        </div>
                    </div>
                    <div class="gap"></div>
                    <h3>Related Porducts</h3>
                    <div class="gap gap-mini"></div>
                    <div class="row row-wrap">
					
									<?php
									$dsubcat_id=$rowtemp['dealcat_id'];
                                    $pro_query="select * from deal where dealcat_id=$dsubcat_id limit 3 offset 3";
                                    $pro_res=mysqli_query($con,$pro_query);
                                    while($pro_row=mysqli_fetch_array($pro_res))
                                    {
                                    ?>
                        <div class="col-md-4">
                            <div class="product-thumb">
                                <header class="product-header">
                                    <img src="<?php echo $pro_row['dealimage_1'];?>" href="product-details.php?deal_id=<?php echo $pro_row['deal_id']?>" alt="Image Alternative text" title="the best mode of transport here in maldives" />
                                </header>
                                <div class="product-inner">
                                    <ul class="icon-group icon-list-rating icon-list-non-rated" title="not rated yet">
                                        <li><i class="fa fa-star"></i>
                                        </li>
                                        <li><i class="fa fa-star"></i>
                                        </li>
                                        <li><i class="fa fa-star"></i>
                                        </li>
                                        <li><i class="fa fa-star"></i>
                                        </li>
                                        <li><i class="fa fa-star"></i>
                                        </li>
                                    </ul>
                           <h5 class="product-title"> <a href="product-details.php?deal_id=<?php echo $pro_row['deal_id']?>"><?php
									echo substr($pro_row['dealtitle'],0,25);
									?></a></h5>
                                    <div class="product-meta">
                                        <ul class="product-price-list">
                                            <li><span class="product-price">Rs <?php echo $pro_row['dealactualprice'];?></span>
                                            </li>
                                        </ul>
                                        <ul class="product-actions-list">
                                            <li><a href="product-details.php?deal_id=<?php echo $pro_row['deal_id']?>" class="btn btn-sm"><i class="fa fa-bars"></i> Details</a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
						<?php
						}
						?>
						
                    </div>
                    <div class="gap gap-small"></div>
                </div>
            </div>

        </div>


        <!-- //////////////////////////////////
	//////////////END PAGE CONTENT///////// 
	////////////////////////////////////-->









<?php

include('footer.php');
?>

