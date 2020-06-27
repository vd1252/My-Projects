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
                <h4 class="card-title">Manage Subcategories</h4>
                <a class="heading-elements-toggle"><i class="icon-ellipsis font-medium-3"></i></a>
                <div class="heading-elements">
                    <ul class="list-inline mb-0">
                        <li><a href="subcatadd.php">+Add SubCategory</a></li>
                        
                    </ul>
                </div>
            </div>
            <div class="card-body collapse in">
                <div class="table-responsive">
                    <table class="table table-striped mb-0">
                        <thead>
                            <tr>
                                <th>S.No</th>
                                <th>Category</th>
                                <th>SubCategory</th>
                                <th>Edit</th>
                                <th>Delete</th>
                            </tr>
                        </thead>
                        <tbody>
						<?php
						$count=1;
						$subcatquery="select c.*,s.* from category c join subcategory s on c.dealcat_id=s.dealcat_id";
						$subcatres=mysqli_query($con,$subcatquery);
						while($subcatrow=mysqli_fetch_array($subcatres))
						{
						?>
                            <tr>
                                <th scope="row"><?php echo $count++ ?> </th>
                                <td><?php echo $subcatrow['catname']?></td>
                                <td><?php echo $subcatrow['subcat_name']?></td>
                                <td><a href="subcatedit.php?subid=<?php  echo $subcatrow['dealsubcat_id'];?>">&nbsp;&nbsp;<i class="icon-edit"></i></a></td>	
                                <td><a href="subcatdelete.php?catids=<?php  echo $subcatrow['dealsubcat_id'];?>">&nbsp;&nbsp;&nbsp; <i class="icon-delete"></i></a></td> 
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

    