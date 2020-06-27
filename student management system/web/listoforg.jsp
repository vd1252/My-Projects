
<%@include file="disp.jsp" %>
<%@include file="resheader.jsp" %>
<%@include file="databaseinfo.jsp" %>
<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>List of Courses</title>
    </head>
    <body>
        	<div class="checkout">
		<div class="container">
                  

			
<div class="checkout-right">
        <table class="timetable_sub">
                <thead>
                        <tr>
                                
                                <th>Name</th>
                                <th>City</th>
                                <th>Location</th>
                        </tr>
                </thead>
				
<%
try
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn=DriverManager.getConnection(PATH+PLACE,USERNAME,PASSWORD);
	try
	{
            String q="select * from registertable where usertype='Organisation'";
            PreparedStatement myst=conn.prepareStatement(q);
            ResultSet myresult=myst.executeQuery();
            if(myresult.next()==true)
            {
                do
                {
                 out.print("<td class='invert'>"+myresult.getString("name")+"</td> "
                              + " <td class='invert'>"+myresult.getString("city")+"</td> "
                                      + " <td class='invert'>"+myresult.getString("address")+"</td></tr> ");   
                                       
                }
                while(myresult.next());
                
            }
	}
	catch(Exception e)
	{
            out.print("Error in query "+e.getMessage());
	}
}
catch(Exception e)
{

            out.print("Error in connection "+e.getMessage());
}
%>
                            </table>
			</div>
		</div>
	</div>
    </body>
</html>
<script type="text/javascript">
    $(document).ready(function(){
                   $(".mydeletelink").click(function(){
                      var x=confirm("Do you really want to delete?");//ok-true or cancel-false
                      var ccode=$(this).attr("ccode");
                      var td_parent=$(this).parent();//division name
                      var tr_parent=$(this).parent().parent();
                      
                      if(x==true)
                      {
                          $.ajax({
                              method:"POST",
                              url:"ajaxpageforsms.jsp",
                              data:{sno:ccode}
                          })
                                  .done(function(msg){
                                    if($.trim(msg)=="success")
                                    {
                                        tr_parent.css({'backgroundColor':'#fb6c6c'});
                                        tr_parent.fadeOut(600,function()
                                        {
                                        tr_parent.remove()
                                        })
                                    }
                                    else
                                    {
                                        alert("Something went wrong");
                                    }
                                  })
                      }
    }) ;
                });
</script>