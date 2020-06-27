<%
    if(!"administrator".equals(session.getAttribute("usertype")))
    {
        response.sendRedirect("loginpage.jsp");
    }
%>
<%@include file="disp.jsp" %>
<%@include file="adminheader.jsp" %>
<%@page import="java.sql.*" %>
<%@include file="databaseinfo.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update Courses</title>
    </head>
    <body>
        <div class="login">
<div class="container">
        <h2>Update Course</h2>
<%
    String cc="",cnm="",bnm="",sem="",mmmst="",mmf="",tut="",ass="";
try
{
   Class.forName("com.mysql.jdbc.Driver");
   Connection conn=DriverManager.getConnection(PATH+PLACE,USERNAME,PASSWORD);
   try
   {
       String q="select * from addcourse where CourseCode=?";
       PreparedStatement myst=conn.prepareStatement(q);
       myst.setString(1,request.getParameter("cc"));
       ResultSet myresult=myst.executeQuery();
       if(myresult.next())
       {
            cc=myresult.getString("CourseCode");
            cnm=myresult.getString("CourseName");
             bnm=myresult.getString("BranchName");
             sem=myresult.getString("Semester");
              mmmst=myresult.getString("MMMST");
              mmf=myresult.getString("MMFinal");
             tut=myresult.getString("Tutorial");
             ass=myresult.getString("Assignment");
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
        <div class="login-form-grids animated wow slideInUp" data-wow-delay=".5s">
                <form>
                    <input type="text" value="<%=cc%>" name="cc">
                    <input type="text" value="<%=cnm%>" name="cnm">
                    <input type="text" value="<%=bnm%>" name="bnm"><br>
                    <input type="text" value="<%=sem%>" name="sem"><br>
                    <input type="text" value="<%=mmmst%>" name="mmmst"><br>
                     <input type="text" value="<%=mmf%>" name="mmf"><br>
                      <input type="text" value="<%=tut%>" name="tut"><br>
                       <input type="text" value="<%=ass%>" name="ass"><br>
                        <input type="submit" value="Update Course" name="updatecourse">
                        
                </form>
            </div>
</div>
</div>
    </body>
</html>
<%
if(request.getParameter("updatecourse")!=null)
{
        try
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn=DriverManager.getConnection(PATH+PLACE,USERNAME,PASSWORD);
	try
	{
            String q="update addcourse set CourseName=?,BranchName=?,Semester=?,MMMST=?,MMFinal=?,Tutorial=?,Assignment=? where CourseCode=?";
            PreparedStatement myst=conn.prepareStatement(q);
            myst.setString(1,request.getParameter("cnm"));
            myst.setString(2,request.getParameter("bnm"));
            myst.setString(3,request.getParameter("sem"));
            myst.setString(4,request.getParameter("mmmst"));
            myst.setString(5,request.getParameter("mmf"));
            myst.setString(6,request.getParameter("tut"));
            myst.setString(7,request.getParameter("ass"));
            myst.setString(8,request.getParameter("cc"));
            int result=myst.executeUpdate();
            if(result>0)
            {
                out.print("<script type='text/javascript'>alert('Course updated successfully')</script>");
            }
            else
            {
               out.print("<script type='text/javascript'>alert(Course couldnot be updated )</script>"); 
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
    }
%>
