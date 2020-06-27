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
<%
    String cid="",localityname="";
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
                String qu="select * from locality where locality_id=?";
                PreparedStatement myst=myconnection.prepareStatement(qu);
                myst.setString(1, request.getParameter("locality_id"));
               ResultSet res=myst.executeQuery();
                if(res.next())
                {
                    cid=res.getString("cityid");
                    localityname=res.getString("locality_name");
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
				<li class="active">Update locality</li>
			</ol>
		</div>
	</div>
        
        <!----Add Resturant----------->
        <div class="login-page">
		<div class="container">
                    
			<div class="col-md-3"></div>
			   <div class="col-md-6 login-right wow fadeInRight" data-wow-delay="0.4s" >
                               <center><h3><font color="purple">Update locality</font></h3></center>
                               <center>
                                   <form method="post">
						<div>
							<span>Select City<label>*</label></span>
                                                       
                                                 <select name="city" id="city">
                                                     <option><span>CHOOSE CITY</span></option>
                                                    <%      String URL="", UNAME="", PASS="";
                                                           URL = getServletContext().getInitParameter("URL");
                                                           UNAME = getServletContext().getInitParameter("UNAME");
                                                           PASS = getServletContext().getInitParameter("PASS");
                try
                {
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection myconnection=DriverManager.getConnection(URL, UNAME, PASS);
                    
                    try
        {
            String qu="select * from city";
            PreparedStatement myst=myconnection.prepareStatement(qu);
            ResultSet res=myst.executeQuery();
            if(res.next())
            {
                do
                {
                    if(cid.equals(res.getString("cityid")))
                    {
                        out.print("<option value='"+res.getString("cityid")+"' selected>"+res.getString("city")+"</option>");
                    }
                    else
                    {
                        out.print("<option value='"+res.getString("cityid")+"'>"+res.getString("city")+"</option>");
                    }
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
                                                <input type="text" placeholder="Sub Category" required=" " name="locality" value="<%out.print(localityname);%>">
					
					<input type="submit" value="Update" name="s1">
                                        <%
    if(request.getParameter("s1")!=null)
    {
        String aURL="", aUNAME="", aPASS="";
                                                           aURL = getServletContext().getInitParameter("URL");
                                                           aUNAME = getServletContext().getInitParameter("UNAME");
                                                           aPASS = getServletContext().getInitParameter("PASS");
                try
                {
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection myconnection=DriverManager.getConnection(aURL, aUNAME, aPASS);
            try
            {
                String qu="update locality set cityid=?,locality_name=? where locality_id=?";
                PreparedStatement myst=myconnection.prepareStatement(qu);
                myst.setString(1, request.getParameter("city"));
                myst.setString(2, request.getParameter("locality"));
                myst.setString(3, request.getParameter("locality_id"));
                int i=myst.executeUpdate();
                if(i==1)
                { out.print("Locality update succesful");
                    response.sendRedirect("managelocality.jsp?cityid="+request.getParameter("city"));
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
                                   </form>
                               
                               </center>

                                          
            </div>
			</div>
	</div>
                                               
  <%@include file="adminfooter.jsp" %>
  </body>
  </html>