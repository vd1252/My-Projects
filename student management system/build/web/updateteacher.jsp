<%
    if(!"administrator".equals(session.getAttribute("usertype")))
    {
        response.sendRedirect("loginpage.jsp");
    }
%>
<%@include file="disp.jsp" %>
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
<%
     String ttfname="",tlname="",tdoj="",tqualification="",tclassname="",tclasssem="",temail="";
                String tpass="",tmyfile="";
 try
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn=DriverManager.getConnection(PATH+PLACE,USERNAME,PASSWORD);
	try
	{
            String uptid=request.getParameter("uptid");
            session.setAttribute("updatetid",request.getParameter("uptid"));
            String q2="select * from addteacher,addteacherdetails where addteacher.TeacherID=addteacherdetails.TeacherID and addteacher.TeacherID=?";
            PreparedStatement myst2=conn.prepareStatement(q2);
            myst2.setString(1,uptid);
            ResultSet myresult2=myst2.executeQuery();
            if(myresult2.next())
            {
               
                ttfname=myresult2.getString("addteacher.Teacherfname");
                tlname=myresult2.getString("addteacher.Teacherlname");
                tdoj=myresult2.getString("addteacher.doj");
                tqualification=myresult2.getString("addteacher.qualifications");
                tclassname=myresult2.getString("addteacher.classincharge");
                tclasssem=myresult2.getString("addteacher.classsemester");
                temail=myresult2.getString("addteacher.teacheremail");
                tpass=myresult2.getString("addteacher.teacherpassword");
                tmyfile=myresult2.getString("addteacher.teacherphoto");
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
<div class="login">
<div class="container">
        <h2>Update Teacher</h2>
        <div id="myfirstdiv">
        <div class="login-form-grids animated wow slideInUp" data-wow-delay=".5s">
            <form name="form2" method="post" enctype="multipart/form-data">
            
                    <input type="text"  name="tfname" value=<%=ttfname%> ">
                    <input type="text"  name="tlname" value=<%=tlname%> ">
                    <input type="text" value="<%=tdoj%>" name="tdoj" required=" "><br>
                    <input type="text" value="<%=tqualification%>" name="tqualification" required=" " ><br>
 <select name="tclassname" class="form-control">
<option>Choose Class for incharge</option>
<%
try
{
    Class.forName("com.mysql.jdbc.Driver");
    Connection myconn=DriverManager.getConnection(PATH+PLACE,USERNAME,PASSWORD);
    try
    {
        String q="select * from addteacher where TeacherID=?";
        PreparedStatement myst=myconn.prepareStatement(q);
        myst.setString(1,request.getParameter("uptid"));
        ResultSet myresult=myst.executeQuery();
        if(myresult.next())
        {

            do
            {
                if(myresult.getString("TeacherID").equals(request.getParameter("uptid")))
                {
                    //if categoryid in addcategorytable matches with that in addproducttable
                    //show it selected
                   out.print("<option value=" + myresult.getString("classincharge") + " selected>" 
                 + myresult.getString("classincharge") + "</option>");
                   out.print("<option>No class to be allotted</option> <option>B.Tech CSE</option> <option>B.Tech Civil</option> <option>B.Tech Mechanical</option> <option>B.Tech IT</option> <option>B.Tech ECE</option> <option>B.Tech EE</option>");
                }
            }
            while(myresult.next());
        }
        else
        {
            out.print("<option>No Teacher with this id exists</option>");
        }
    }
    catch(Exception e)
    {
         out.print("<script type='text/javascript'>");
         out.print("alert('Error in query')" +e.getMessage());
         out.print("</script>");
    }
    finally
    {
      myconn.close();  
    }
}
catch(Exception e)
{
    out.print("<script type='text/javascript'>");
    out.print("alert('Error in connection')" +e.getMessage());
    out.print("</script>");
}
%>

 </select><br>
 <select name="tclasssem" class="form-control">
<option>Choose semester for incharge</option>
<%
try
{
    Class.forName("com.mysql.jdbc.Driver");
    Connection myconn=DriverManager.getConnection(PATH+PLACE,USERNAME,PASSWORD);
    try
    {
        String q="select * from addteacher where TeacherID=?";
        PreparedStatement myst=myconn.prepareStatement(q);
        myst.setString(1,request.getParameter("uptid"));
        ResultSet myresult=myst.executeQuery();
        if(myresult.next())
        {

            do
            {
                if(myresult.getString("TeacherID").equals(request.getParameter("uptid")))
                {
                    //if categoryid in addcategorytable matches with that in addproducttable
                    //show it selected
                   out.print("<option value=" + myresult.getString("classsemester") + " selected>" 
                 + myresult.getString("classsemester") + "</option>");
                   out.print(" <option>None</option> <option>1st</option> <option>2nd</option> <option>3rd</option> <option>4th</option> <option>5th</option> <option>6th</option>");
                }
            }
            while(myresult.next());
        }
        else
        {
            out.print("<option>No Teacher with this id exists</option>");
        }
    }
    catch(Exception e)
    {
         out.print("<script type='text/javascript'>");
         out.print("alert('Error in query')" +e.getMessage());
         out.print("</script>");
    }
    finally
    {
      myconn.close();  
    }
}
catch(Exception e)
{
    out.print("<script type='text/javascript'>");
    out.print("alert('Error in connection')" +e.getMessage());
    out.print("</script>");
}
%>

 </select><br>
  <input type="email" value="<%=temail%>"  name="temail" ><br>
  <input type="password" value="<%=tpass%>" name="tpassword"><br>
  <img src='images/<%=tmyfile%>' width="100px"><br>
  <input type="file" name="myfile"><br>
   <input type="submit" value="Add Teacher" name="addteacher" id="addteacherbutton">
   </form>
        </div>
</div>
        
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
    <input type="submit" value="Allot Subjects" name="addteachersubjects" id="addteachersubjects">    
                
            </form> 
        </div>

        </div>
        </div>
</div>

    <%
String uptfname="",uptlname="",uptdoj="",uptqualification="",uptclassname="",uptclasssem="",uptemail="",uptpassword="",upimagename="",uppath="";
boolean successful=true;
boolean isMultipart = ServletFileUpload.isMultipartContent(request);
if(isMultipart)
            {
                FileItemFactory factory = new DiskFileItemFactory();
                ServletFileUpload upload = new ServletFileUpload(factory);
                List<FileItem> items = null;

                    try
                    {
                         items = upload.parseRequest(request);
                    }
                    catch (FileUploadException e)
                    {
                        e.printStackTrace();
                    }
//                    out.print(items);
                        for(FileItem myitem:items)
                        {
                             if (myitem.isFormField())//form field means regular field
                             {
                                 String itemName1 = myitem.getFieldName();//name of text box is being fetched
                                 String value=myitem.getString();//actual categoryname is being fetched here
                                                                
                                 if(itemName1.equals("tfname")) //control's name - textbox name
                                 {
                                    uptfname=value;
                                 }
                                 else if(itemName1.equals("tlname")) //control's name - textbox name
                                 {
                                    uptlname=value;
                                 }
                                 else if(itemName1.equals("tdoj")) //control's name - textbox name
                                 {
                                    uptdoj=value;
                                 }
                                 else if(itemName1.equals("tqualification")) //control's name - textbox name
                                 {
                                    uptqualification=value;
                                 }
                                 else if(itemName1.equals("tclassname")) //control's name - textbox name
                                 {
                                    uptclassname=value;
                                 }
                                 else if(itemName1.equals("tclasssem")) //control's name - textbox name
                                 {
                                    uptclasssem=value;
                                 }
                                 else if(itemName1.equals("temail")) //control's name - textbox name
                                 {
                                    uptemail=value;
                                 }
                                 else if(itemName1.equals("tpassword")) //control's name - textbox name
                                 {
                                    uptpassword=value;
                                 }
                             }
                             else
                             {
                                     String type=myitem.getContentType();//content type that means a file
                                     long size=myitem.getSize()/1024; //kbytes conversion into KB and calculation of size

                                     if(size==0)
                                     {
                                         upimagename="default.jpeg";// no image is choosen by user
                                     }
                                     else if((type.equals("image/pjpeg") || type.equals("image/jpeg")//some browsers support jpeg or refer to this format as pjpeg
                                             || type.equals("image/png") || type.equals("image/x-png")
                                             || type.equals("image/gif")))
                                         {
                                                upimagename=new java.util.Date().getTime()+myitem.getName();//creating image name using timestamp
                                                uppath=getServletContext().getRealPath("/") + "images\\" + upimagename;

                                                File savefile=new File(uppath);
                                                myitem.write(savefile);    
                                         }
                                     else
                                     {
                                         successful=false;
                                         out.println("Only pictures are allowed");
                                     }    
                             }

                       }
            
                if(successful==true)
                   {

                                try
                                {
                                   Class.forName("com.mysql.jdbc.Driver"); 
                                    Connection myconn=DriverManager.getConnection(PATH+PLACE,USERNAME,PASSWORD);
                                    try
                                    {
                                            session.setAttribute("temailid",uptemail);
                                            String q="update addteacher set Teacherfname=?,Teacherlname=?,doj=?,qualifications=?,classincharge=?,classsemester=?,teacheremail=?,teacherpassword=?,teacherphoto=? where TeacherID=?";
                                      
                                        PreparedStatement myst=myconn.prepareStatement(q);
                                         
                                         
                                        myst.setString(1,uptfname);
                                        myst.setString(2,uptlname);
                                        myst.setString(3,uptdoj);
                                        myst.setString(4,uptqualification);
                                        myst.setString(5,uptclassname);
                                        myst.setString(6,uptclasssem);
                                        myst.setString(7,uptemail);
                                        myst.setString(8,uptpassword);
                                        myst.setString(9,upimagename);
                                        myst.setString(10,request.getParameter("uptid"));
                                        int result=myst.executeUpdate();
                                        
                                        
                                        if(result>0)
                                        {
                                            out.print("<script type='text/javascript'>");
                                            out.print("alert('Teacher updated successfully')");
                                            out.print("</script>");
                                            response.sendRedirect("subjectsallotted.jsp");
                                        }
                                        else
                                        {
                                            out.print("<script type='text/javascript'>");
                                            out.print("alert('Teacher cannot be updated')");
                                            out.print("</script>");
                                        }
                                        
                                        
                                    }
                                    catch(Exception e)
                                    {
                                        out.print("Error in query " + e.getMessage());
                                    }
                                    finally
                                    {
                                        myconn.close();
                                    }
                                }
                                catch(Exception e)
                                {
                                    out.print("<center>Error in connection " +e.getMessage() +"</center>");
                                }
                   }
            }
            else
            {
                out.print("not multipart");
            }
  %>
  </body>
</html>
<script type="text/javascript">
    $(document).ready(function(){
       $("#myfirstdiv").show();
       $("#myseconddiv").hide();
//       $("#addteacherbutton").click(function(e){
//           e.preventDefault();
//           $("#myfirstdiv").hide();
//           $("#myseconddiv").show();
//       })
    });
</script>
