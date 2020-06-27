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
<div class="login">
<div class="container">
        <h2>Add Teacher</h2>
        <div id="myfirstdiv">
        <div class="login-form-grids animated wow slideInUp" data-wow-delay=".5s">
            <form name="form2" method="post" enctype="multipart/form-data">
            
                    <input type="text" placeholder="Teacher First Name" name="tfname" required=" " >
                    <input type="text" placeholder="Teacher Last Name" name="tlname" required=" " >
                    <input type="text" placeholder="Date of Joining" name="tdoj" required=" "><br>
                    <input type="text" placeholder="Qualifications" name="tqualification" required=" " ><br>
 <select name="tclassname" class="form-control">
<option>Choose Class for incharge</option>
<option>No class to be allotted</option>
<option>B.Tech CSE</option>
<option>B.Tech Civil</option>
<option>B.Tech Mechanical</option>
<option>B.Tech IT</option>
<option>B.Tech ECE</option>
<option>B.Tech EE</option>
 </select><br>
 <select name="tclasssem" class="form-control">
<option>Choose semester for incharge</option>
<option>None</option>
<option>1st</option>
<option>2nd</option>
<option>3rd</option>
<option>4th</option>
<option>5th</option>
<option>6th</option>
 </select><br>
  <input type="email" placeholder="Email Address" required=" " name="temail" ><br>
  <input type="password" placeholder="Password" required=" " name="tpassword"><br>
  <input type="file" name="myfile">
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
String tfname="",tlname="",tdoj="",tqualification="",tclassname="",tclasssem="",temail="",tpassword="",imagename="",path="";
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
                                    tfname=value;
                                 }
                                 else if(itemName1.equals("tlname")) //control's name - textbox name
                                 {
                                    tlname=value;
                                 }
                                 else if(itemName1.equals("tdoj")) //control's name - textbox name
                                 {
                                    tdoj=value;
                                 }
                                 else if(itemName1.equals("tqualification")) //control's name - textbox name
                                 {
                                    tqualification=value;
                                 }
                                 else if(itemName1.equals("tclassname")) //control's name - textbox name
                                 {
                                    tclassname=value;
                                 }
                                 else if(itemName1.equals("tclasssem")) //control's name - textbox name
                                 {
                                    tclasssem=value;
                                 }
                                 else if(itemName1.equals("temail")) //control's name - textbox name
                                 {
                                    temail=value;
                                 }
                                 else if(itemName1.equals("tpassword")) //control's name - textbox name
                                 {
                                    tpassword=value;
                                 }
                             }
                             else
                             {
                                     String type=myitem.getContentType();//content type that means a file
                                     long size=myitem.getSize()/1024; //kbytes conversion into KB and calculation of size

                                     if(size==0)
                                     {
                                         imagename="default.jpeg";// no image is choosen by user
                                     }
                                     else if((type.equals("image/pjpeg") || type.equals("image/jpeg")//some browsers support jpeg or refer to this format as pjpeg
                                             || type.equals("image/png") || type.equals("image/x-png")
                                             || type.equals("image/gif")))
                                         {
                                                imagename=new java.util.Date().getTime()+myitem.getName();//creating image name using timestamp
                                                path=getServletContext().getRealPath("/") + "images\\" + imagename;

                                                File savefile=new File(path);
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
                                        String q1="select TeacherID from addteacher where teacheremail=?";
                                        PreparedStatement myst1=myconn.prepareStatement(q1);
                                        myst1.setString(1,temail);
                                        ResultSet myresult1=myst1.executeQuery();
                                        if(myresult1.next())
                                        {
                                            out.print("<script type='text/javascript'>");
                                            out.print("alert('Teacher with this id already added')");
                                            out.print("</script>");
                                        }
                                        else
                                        {
                                            session.setAttribute("temailid",temail);
                                            String q="insert into addteacher(Teacherfname,Teacherlname,doj,qualifications,classincharge,classsemester,teacheremail,teacherpassword,teacherphoto) values(?,?,?,?,?,?,?,?,?)";
                                        //column name is to be wriiten because we have one column in database which
                                        //is automatically incremented
                                        //hence when it is not written it produces error
                                        
                                        PreparedStatement myst=myconn.prepareStatement(q);
                                         
                                         
                                        myst.setString(1,tfname);
                                        myst.setString(2,tlname);
                                        myst.setString(3,tdoj);
                                        myst.setString(4,tqualification);
                                        myst.setString(5,tclassname);
                                        myst.setString(6,tclasssem);
                                        myst.setString(7,temail);
                                        myst.setString(8,tpassword);
                                        myst.setString(9,imagename);
                                        int result=myst.executeUpdate();
                                        
                                        
                                        if(result>0)
                                        {
                                            out.print("<script type='text/javascript'>");
                                            out.print("alert('Teacher added successfully')");
                                            out.print("</script>");
                                            response.sendRedirect("detailsteacher.jsp");
                                        }
                                        else
                                        {
                                            out.print("<script type='text/javascript'>");
                                            out.print("alert('Teacher cannot be added')");
                                            out.print("</script>");
                                        }
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
