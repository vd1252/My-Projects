<%
    if(!"administrator".equals(session.getAttribute("usertype")))
    {
        response.sendRedirect("loginpage.jsp");
    }
%>
<%@include file="disp.jsp" %>
<%@include file="adminheader.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
    //String catname=request.getParameter("catname");
    int categoryid=Integer.parseInt(request.getParameter("catid"));
    session.setAttribute("catid",categoryid);
    out.print("<div class='breadcrumbs'> <div class='container'> <ol class='breadcrumb breadcrumb1 animated wow slideInLeft' data-wow-delay='.5s'> <li><a href='adminpanel.jsp'><span class='glyphicon glyphicon-home' aria-hidden='true'></span>Main Panel</a></li> <li class='active'>Information</li> </ol> </div> </div>");
%>
        <%
            if(request.getParameter("catid")!=null)
            {
                String x="";
                String y="";
                int myid=Integer.parseInt(request.getParameter("catid"));
                if(myid==3)
                {
                  x="Student";
                  y="student";
                }
                else if(myid==2)
                {
                    x="Teacher";
                    y="teacher";
                }
                else if(myid==1)
                {
                    x="Course";
                    y="course";
                }
                else if(myid==4)
                {
                    x="Time Table";
                    y="timetable";
                }
                
                 out.print("<div class='agile_top_brand_left_grid1'> "
                        + "<figure>"
                        + " <div class='agile_top_brands_grids'>"
                        + " <div class='col-md-4 top_brand_left'>"
                        + " <div class='hover14 column'> <div class='agile_top_brand_left_grid'>"
                        + " <a href='add"+y+".jsp?mysid="+myid+"'>"
                        + "<img src='images/addicon.png' width='500' height='300' align='justify'></a>"
                        + " <div class='snipcart-details top_brand_home_details'> "
                        + "<form method='post'> <fieldset>"
                        + " <input type='submit' name='submit' value='Add "+x+"' class='button'> </fieldset>"
                        + " </form> </div> </div> </div> </div> </div> </figure> "
                        + "<figure> <div class='agile_top_brands_grids'>"
                        + " <div class='col-md-4 top_brand_left'> <div class='hover14 column'>"
                        + " <div class='agile_top_brand_left_grid'> "
                                + "<a href='listof"+y+".jsp?mysid=mstudent'>"
                        + "<img src='images/updateicon.jpg' width='500' height='300'></a>"
                        + " <div class='snipcart-details top_brand_home_details'> <form method='post'> "
                        + "<fieldset> <input type='submit' name='submit' value='Update "+x+"' class='button'> "
                        + "</fieldset> </form> </div> </div> </div> </div> </div> "
                        + "</figure>  <figure> "
                        + "<div class='agile_top_brands_grids'> <div class='col-md-4 top_brand_left'>"
                        + " <div class='hover14 column'> <div class='agile_top_brand_left_grid'> "
                        + "<center><a href='delete"+y+".jsp?mysid=mstudent'><img src='images/deleteicon.png' width='400' height='300'></center></a> "
                        + "<div class='snipcart-details top_brand_home_details'> "
                        + "<form method='post'> <fieldset>"
                        + " <input type='submit' name='submit' value='Delete "+x+"' class='button'> "
                        + "</fieldset> </form> </div> </div> </div> </div> </div> "
                        + "</figure><div class='clearfix'></div>"
                                + "<figure>"
                        + " <div class='agile_top_brands_grids'>"
                        + " <div class='col-md-4 top_brand_left'>"
                        + " <div class='hover14 column'> <div class='agile_top_brand_left_grid'>"
                        + " <a href='listof"+y+".jsp?mysid="+myid+"'>"
                        + "<img src='images/addicon.png' width='500' height='300' align='justify'></a>"
                        + " <div class='snipcart-details top_brand_home_details'> "
                        + "<form method='post'> <fieldset>"
                        + " <input type='submit' name='submit' value='List of Students' class='button'> </fieldset>"
                        + " </form> </div> </div> </div> </div> </div> </figure>"
                        +" <div class='clearfix'></div> </div>");     
            }
            %>
    </body>
</html>
