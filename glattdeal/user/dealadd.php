<?php
ob_start();
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
$msg11="";
//$did=$_GET['dealid'];
if(isset($_POST['btnsubmit']))
 { 
	 
	 $title=$_POST['deal_title'];
	 $desc=$_POST['deal_desc'];
	 $price=$_POST['deal_price'];
	 $discount=$_POST['deal_discount'];
	 $totamount=$_POST['deal_totamount'];
	 $location=$_POST['location'];
	 $profile=$_FILES['profile']['name'];
	 $profile1=$_FILES['profile1']['name'];
	 $profile2=$_FILES['profile2']['name'];
	 $catid=$_POST['deal_catid'];
	 $subcatid=$_POST['deal_subcatid'];
	 $poston=$_POST['postedon'];
	 $validity=$_POST['valid'];
	 $supid=$_SESSION['supplierid'];
	 
	 move_uploaded_file($_FILES['profile']['tmp_name'],"images/".$_FILES['profile']['name']);
	$profile="images/".$_FILES['profile']['name'];
	move_uploaded_file($_FILES['profile1']['tmp_name'],"images/".$_FILES['profile1']['name']);
	$profile1="images/".$_FILES['profile1']['name'];
	move_uploaded_file($_FILES['profile2']['tmp_name'],"images/".$_FILES['profile2']['name']);
	$profile2="images/".$_FILES['profile2']['name'];
	
	 
	 $rquery="insert into deal(dealtitle,dealdesc,dealactualprice,dealdiscount,deal_totalamount,location,dealimage_1,dealimage_2,dealimage_3,dealcat_id,dealsubcat_id,posted_on,validity,sup_id) values('$title','$desc',$price,$discount,$totamount,'$location','$profile','$profile1','$profile2',$catid,$subcatid,'$poston','$validity',$supid)";
	 echo $rquery;
	 
	 $rres=mysqli_query($con,$rquery);//true/false
	 if($rres)
	 {
		 $msg11="Data inserted Successfully";
	 }
	 else
	 {
		$msg11="Error in insertion".mysqli_error($con);
	 }
 
}
?>
<?php
//Fetch all the country data
$query = $con->query("SELECT * FROM category WHERE catstatus = 1 ORDER BY dealcat_id ASC");

//Count total number of rows
$rowCount = $query->num_rows;
?>
<script src=" app-assets/js/core/libraries/jquery.min.js" type="text/javascript"></script>

<script>
   $( document ).ready( function () {
	//form validation rules
	$("#register1").validate({
		rules:
		{
            deal_title:"required",
						deal_desc:"required",
						location:"required",
						profile:"required",
						profile1:"required",
						profile2:"required",
						deal_catid:"required",
						deal_subcatid:"required",
						postedon:"required",
					valid:"required",
						supid:"required",
           
			deal_price:{
				required:true,
				minlength:1,
				number: true,
			},
			deal_discount:{
				required:true,
				minlength:1,
				number: true,
			},
			deal_totamount:{
				required:true,
				minlength:1,
				number: true
            },
		},
		
	});
  });
     </script>
     

     <script type="text/javascript">
