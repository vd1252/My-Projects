<%
    if(!"administrator".equals(session.getAttribute("usertype")))
    {
        response.sendRedirect("loginpage.jsp");
    }
%>
<%@include file="disp.jsp" %>
<%@page import="java.util.Arrays" %>
<%@include file="adminheader.jsp" %>
<%@include file="databaseinfo.jsp" %>
<%@page import="java.io.File"%>
<%@page import="org.apache.commons.fileupload.FileUploadException"%>
<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
<%@page import="org.apache.commons.fileupload.FileItemFactory"%>
<%@page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>
<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Teacher</title>
        <script src="js/jquery-1.11.1.min.js"></script>
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
<br>
  <select id="question" class="form-control" name="securityquestion">
                                                <option>Choose Security Question</option>
                                                <option>What is Your specialisation?</option>
                                                <option>What is your date of birth ?</option>
                                               
                                                <option>What is the place you wish to visit?</option>
                                            </select><br>
    <input type="text" name="securityanswer" placeholder="Your security answer" required=" " ><br>
    
    <select name="tdepartment" class="form-control">
        <option>Choose department</option>
         <option>Computer Science</option>
        <option>Information Technology</option>
        <option>Civil</option>
        <option>Electronics and Communication</option>
        <option>Electrical</option>
        <option>Mechanical</option>
    </select><br>   
      <select name="tdesignation" class="form-control">
        <option>Choose Designation</option> 
         <option>Head of Department</option>  
        <option>Permanent Faculty</option>
        <option>Assistant Professor</option>
        
    </select><br>
    <input type="text" name="tsalary" placeholder="Salary of employee" required=" " ><br><br>
    
                                         
    <input type="submit" value="Add Information" name="addteachersubjects" id="addteachersubjects">    
                
            </form> 
        </div>

        </div>
     
        </div>
</div>
<%
    if(request.getParameter("addteachersubjects")!=null)
    {
         try
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn=DriverManager.getConnection(PATH+PLACE,USERNAME,PASSWORD);
	try
	{
            String mytid="";
            String q1="select TeacherID from addteacher where teacheremail=?";
            PreparedStatement myst1=conn.prepareStatement(q1);
            myst1.setString(1,session.getAttribute("temailid").toString());
            ResultSet myres1=myst1.executeQuery();
            if(myres1.next())
            {
                mytid=myres1.getString("TeacherID");
            }
            else
            {
                out.print("Some error occured here");
            }
            
             String sub= "";
            String a[]=request.getParameterValues("cnameallotment");
            for(int i=0;i<a.length;i++){
                sub+=a[i]+",";
            }
            String q2="select TeacherID from addteacherdetails where TeacherID=?";
            PreparedStatement myst2=conn.prepareStatement(q2);
            myst2.setString(1,mytid);
            ResultSet myres2=myst2.executeQuery();
            if(myres2.next())
            {
                 out.print("<script type='text/javascript'>");
                                            out.print("alert('Subjects already allotted')");
                                            out.print("</script>");
            }
            else
            {
                String q="insert into addteacherdetails values(?,?,?,?,?,?,?)";
            PreparedStatement myst=conn.prepareStatement(q);
            myst.setString(1,mytid);
            myst.setString(2,sub);
            myst.setString(3,request.getParameter("securityquestion"));
            myst.setString(4,request.getParameter("securityanswer"));
            myst.setString(5,request.getParameter("tdesignation"));
            myst.setString(6,request.getParameter("tsalary"));
            myst.setString(7,request.getParameter("tdepartment"));
            int res=myst.executeUpdate();
            if(res>0)
                                        {
                                            out.print("<script type='text/javascript'>");
                                            out.print("alert('Details added')");
                                            out.print("</script>");
                                            response.sendRedirect("listofteacher.jsp");
                                        }
                                        else
                                        {
                                            out.print("<script type='text/javascript'>");
                                            out.print("alert('Details couldnot be added')");
                                            out.print("</script>");
                                        }
                
            }
            
	}
	catch(Exception e)
	{

            out.print("Error in query qhh"+e.getMessage());
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
