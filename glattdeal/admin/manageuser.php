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
                <h4 class="card-title">Manage Users</h4>
                <a class="heading-elements-toggle"><i class="icon-ellipsis font-medium-3"></i></a>
                <div class="heading-elements">
                   
                </div>
            </div>
            <div class="card-body collapse in">
                
                <div class="table-responsive">
                    <table class="table table-striped mb-0">
                        <thead>
                            <tr>
                                <th>S.No</th>
                                <th>Name </th>
                                <th>Email </th>
                                <th>Profile</th>
                                <th> Edit</th>
                                <th> Delete</th>
                            </tr>
                        </thead>
                        <tbody>
						<?php
						$count=1;
						$regquery="select * from register";
						$regres=mysqli_query($con,$regquery);
						while($regrow=mysqli_fetch_array($regres))
						{
						?>
                            <tr>
                                <th scope="row"><?php echo $count++ ?> </th>
                                <td><?php echo $regrow['first_name']?></td>
                                <td><?php echo $regrow['email_id']?></td>
                                <td><img src="../user/<?php  echo $regrow['profile'];?>" height="90px"/></td>
                                <td><a href="edituser.php?sid=<?php  echo $regrow['reg_id'];?>">&nbsp;&nbsp;<i class="icon-edit"></i></a></td>	
                                <td><a href="deleteuser.php?id=<?php  echo $regrow['reg_id'];?>">&nbsp;&nbsp;&nbsp; <i class="icon-delete"></i></a></td> 
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

    