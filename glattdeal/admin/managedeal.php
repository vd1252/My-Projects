<?php
include('connect.php');
include('adminheader.php')
?>
<style>
.brand-logo1
{
position: relative;
bottom: 13px;
right: 31px;

}
a
{
color: #373a3c;
}

#search
{
margin-left: -14px;
width: 46%;
}
.table th, .table td 
{
    padding: 1rem 1rem;
}
</style>
    <div class="app-content content container-fluid">
      <div class="content-wrapper">
        <div class="content-header row">
          
          
        </div>
        <div class="content-body"><!-- Basic Tables start -->
<div class="row">
    <div class="col-xs-12">
        <div class="card">
            
            
        </div>
    </div>
</div>



<div class="page-title">
              
                <h3>Search Deal</h3>
              </div>
              <div class="title_right">
                <div class="col-md-5 col-sm-5 col-xs-12 form-group pull-right top_search">
                  <div class="input-group">
                    <input type="text" class="form-control" placeholder="Search for..." id="search" style="width:400px">
                    <!--<span class="input-group-btn">
                      <button class="btn btn-default" type="button">Go!</button>
                    </span>-->
                  </div>
                </div>
              </div>
            </div>
<div class="row">
    <div class="col-xs-12">
        <div class="card">
            <div class="card-header">
                <h4 class="card-title">Manage Deals</h4>
                <a class="heading-elements-toggle"><i class="icon-ellipsis font-medium-3"></i></a>
                <div class="heading-elements">
                    <ul class="list-inline mb-0">
                        <li><a href="admindealadd.php">+Add Deal</a></li>
                        
                    </ul>
                </div>
            </div>
            <div class="card-body collapse in">
                
                <div class="table-responsive">
                    <table class="table table-striped mb-0">
                        <thead>
                            <tr>
                                <th>S.No</th>
                                <th>Supplier Name </th>
                                <th>Title </th>
                                <th>Image</th>
                                <th> Edit</th>
                                <th> Delete</th>
                            </tr>
                        </thead>
                        <tbody id="myTable">
						<?php
						$count=1;
						$dquery="select d.*,s.* from deal d join supplier s on d.sup_id=s.sup_id";
						$dres=mysqli_query($con,$dquery);
						while($drow=mysqli_fetch_array($dres))
						{
						?>
                            <tr>
                                <th scope="row"><?php echo $count++ ?> </th>
                                <td><?php echo $drow['sup_name']?></td>
                                <td><?php echo $drow['dealtitle']?>
								<p><?php echo $drow['deal_totalamount']?></p>
								</td>
                                
                                <td style="width:150px;"><img src="../user/<?php  echo $drow['dealimage_1'];?>" height="90px"/></td>
                                <td><a href="editdeal.php?sid=<?php  echo $drow['deal_id'];?>">&nbsp;&nbsp;<i class="icon-edit"></i></a></td>	
                                <td><a href="deletedeal.php?id=<?php  echo $drow['deal_id'];?>"> &nbsp;&nbsp;&nbsp; <i class="icon-delete"></i></a></td> 
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