<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<!----to include css and strips------------>
         <%@include file="exefiles.jsp" %>
    </head>
    <body>
	<!----to include header portion------------>
         <%@include file="adminheader.jsp" %>
        <div class="breadcrumbs">
		<div class="container">
			<ol class="breadcrumb breadcrumb1 animated wow slideInLeft" data-wow-delay=".5s">
				<li><a href="index.html"><span class="glyphicon glyphicon-home" aria-hidden="true"></span>Home</a></li>
				<li class="active">Members</li>
			</ol>
		</div>
	</div>
        <div class="login">
		<div class="container">
                    
                    <h1><center><font color="purple">List Of Restaurant owners </font></center></h1><br><br>
		
			<div class="login-form-grids animated wow slideInUp" data-wow-delay=".5s">
                                   
				<form method="post">
          
                                    Enter Name To Search  <input type="text" name="search" >
                                    <input type="submit" name="s1"><br/><br/>
				</form>
                                 <%      int count=0;
         String city=request.getParameter("city");
         String myURL="", myUNAME="", myPASS="";
                                                           myURL = getServletContext().getInitParameter("URL");
                                                           myUNAME = getServletContext().getInitParameter("UNAME");
                                                           myPASS = getServletContext().getInitParameter("PASS");
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            Connection myconnection=DriverManager.getConnection(myURL, myUNAME, myPASS);
            try
            {
                String qu2="select count(*) from resturant";
                int total_records=0;
                PreparedStatement myst2=myconnection.prepareStatement(qu2);
                ResultSet myres2=null;
                myres2=myst2.executeQuery();
                if(myres2.next())
                {
                    total_records=myres2.getInt(1);
                }
                int records_per_page = 5;
                
                int totalpages = (int)(Math.ceil((double)total_records / (double)records_per_page));
                int pageno=0;
                if(request.getParameter("pageno")!=null)
                {
                    pageno=Integer.parseInt(request.getParameter("pageno"));
                }
                else
                {
                    pageno=1;
                }
                int offset = (records_per_page*(pageno-1));
                
                
                
                ResultSet myres=null;
                if(request.getParameter("s1")==null)
                {
                
                String qu="select rname,image,phno,shopemail from resturant order by rname desc limit " + offset + "," + records_per_page;
                PreparedStatement myst=myconnection.prepareStatement(qu);
                myres=myst.executeQuery();
                }
                else 
                {
                    String qu="select rname,image,phno,shopemail from resturant where rname like ? order by rname";
                    PreparedStatement myst=myconnection.prepareStatement(qu);
                    myst.setString(1, "%"+request.getParameter("search")+"%");
                    myres=myst.executeQuery();
                }
                out.print("<center>");
                if(myres.next())
                {
                    out.print("<table class='table' align='center'><tr>"
                            + "<td><b>Resturant Photo</b></td>"
                            + "<td><b>Resturant Name</b></td>"
                            + "<td><b>Resturant Phone Number</b></td>"
                            
                            + "<td><b>Resturant owner Email Id</b></td>"
                            
                            
                            + "<tr>");
                    
                    do
                    {
                        out.print("<tr>"
                                + "<td><img src='cimages/"+myres.getString("image")+"' width='150px'></td>"
                                + "<td>"+myres.getString("rname")+"</td>"
                                + "<td>"+myres.getString("phno")+"</td>"
                                + "<td>"+myres.getString("shopemail")+"</td>"                              
                                
                                + "</tr>");
                        count++;
                    }while(myres.next());
                    
                    out.print("</table>");
                    //out.print("<b><p style='text-align:right'>Total Number of Rows available "+count+"</p></b>");
                    
                    for(int x=1;x<=totalpages;x++)
                            {
                                if(x==pageno)
                                {
                                    out.print(x);
                                }
                                else
                                {
                                    out.print("<a href=listofresturantowners.jsp?pageno=" + x + ">" + x + "</a>");
                                }
                                
                            }
                    out.print("</center><br><br><br><br>");
                }
                else
                {
                    out.print("No record found");
                }
            }
            catch(Exception e)
            {
                out.print("Error in query"+e.getMessage());
            }
        }
        catch(Exception e)
        {
            out.print("Error in connection"+e.getMessage());
        }
        %>
        <center><h4>  <b><a href="admin.jsp">BACK TO ADMIN PAGE</a></b></h4>
			
		<!--
			<h4>For New People</h4>
			<p><a href="signup.jsp">Register Here</a> (Or) go back to <a href="index.jsp">Home<span class="glyphicon glyphicon-menu-right" aria-hidden="true"></span></a></p></center>  
		-->
               <br><br><br><br><br>
  
	</div>                 
                          
			</div>
                    </div>
			</div>
	</div>
		
          <%@include file="adminfooter.jsp" %>
    </body>
</html>