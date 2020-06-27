<?php
include('connect.php');
include('adminheader.php')
?>

<style>
.brand-logo1
{
	position: relative;
	bottom: 13px;
	right: 33px;

}

a
{
	color: #373a3c;
}
.table th, .table td 
{
padding: 1rem 1rem;
}
</style>


    <div class="app-content content container-fluid">
      <div class="content-wrapper">
        
        <div class="content-body"><!-- Basic Tables start -->
<div class="row">
    <div class="col-xs-12">
        <div class="card">
            
            
        </div>
    </div>
</div>
<div class="row">
    <div class="col-xs-12">
        <div class="card">
            <div class="card-header">
                <h4 class="card-title">Manage Reviews</h4>
                <a class="heading-elements-toggle"><i class="icon-ellipsis font-medium-3"></i></a>
               
            </div>
            <div class="card-body collapse in">
               
                <div class="table-responsive">
                    <table class="table table-striped mb-0">
                        <thead>
                            <tr>
                                <th>S.No</th>
                                <th>User Name </th>
                                <th>User Image </th>
                                <th>Deal Name </th>
                                <th>Deal Image </th>
                                <th>Comment </th>
                                
                                <th>Delete</th>
                            </tr>
                        </thead>
                        <tbody>
						<?php
						$count=1;
						$adquery="select r.*, d.*,reg.* from review r join deal d on r.deal_id=d.deal_id join register reg on r.review_by=reg.reg_id ";
						$adres=mysqli_query($con,$adquery);
						while($adrow=mysqli_fetch_array($adres))
						{
						?>
                            <tr>
                                <th scope="row"><?php echo $count++ ?> </th>
                                <td><?php echo $adrow['first_name']?></td>
								<td><img src="../user/<?php  echo $adrow['profile'];?>" width="100px" height="100px"/></td>
								<td><?php echo $adrow['dealtitle']?></td>
								<td><img src="../user/<?php  echo $adrow['dealimage_1'];?>" width="100px" height="100px"/></td>
								<td><?php echo $adrow['review']?></td>
								
								
                                <td><a href="revdelete.php?id=<?php  echo $adrow['review_id'];?>"> &nbsp;&nbsp;&nbsp; <i class="icon-delete"></i></a></td> 
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
    <!-- ////////////////////////////////////////////////////////////////////////////-->
<?php
include('adminfooter.php')
?>

    