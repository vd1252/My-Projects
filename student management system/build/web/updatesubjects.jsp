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
        <div class="login">
<div class="container">
        <h2>Add Teacher Details</h2>
     
        <div id="myseconddiv">
                  
        <div class="login-form-grids animated wow slideInUp" data-wow-delay=".5s" >
            <form>
<%
try
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn=DriverManager.getConnection(PATH+PLACE,USERNAME,PASSWORD);
	try
	{
            String q="select CourseName from addcourse";
            PreparedStatement myst=conn.prepareStatement(q);
            ResultSet myresult=myst.executeQuery();
            if(myresult.next())
            {
                
                do
                {
                   out.print("<input type='checkbox' name='cnameallotment' value='"+myresult.getString("CourseName")+"'>"+myresult.getString("CourseName")+"<br>"); 
                  
                }
                while(myresult.next()==true);
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
    <input type="submit" value="Update Allotted Subjects" name="updateteachersubjects" id="updateteachersubjects">    
                
            </form> 
        </div>

        </div>
        </div>
</div>
<%
    if(request.getParameter("updateteachersubjects")!=null)
    {
         try
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn=DriverManager.getConnection(PATH+PLACE,USERNAME,PASSWORD);
	try
	{
            String mytid=request.getParameter("tid");
            
            
             String sub= "";
            String a[]=request.getParameterValues("cnameallotment");
            for(int i=0;i<a.length;i++){
                sub+=a[i]+",";
            }
            out.print(mytid);
            out.print(sub);
//            
//                String q1="update addteacherdetails set subjectsallotted=? where TeacherID=?";
//            PreparedStatement myst1=conn.prepareStatement(q1);
//            myst1.setString(1,sub);
//            myst1.setString(2,mytid);
//            int res1=myst1.executeUpdate();
//            if(res1>0)
//            {
//                out.print("<script type='text/javascript'>");
//                out.print("alert('Subjects Updated')");
//                out.print("</script>");
//                response.sendRedirect("subjectsallotted.jsp");
//            }
//                                        else
//                                        {
//                                            out.print("<script type='text/javascript'>");
//                                            out.print("alert('Subjects couldnot be updated')");
//                                            out.print("</script>");
//                                        }
//                
//           
//            
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
    }
    
%>
   

    </body>
</html>
