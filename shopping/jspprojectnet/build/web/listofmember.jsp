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
         <%@include file="header.jsp" %>
        <div class="breadcrumbs">
		<div class="container">
			<ol class="breadcrumb breadcrumb1 animated wow slideInLeft" data-wow-delay=".5s">
				<li><a href="index.html"><span class="glyphicon glyphicon-home" aria-hidden="true"></span>Home</a></li>
				<li class="active">Login Page</li>
			</ol>
		</div>
	</div>
        <div class="login">
		<div class="container">
			<h2>List Of Members</h2>
                        <form name="form1">
                            Enter Search name<input type="text" name="srch">
                            <input type="submit" name="s1"><br/><br/>
                            
                            
                            
                        </form>
		<%
        int count=0;
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            Connection myconnection=DriverManager.getConnection("jdbc:mysql://localhost/smart_store", "root", "");
            try
            {
                ResultSet myres=null;
                if(request.getParameter("s1")==null)
                {
                String qu="select name,phn,email,dob,gender from signup where utype='normal' order by name desc";
                PreparedStatement myst=myconnection.prepareStatement(qu);
                myres=myst.executeQuery();
                }
                else 
                {
                    String qu="select name,phn,email,dob,gender from signup where utype='normal' and name like ? order by name";
                    PreparedStatement myst=myconnection.prepareStatement(qu);
                    myst.setString(1, "%"+request.getParameter("srch")+"%");
                    myres=myst.executeQuery();
                }
                if(myres.next())
                {
                    out.print("<table class='table'><tr>"
                            + "<td>Name</td>"
                            + "<td>Phone No</td>"
                            + "<td>Email</td>"
                            + "<td>Date of Birth</td>"
                            + "<td>Gender</td>"
                            + "<tr>");
                    
                    do
                    {
                        out.print("<tr>"
                                + "<td>"+myres.getString("name")+"</td>"
                                + "<td>"+myres.getString("phn")+"</td>"
                                + "<td>"+myres.getString("email")+"</td>"
                                + "<td>"+myres.getString("dob")+"</td>"
                                + "<td>"+myres.getString("gender")+"</td>"
                                + "</tr>");
                        count++;
                    }while(myres.next());
                    out.print("</table>");
                    out.print("<b><p style='text-align:right'>Total Number of Rows available "+count+"</p></b>");
                }
                else
                {
                    out.print("No record fount");
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
        
			
	</div>
        </div>	
          <%@include file="footer.jsp" %>
    </body>
</html>
