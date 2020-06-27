<!DOCTYPE html>
<html>
<head>
<title>Zomato</title>

<%@include file="exefiles.jsp" %>
<%@page import="java.net.*"%>
<%@ page import="java.util.*"%> 
<%@ page import="com.sun.syndication.feed.synd.*"%> 
<%@ page import="com.sun.syndication.io.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>

</head>
<body>
    <!----to include header portion------------>
    
         <%@include file="header.jsp" %>
    
    <!-- Restaurant -->
    
        <div class="single">
          <div class="container">  
                <% 
try
{
    Class.forName("com.mysql.jdbc.Driver");
    Connection myconnection=DriverManager.getConnection("jdbc:mysql://localhost/zomato", "root", "");
    try
            {
                String qu2="select count(*) from resturant where cityid=?";
                int total_records=0;
                PreparedStatement myst2=myconnection.prepareStatement(qu2);
                myst2.setString(1,request.getParameter("cityid"));
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
                
    try
    {
        String qu="select * from resturant where cityid=?";
        PreparedStatement myst=myconnection.prepareStatement(qu);
        myst.setString(1,request.getParameter("cityid"));
        ResultSet myres=myst.executeQuery();
        if(myres.next())
        {
            int count=0;
            do{
                
                if(count==0){  %>
                
                    <div class="row">
                    
                    <%
                    }
                    %>
               
  			<div class="col-md-6 tels-left">
                             <div class="single-top">
				<div class="col-md-6 single-left">
					<a href="details.jsp?rid=<% out.print(myres.getString("rid"));%>"> <img src="<% out.print("cimages/"+myres.getString("image"));%>" class="img-responsive" alt="" height="1000px" width="300px"></a>
                                        
				</div>
				<div class="col-md-6 single-right">
                                    <h1><a href="details.jsp?rid=<% out.print(myres.getString("rid")); %>"><%out.print(myres.getString("rname"));%></a></h1><br>
					<h3>Phone <%out.print(myres.getString("phno"));%>   • Open Now</h3>
                                        <hr style="height:2px;">
                                        <h5><font color="green">Email ID <%out.print(myres.getString("shopemail"));%></font></h5>					
					<div class="sinbt">
						<a class="hvr-shutter-in-horizontal" href="details.jsp?rid=<% out.print(myres.getString("rid"));%>">Order Now</a>
					</div>
				</div>
                                        <h5>Cost for two Rs <%out.print(myres.getString("cost"));%></h5>
                                        <h5>Cuisines : <%out.print(myres.getString("cuisine"));%> </h5>

				<div class="clearfix"> </div>
			</div>
                            </div>
                            <%
        count++;
        if(count==2)
        {
            count=0;
    %>
		<div class="clearfix"> </div>	
                    </div>
                        
                        <%
        }
                    %>
            
                <%
                    }while(myres.next());
%>
 <div class="col-md-12">
                
                <!--pagination--->
                <%
                     for(int x=1;x<=totalpages;x++)
                            {
                                if(x==pageno)
                                {
                %>
       
                        <nav aria-label="Page navigation example">
                            <center>
                                <ul class="pagination">
                                  
                                  <li class="page-item"><a class="page-link"><% out.print(x); %></a></li>
                                 
                                </ul>
                            </center>
                         </nav>
                
           
            <!--/pagination-->
            <%

                        
                                    
                                }
                                else
                                {  

%>
                                <nav aria-label="Page navigation example">
                            <center>
                                <ul class="pagination">
                                  <li class="page-item disabled">
                                    <a class="page-link" href="#" tabindex="-1">Previous</a>
                                  </li>
                                  <li class="page-item"><a class="page-link" href=orderfood2.jsp?pageno="<% out.print(x); %>"><% out.print(x); %></a></li>
                                  
                                  <li class="page-item">
                                    <a class="page-link" href="#">Next</a>
                                  </li>
                                </ul>
                            </center>
                         </nav>
                                <%
                                   
                                }
                                
                            }
                    
}
   else
           {
              out.print("<center><font color='blue'><h3>Sorry! No Restaurants Deliver to this location.......</h3></font></center><br><br><br>");
              out.print("<center><font color='green'><h3>Don't Worry We will Soon Extend our Services to your Location...</h3></font></center>");
              out.print("<br><br><br><br><br>");
           }
     }
    catch(Exception e)
    {
        out.print("Error in query"+e.getMessage());
    }
}
catch(Exception e)
            {
                out.print("Error in query"+e.getMessage());
            }}
    catch(Exception e)
    {
        out.print("Error in query"+e.getMessage());
    }
                
                %>
                    </div> 
                    </div>
                 </div>
               
	                    
		
        <!--------To include footer portion--------->
            <%@include file="footer.jsp" %>
            
</body>
</html>