$(document).ready(function(){
    $('#category').on('change',function(){
        var countryID = $(this).val();
        if(countryID){
            $.ajax({
                type:'POST',
                url:'ajaxData.php',
                data:'dealcat_id='+countryID,
                success:function(html){
                    $('#subcategory').html(html);
               
                }
            }); 
        }else{
            $('#subcategory').html('<option value="">Select Category first</option>');
           
        }
    });
    

});
</script>
	 <div class="global-wrap">


       


        <!-- //////////////////////////////////
	//////////////PAGE CONTENT///////////// 
	////////////////////////////////////-->



        <div class="container">
            <div class="row">
                <div class="col-md-3">
                    <aside class="sidebar-left">
                        <ul class="nav nav-pills nav-stacked nav-arrow">
                        <li class="active"><a href="supplier-setting.php">My Profile</a>
                            </li>
							<li class=""><a href="changepass-sup.php">Change Password</a>
                            </li>
							<li class=""><a href="dealadd.php">Add Deal</a>
                            </li>
							<li class=""><a href="viewad.php">My Posted Deals</a>
                            </li>
							<li class=""><a href="supplier-logout.php">Logout</a>
                            </li>
                           
                        </ul>
                    </aside>
                </div>
                <div class="col-md-9">
                    <div class="row">
                        <div class="col-md-6">
						<h2>ADD YOUR DEAL</h2>
                            <form method="post" id="register1"  enctype="multipart/form-data" action="">
                                 
                                <?php
                        if($msg11!="")
                        {
                            echo "<p class='alert alert-success'>$msg11</p>";
                        }
                        
                        ?>
                                                        <div class="form-group"> 
                        Title <input type="text" class="form-control" name="deal_title"/>
                        </div>
                        <div class="form-group"> 
                        Description<input type="text" class="form-control" name="deal_desc"/>
                        </div>
                        <div class="form-group"> 
                        Price<input type="text" class="form-control" name="deal_price"/>
                        </div>
                        <div class="form-group"> 
                        Discount<input type="text" class="form-control" name="deal_discount"/>
                        </div>
                        <div class="form-group"> 
                        Total Amount<input type="text" class="form-control" name="deal_totamount"/>
                        </div>
                        <div class="form-group"> 
                        Location<input type="text" class="form-control" name="location"/>
                        </div>


                        <div class="form-group"> 
                       
                        Posted On<input type="date" class="form-control" name="postedon"/>
                        </div>
                       
                       
                                                    
                                
                                
                                <input type="submit" value="Add Deal" class="btn btn-primary" name="btnsubmit">
                            
                            
                        </div>

                        <div class="col-md-6" style="margin-top: 42px;">
                        <div class="form-group"> 
                        Category 

                                 <select class="form-control"  name="deal_catid" id="category">
                            <option value="">Select Category</option>
                            <?php
                            if($rowCount > 0){
                                while($row = $query->fetch_assoc()){ 
                                    echo '<option value="'.$row['dealcat_id'].'">'.$row['catname'].'</option>';
                                }
                            }else{
                                echo '<option value="">Category not available</option>';
                            }
                            ?>
                        </select>
                        
                        </div>
                        <div class="form-group"> 
                        Sub Category  
                        
                        <select class="form-control" name="deal_subcatid" id="subcategory">
                        <option value="">Select Category first</option>
                         </select>
                       
                        </div>
                        <div class="form-group"> 
                        Supplier 
                        <select class="form-control" name="supid">
                        <option value="1"  >Food & Drink Fast Food
                        Wah Ji Wah Chandigarh</option>
                        <option value="2">Swag Mohali</option>
                        <option value="3">Katani Dhaba Panchkula</option>
                        <option value="4" >Wellington Cafe</option>
                        <option value="5" >Bon Nourriture Chandigarh</option>
                        <option value="6" >French Press Cafe</option>
                        <option value="7" >REGENTA Almeida</option>
                        <option value="8" >Bean Bucket Cafe at Hotel Turquoise</option>
                        <option value="9" >Sagar Ratna Mohali</option>
                        <option value="10" >Buffet Lounge (Hotel KLG)</option>
                        <option value="11" >Jukero Unisex Salon</option>
                        <option value="12" >LA Bella Mohali</option>
                        </select>
                        </div>
                      
                      
                        <div class="form-group"> 
                        <input type="file"  class="form-control" name="profile" style="padding-top: 0;padding-left: 0;margin-top: 35px;"/>
                        </div>
                        <div class="form-group"> 
                        <input type="file"  class="form-control" name="profile1" style="padding-top: 0;padding-left: 0;margin-top: 35px;"/>
                        </div>
                        <div class="form-group"> 
                        <input type="file" class="form-control" name="profile2" style="padding-top: 0;padding-left: 0;margin-top: 35px;"/>
                        </div>
                        <div class="form-group"> 
                        Validity<input type="date" class="form-control" name="valid"/>
                        </div>

                         </div>
</form>
                    </div>
                    <div class="gap"></div>
                </div>




                
            </div>

        </div>
</body>

</html>

<?php
include('footer.php')

?>