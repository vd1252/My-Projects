<?php
include('connect.php');

;
include('adminheader.php')
?>


<style>

    .brand-logo1
    {
        position: relative;
        bottom: 13px;
        left: 890px;

    }
a
    {
        color: #373a3c;
    }
</style>
    <div class="app-content content container-fluid">
      <div class="content-wrapper">
        <div class="content-header row">
          <div class="content-header-left col-md-6 col-xs-12 mb-1">
            <h2 class="content-header-title">Basic Tables</h2>
          </div>
          <div class="content-header-right breadcrumbs-right breadcrumbs-top col-md-6 col-xs-12">
            <div class="breadcrumb-wrapper col-xs-12">
              <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="login.php">Home</a>
                </li>
              </ol>
            </div>
          </div>
        </div>
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
                                <th>Name </th>
                                <th>Email </th>
                                <th>Profile</th>
                                <th> Edit</th>
                                
                            </tr>
                        </thead>
                        <tbody>
						<?php
						$count=1;
						$regquery="select * from login where id=$id";
						$regres=mysqli_query($con,$regquery);
						while($regrow=mysqli_fetch_array($regres))
						{
						?>
                            <tr>
                                <th scope="row"><?php echo $count++ ?> </th>
                                <td><?php echo $regrow['username']?></td>
                                <td><?php echo $regrow['email']?></td>
                                <td><img src="../user/<?php  echo $regrow['image'];?>" height="90px"/></td>
                                <td><a href="editadmin.php?admin_id=<?php  echo $regrow['id'];?>">&nbsp;&nbsp;<i class="icon-edit"></i></a></td>	
            
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

    