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
        
        <%
        try
        {
          Class.forName("com.mysql.jdbc.Driver");
          Connection myconn=DriverManager.getConnection(PATH+PLACE,USERNAME,PASSWORD);
            try
            {
                if(request.getParameter("dettid")!=null)
                {
                        String q="select * from addteacher,addteacherdetails where addteacher.TeacherId=addteacherdetails.TeacherId and addteacher.TeacherID=?";
                    PreparedStatement myst=myconn.prepareStatement(q);
                    myst.setString(1,request.getParameter("dettid"));
                    ResultSet myresult=myst.executeQuery();
                    if(myresult.next())
                    {
                        out.print("<div class='checkout'>"
                                + " <div class='container'>"
                                + " <h1><center>More details about "+myresult.getString("teacherfname")+" "+myresult.getString("teacherlname")+"</center></h1><br>"
                                + " <div class='checkout-right'> "
                                + "<table class='timetable_sub'>"
                                + " <thead>"
                                + " <tr> "
                                + "<th>Teacher ID</th>"
                                + " <th>Teacher Photo</th> "
                                + " <th>Teacher Name</th> "
                                + "<th>Department</th>"
                                + " <th>Subjects allotted</th>  "
                                        + " <th>Designation</th>  "
                                        + " <th>Salary</th>  "
                               + " <th>Update</th>  "

                                + "</tr>"
                                + " </thead> ");
                        do
                        {
                            out.print("<tr class='rem1'> "
                                + "<td class='invert'>"+myresult.getString("TeacherID")+"</td>"
                                + " <td class='invert-image'>"
                                + "<img src='images/"+myresult.getString("teacherphoto")+"' width='150px' height='150px' class='img-responsive' />"
                                + "</td>"
                                + " <td class='invert'>"
                                +myresult.getString("Teacherfname")+" "+myresult.getString("Teacherlname")
                                + " </td>"
                                + " <td class='invert'>"+myresult.getString("department")+"</td>"
                                + "  <td class='invert'>"+myresult.getString("subjectsallotted")+"</td>"
                                + "  <td class='invert'>"+myresult.getString("tdesignation")+"</td>"
                                + "  <td class='invert'>"+myresult.getString("tsalary")+"</td>"
                                + "<td class='invert'><a href='updatesubjects.jsp?tid="+myresult.getString("TeacherID")+"'>Update</a></td>"

                                );

                        }
                        while(myresult.next());
                        out.print("</table> </div>  </div> </div>");
                    }
                    else
                    {
                    }
                }
                else
                {
                String q="select * from addteacher,addteacherdetails where addteacher.TeacherId=addteacherdetails.TeacherId";
                PreparedStatement myst=myconn.prepareStatement(q);
                ResultSet myresult=myst.executeQuery();
                if(myresult.next())
                {
                    out.print("<div class='checkout'>"
                            + " <div class='container'>"
                            + " <h1><center>Subject Allotment Details</center></h1><br>"
                            + " <div class='checkout-right'> "
                            + "<table class='timetable_sub'>"
                            + " <thead>"
                            + " <tr> "
                            + "<th>Teacher ID</th>"
                            + " <th>Teacher Photo</th> "
                            + " <th>Teacher Name</th> "
                            + "<th>Department</th>"
                            + " <th>Subjects allotted</th>  "
                           + " <th>Update</th>  "
                            
                            + "</tr>"
                            + " </thead> ");
                    do
                    {
                        out.print("<tr class='rem1'> "
                            + "<td class='invert'>"+myresult.getString("TeacherID")+"</td>"
                            + " <td class='invert-image'>"
                            + "<img src='images/"+myresult.getString("teacherphoto")+"' width='150px' height='150px' class='img-responsive' />"
                            + "</td>"
                            + " <td class='invert'>"
                            +myresult.getString("Teacherfname")+" "+myresult.getString("Teacherlname")
                            + " </td>"
                            + " <td class='invert'>CSE</td>"
                            + "  <td class='invert'>"+myresult.getString("subjectsallotted")+"</td>"
                            + "<td class='invert'><a href='updatesubjects.jsp?tid="+myresult.getString("TeacherID")+"'>Update</a></td>"
                      
                            );
                            
                    }
                    while(myresult.next());
                    out.print("</table> </div>  </div> </div>");
                }
                else
                {
                }
                }
                
                
            }
            catch(Exception e)
            {
                out.print("<script type='text/javascript'>");
                out.print("alert('Error in query')");
                
                out.print("</script>");
                out.print(e.getMessage());
            }
            finally
            {
                myconn.close();
            }
        }
        catch(Exception e)
        {
             out.print("<script type='text/javascript'>");
                out.print("alert('Error in Connection')");
               
                out.print("</script>");
                 out.print(e.getMessage());
        }
%>
    </body>
</html>
