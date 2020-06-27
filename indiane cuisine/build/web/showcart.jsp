<!DOCTYPE html>
<html>
<head>
<title>Zomato</title>

<%@include file="exefiles.jsp" %>
<%@page import="java.net.*"%>
<%@ page import="java.util.*"%> 
<%@page import="java.sql.*"%>
<%@ page import="com.sun.syndication.feed.synd.*"%> 
<%@ page import="com.sun.syndication.io.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<style>
  .modal-header, h4, .close {
      background-color: #5cb85c;
      color:white !important;
      text-align: center;
      font-size: 30px;
  }
  .modal-footer {
      background-color: #f9f9f9;
  }
  .table th{
 text-align: center;   
}
  </style>
</head>
<body>
    <!----to include header portion------------>
    <%@include file="header.jsp" %>
    <!-- single -->
    <div class="single" style="padding:5em 0;">
        <div class="container">
            <h1 style="font-size: 2.8em;color: #6cbc35;;margin: 0 1em 1em;"><center>Review Your Order</center></h1>
            
            <span><center>The Products you have Ordered are as follows:</center></span>
            <%
int sum=0;
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
                String qu="select * from addcart where uname=?";
        PreparedStatement myst=myconnection.prepareStatement(qu);
        myst.setString(1,session.getAttribute("email").toString());
        
        ResultSet myres1=myst.executeQuery();
        if(myres1.next())
          {  
            out.print("<table class='table table-hover' style='text-align: center;margin: 0px auto;'>"
                     + "<thread><tr>"
                     + "<td>Image</td>"
                     + "<td>Product Name</td>"
                     + "<td>Price</td>"
                     + "<td>Quantity</td>"
                     + "<td>Total Cost</td>"
                     + "<td>Delete</td>"
                     + "</tr>"
                    + "</thread>"
                    + "<tbody>");
             do{
                 sum+=myres1.getInt("tcost");
                 out.print("<tr>"
                     + "<td><img src='cimages/"+myres1.getString("image") +"' width='50px'></td>"
                     + "<td>"+myres1.getString("pname") +"</td>"
                     + "<td><i class='fas fa-rupee-sign'></i> "+myres1.getString("price") +"</td>"
                     + "<td>"+myres1.getString("qty")+"</td>"
                     + "<td><i class='fas fa-rupee-sign'></i> "+myres1.getString("tcost")+"</td>"
                     + "<td><a href='detetecartpro.jsp?cartid="+myres1.getString("cartid")+"'class='del' id='"+myres1.getString("cartid")+"'>Delete</a></td>"
                     + "</tr>");
                 
             }while(myres1.next());
              session.setAttribute("tcost", sum);
             out.print("</tbody></table>");
             out.print("<h3><center>Final amount you have to pay:<i class='fas fa-rupee-sign'></i> "+sum+"</center></h3><br>");
          }
        else
        {
            out.print("<br><br><h1><center>No Food Added in Cart</center></h1>");
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
           
             
<table class="table" align="center" >
    <tr>
        <td>
            <div class="sinbt" style="text-align:left;">
                <a class="hvr-shutter-in-horizontal" href="details.jsp?rid=<% out.print(session.getAttribute("restid"));%>">Go Back</a>
             </div>

        </td>
        <td>
            <div class="sinbt">
                <a class="hvr-shutter-in-horizontal" href="checkout.jsp">Add your Address and Pay</a>
            </div>
        </td>

    </tr>

</table>
                        
                                   
                                    
         </div>
         </div>
             
     <!-- tels -->
     <script>
            
            $(document).ready(function(){
                $(".del").click(function(e){
                    e.preventDefault();
                    var  a=$(this).attr("id");
                    var pr=$(this).parent();
                    var pr1=$(this).parent().parent();
                    if(confirm("Are you sure you want to delete that product ?"))
                    {
                        $.ajax({
                            url:"detetecartpro.jsp",
                            data:{"caid":a},
                            type:"post",
                            beforeSend:function()
                            {
                              pr.append("<img src='images/preloader.gif' width='30px' height='30px'>");  
                            },
                            success:function(res)
                            {
                                if($.trim(res)==1)
                                {
                                    pr1.css({'backgroundColor':'#fb6c6c'});
                                    pr1.fadeOut(600,function()
                                    {
                                         pr1.remove();
                                    })
                                }
                                else
                                {
                                    alert(res);
                                }
                            },
                            error:function(res)
                            {
                                alert("error");
                            }
                                
                               })
                    }
                })
                })
            
        </script>     
        <!--------To include footer portion--------->
            <%@include file="footer.jsp" %>
         
</body>
</html>