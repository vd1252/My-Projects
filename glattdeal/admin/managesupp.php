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
                <h4 class="card-title">Manage Suppliers</h4>
                <a class="heading-elements-toggle"><i class="icon-ellipsis font-medium-3"></i></a>
                <div class="heading-elements">
                    <ul class="list-inline mb-0">
                        <li><a href="suppadd.php">+Add Supplier</a></li>
                       
                    </ul>
                </div>
            </div>
            <div class="card-body collapse in">
               
                <div class="table-responsive">
                    <table class="table table-striped mb-0">
                        <thead>
                            <tr>
                                <th>S.No</th>
                                <th>Supplier </th>
                                <th>Image </th>
                                <th>Address </th>
                                <th>Contact </th>  
                                <th>Edit</th>
                                <th>Delete</th>
                            </tr>
                        </thead>
                        <tbody>
						<?php
						$count=1;
						$adquery="select * from supplier";
						$adres=mysqli_query($con,$adquery);
						while($adrow=mysqli_fetch_array($adres))
						{
						?>
                            <tr>
                                <th scope="row"><?php echo $count++ ?> </th>
                                <td><?php echo $adrow['sup_name']?></td>
								<td><img src="../user/<?php  echo $adrow['profile'];?>" width="100px" height="100px"/></td>
								<td><?php echo $adrow['sup_address']?></td>
								<td><?php echo $adrow['sup_contact']?></td>
								
                                <td><a href="supedit.php?sid=<?php  echo $adrow['sup_id'];?>">&nbsp;&nbsp;
								<i class="icon-edit"></i></a></td>	
                                <td><a href="supdelete.php?id=<?php  echo $adrow['sup_id'];?>"> &nbsp;&nbsp;&nbsp; <i class="icon-delete"></i></a></td> 
                            </tr>
							
						<?php
						}
						?>
						
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

    