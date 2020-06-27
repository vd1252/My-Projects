<%
    if(!"administrator".equals(session.getAttribute("usertype")))
    {
        response.sendRedirect("loginpage.jsp");
    }
%>
<%@include file="disp.jsp" %>
<%@include file="databaseinfo.jsp" %>
<%@include file="adminheader.jsp" %>
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
        <title>Add Student</title>
           <script src="js/jquery-1.11.1.min.js"></script>
    </head>
    <body>
        Name : <input type="text" name="namee"/>
<div class="login">
<div class="container">
        <h2>Add Student</h2>
        <div id="studentdiv1">
        <div class="login-form-grids animated wow slideInUp" data-wow-delay=".5s">
            <form method="post" enctype="multipart/form-data">
                
                <select name="studentbranch" class="form-control">
                    <option value="none" >Choose Branch</option>
                     <option value="cse">B.Tech CSE</option>
                    <option value="civil">B.Tech Civil</option>
                    <option value="mechanical">B.Tech Mechanical</option>
                    <option value="it">B.Tech IT</option>
                    <option value="ece">B.Tech ECE</option>
                    <option value="ee">B.Tech EE</option>
                </select><br>
                <input type="text" placeholder="First Name" name="stufname" required=" " ><br>
                <input type="text" placeholder="Last Name" name="stulname" required=""><br>
                <select name="stusemester" class="form-control">
                    <option>Choose Semester</option>
                     <option>1</option>
                     <option>2</option>
                     <option>3</option>
                     <option>4</option>
                     <option>5</option>
                     <option>6</option>
                     <option>7</option>
                     <option>8</option>
                </select><br>
                <input type="text" placeholder="Date of Birth" name="studob" required=" " ><br>
                    <select name="stutype" class="form-control">
                        <option>Choose Living</option>
                        <option>Day-Scholar</option>
                        <option>Hostler</option>
                        <option>others</option>
                    </select><br>
                    <input type="text" placeholder="Father's Name" name="stufather" required=" " ><br>
                     <input type="text" placeholder="Mother's Name" name="stumother" required=" " ><br>
                     <input type="text" placeholder="Address" name="stuadd" required=" " ><br>
                     <input type="file" name="myfile"><br>
                <input type="submit" value="Add Student Details" name="addstudent1" id="addstudent1">
                </form>
        </div></div>
        <div id="studentdiv2">
            <div class="login-form-grids animated wow slideInUp" data-wow-delay=".5s">
                <form>
                <input type="email" placeholder="Email Address" name="stuemail" required=" " ><br>
                <input type="password" placeholder="Password" name="stupass" required=" " ><br>
                 <select id="question" class="form-control" name="securityquestion">
                                                <option>Choose Security Question</option>
                                                <option>What is Your favourite food?</option>
                                                <option>What is your best friend's name?</option>
                                                <option>What is your favourite teacher's name?</option>
                                                <option>What is the place you wish to visit?</option>
                                            </select><br>
    <input type="text" name="securityanswer" placeholder="Your security answer" required=" " ><br>
    </form>
    <input type="submit" value="Add Student Details" name="addstudent2" id="addstudent2">
                    
            </div>
        </div>
</div></div>
    </body>
<!--    <script type="text/javascript">
        $(document).ready(function(){
            $("#studentdiv1").show();
            $("#studentdiv2").hide();
            $("#addstudent1").click(function(e){
                e.preventDefault();
                $("#studentdiv2").show();
            $("#studentdiv1").hide();
            })
        })
    </script>-->
</html>
 <%
String stubranch="",stufname="",stulname="",stusem="",studob="",stutype="",stufather="",stumother="",stuadd="",path="",imagename="";
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
                                                                
                                 if(itemName1.equals("studentbranch")) //control's name - textbox name
                                 {
                                    stubranch=value;
                                 }
                                 else if(itemName1.equals("stufname")) //control's name - textbox name
                                 {
                                    stufname=value;
                                 }
                                 else if(itemName1.equals("stulname")) //control's name - textbox name
                                 {
                                    stulname=value;
                                 }
                                 else if(itemName1.equals("stusemester")) //control's name - textbox name
                                 {
                                    stusem=value;
                                 }
                                 else if(itemName1.equals("studob")) //control's name - textbox name
                                 {
                                    studob=value;
                                 }
                                 else if(itemName1.equals("stutype")) //control's name - textbox name
                                 {
                                    stutype=value;
                                 }
                                 else if(itemName1.equals("stufather")) //control's name - textbox name
                                 {
                                    stufather=value;
                                 }
                                 else if(itemName1.equals("stumother")) //control's name - textbox name
                                 {
                                    stumother=value;
                                 }
                                 else if(itemName1.equals("stuadd")) //control's name - textbox name
                                 {
                                    stuadd=value;
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
                                        out.print(request.getParameter("namee"));
                                        out.print(request.getParameter("stufname"));
//                                    String q="insert into add"+stubranch+"student(studentbranch,stufname,stulname,stusemester,studob,stutype,stufather,stumother,stuadd,stuphoto) values(?,?,?,?,?,?,?,?,?,?)";
//                                    PreparedStatement myst=myconn.prepareStatement(q);
//                                      
//                                    myst.setString(1,stubranch);
//                                    myst.setString(2,stufname);
//                                    myst.setString(3,stulname);
//                                    myst.setString(4,stusem);
//                                    myst.setString(5,studob);
//                                    myst.setString(6,stutype);
//                                    myst.setString(7,stufather);
//                                    myst.setString(8,stumother);
//                                    myst.setString(9,stuadd);
//                                    myst.setString(10,imagename);
//                                        int result=myst.executeUpdate();
//                                        
//                                        
//                                        if(result>0)
//                                        {
//                                            out.print("<script type='text/javascript'>");
//                                            out.print("alert('Student added successfully')");
//                                            out.print("</script>");
//                                            response.sendRedirect("listofstudent.jsp");
//                                        }
//                                        else
//                                        {
//                                            out.print("<script type='text/javascript'>");
//                                            out.print("alert('Student cannot be added')");
//                                            out.print("</script>");
//                                        }
//                                        
                                        
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
  %>