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
        <title>JSP Page</title>
    </head>
       <body>
        	<div class="checkout">
		<div class="container">
                    <h2>List of Teachers : 
<%
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn=DriverManager.getConnection(PATH+PLACE,USERNAME,PASSWORD);
        try
        {
            String q="select count(*) from addteacher";
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
							<th>Teacher ID</th>	
							<th>Teacher Photo</th>
							<th>Teacher Name</th>
							<th>Class Incharge</th>
							<th>Email Id</th>
							<th>Qualifications</th>
                                                        <th>Update</th>
                                                        <th>Delete</th>
                                                         <th>More Details</th>
						</tr>
					</thead>
				
<%
try
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn=DriverManager.getConnection(PATH+PLACE,USERNAME,PASSWORD);
	try
	{
            String q="select * from addteacher,addteacherdetails where addteacher.TeacherID=addteacherdetails.TeacherID";
            PreparedStatement myst=conn.prepareStatement(q);
            ResultSet myresult=myst.executeQuery();
            if(myresult.next()==true)
            {
                do
                {
                 out.print(" <tr class='rem1'> <td class='invert'>"+myresult.getString("TeacherID")+"</td>"
                      + " <td class='invert-image'>"
                            + "<img src='images/"+myresult.getString("teacherphoto")+"' width='150px' height='150px' class='img-responsive' />"
                            + "</td>"
                      + "<td class='invert'>"+myresult.getString("teacherfname")+" "+myresult.getString("teacherlname")+" </td> "
                      + "<td class='invert'>"+myresult.getString("classincharge")+" "+myresult.getString("classsemester")+"</td>  "
                      + "<td class='invert'>"+myresult.getString("teacheremail")+"</td> "
                      + "<td class='invert'>  "+myresult.getString("qualifications")+"</td>"
//                      + " <td class='invert'>"+myresult.getString("MMFINAL")+"</td>"
//                      + " <td class='invert'>"+myresult.getString("Tutorial")+"</td> "
//                      + "<td class='invert'>"+myresult.getString("Assignment")+"</td> "
                      + "<td class='invert'><a href='updateteacher.jsp?uptid="+myresult.getString("TeacherID")+"'>Update</a></td>"
                      + "<td class='invert'><a href='#' uptid="+ myresult.getString("TeacherID") +" class='mydeletelink'>Delete</a></td>"
                 + "<td class='invert'><a href='subjectsallotted.jsp?dettid="+myresult.getString("TeacherID")+"'>More Details</a></td></tr>");   
                                       
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
</html>
