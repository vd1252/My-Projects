<%
    if(!"administrator".equals(session.getAttribute("usertype")))
    {
        response.sendRedirect("loginpage.jsp");
    }
%>
<%@include file="disp.jsp" %>
<%@include file="adminheader.jsp" %>
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
                    <h2>List of Courses : 
<%
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn=DriverManager.getConnection(PATH+PLACE,USERNAME,PASSWORD);
        try
        {
            String q="select count(*) from addcourse";
            PreparedStatement myst=conn.prepareStatement(q);
            ResultSet myresult=myst.executeQuery();
            if(myresult.next())
            {
                out.print(" <span> "+myresult.getInt(1)+"</span></h2>");
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
			
			<div class="checkout-right">
				<table class="timetable_sub">
					<thead>
						<tr>
							<th>S No.</th>	
							<th>Course Code</th>
							<th>Course Name</th>
							<th>Branch Name</th>
							<th>Semester</th>
							<th>Maximum Marks in MST</th>
                                                        <th>Maximum Marks in Final</th>
                                                        <th>Number of Tutorials</th>
                                                        <th>Number of Assignments</th>
                                                    
                                                        <th>Delete</th>
						</tr>
					</thead>
				
<%
try
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn=DriverManager.getConnection(PATH+PLACE,USERNAME,PASSWORD);
	try
	{
            String q="select * from addcourse";
            PreparedStatement myst=conn.prepareStatement(q);
            ResultSet myresult=myst.executeQuery();
            if(myresult.next()==true)
            {
                do
                {
                 out.print(" <tr class='rem1'> <td class='invert'>"+myresult.getString("SerialNo")+"</td>"
                      + " <td class='invert'>"+myresult.getString("CourseCode")+"</td> "
                      + "<td class='invert'>"+myresult.getString("CourseName")+"</td> "
                      + "<td class='invert'>"+myresult.getString("BranchName")+"</td>  "
                      + "<td class='invert'>"+myresult.getString("Semester")+"</td> "
                      + "<td class='invert'>  "+myresult.getString("MMMST")+"</td>"
                      + " <td class='invert'>"+myresult.getString("MMFINAL")+"</td>"
                      + " <td class='invert'>"+myresult.getString("Tutorial")+"</td> "
                      + "<td class='invert'>"+myresult.getString("Assignment")+"</td> "
                      + "<td class='invert'><a href='#' ccode="+ myresult.getString("SerialNo")+" class='mydeletelink'>Delete</a></td></tr>");   
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