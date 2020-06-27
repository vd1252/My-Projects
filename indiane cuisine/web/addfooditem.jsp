<%@page import="java.io.File"%>
<%@page import="org.apache.commons.fileupload.FileUploadException"%>
<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.commons.fileupload.FileItemFactory"%>
<%@page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
<%@page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>
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
				<li><a href="admin.jsp"><span class="glyphicon glyphicon-home" aria-hidden="true"></span>Home</a></li>
				<li class="active">Add Food Item</li>
			</ol>
		</div>
	</div>
        
        <!----Add Resturant----------->
        <div class="login-page">
		<div class="container">
                    
                           <div class="col-md-3"></div>
			   <div class="col-md-6 login-right wow fadeInRight" data-wow-delay="0.4s" >
                               <center><h3><font color="purple">Add Food Item</font></h3></center>
                               <center>
                                   <form method="post">
						<div>
							<span>Select Food Type<label>*</label></span>
                                                        <form class="form" method="post" enctype="multipart/form-data">
                                                 <select name="food" id="food">
                                                     <option><span>CHOOSE FOOD ITEM</span></option>
                                                    <%String myURL="", myUNAME="", myPASS="";
                                                           myURL = getServletContext().getInitParameter("URL");
                                                           myUNAME = getServletContext().getInitParameter("UNAME");
                                                           myPASS = getServletContext().getInitParameter("PASS");
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            Connection myconnection=DriverManager.getConnection(myURL, myUNAME, myPASS);
                    try
                    {
                        String qu="select * from foodtype";
                        PreparedStatement myst=myconnection.prepareStatement(qu);
                        ResultSet res=myst.executeQuery();
                        if(res.next())
                        {
                            do
                            {
                                out.print("<option value='"+res.getString("f_id")+"'>"+res.getString("food")+"</option>");
                            }while(res.next());
                        }
                        else
                        {
                            out.print("<option>No City available</option>");
                        }
                    }
                    catch(Exception e)
                    {
                        out.print("Error in connection"+e.getMessage());
                    }
                }
                catch(Exception e)
                {
                    out.print("Error in connection"+e.getMessage());
                }

            %>
                                                </select>
                                    
						</div>
                                                
						<div>
							<span>Add Food Item<label>*</label></span>
							<input type="text" placeholder="Enter food items" required=" " name="food_item" id="food_item"> 
						</div>
                                               
                                                                                       
						
						<input type="submit" value="ADD" name="s1">
                                                <%
    if(request.getParameter("s1")!=null)
    {String aURL="", aUNAME="", aPASS="";
                                                           aURL = getServletContext().getInitParameter("URL");
                                                           aUNAME = getServletContext().getInitParameter("UNAME");
                                                           aPASS = getServletContext().getInitParameter("PASS");
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            Connection myconnection=DriverManager.getConnection(aURL, aUNAME, aPASS);
            try
            {
                String qu="insert into fooditem(f_id,itemname) value(?,?)";
                PreparedStatement myst=myconnection.prepareStatement(qu);
                myst.setString(1, request.getParameter("food"));
                myst.setString(2, request.getParameter("food_item"));
                int i=myst.executeUpdate();
                if(i==1)
                {
                    out.print("food items Added");
                }
                else
                {
                    out.print("problem");
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
    }
%>
                                                  
                             </form></center>
			   </div>
                             <div class="col-md-3"></div>
				<div class="clearfix"> </div>
                    </div>
			</div>
		
	
<!----to include header portion------------>
          <%@include file="adminfooter.jsp" %>
    </body>
</html>