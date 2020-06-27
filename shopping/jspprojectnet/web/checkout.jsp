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
				<li class="active">Checkout Page</li>
			</ol>
		</div>
	</div>s
        <div class="login">
		<div class="container">
			<h2>Checkout Form</h2>
		
			<div class="login-form-grids animated wow slideInUp" data-wow-delay=".5s">
				<form method="post">
                                    <b>Payment Mode</b><br/><br/><label><input type="radio" name="mode" value="cod">Cash On Delivery</label>
                                    <br/><label><input type="radio" name="mode" id="ch" value="cheque">By Cheque</label><br/><br/>
                                    <div id="cheque">
                                        <input type="text" name="hname" placeholder="Holder Name">  
                                        <input type="text" name="cname" placeholder="Company Name">  
                                        <input type="text" name="expname" placeholder="Expiry Date" id="datepicker">  
                                    </div><br>
					<input type="text" placeholder="Name" required=" " name="nm" class="form-control">
                                        <br/><input type="text" placeholder="Phone No" required=" " name="phno"><br/>
                                        <textarea name="Delivery Address" cols="45" rows="5"></textarea>
					<div class="forgot">
						<a href="#">Forgot Password?</a>
					</div>
					<input type="submit" value="Checkout" name="s1">
				</form>
			</div>
			<%
    if(request.getParameter("s1")!=null)
    {
        
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            Connection myconnection=DriverManager.getConnection("jdbc:mysql://localhost/evedb", "root", "");
            try
            {
                String qu="insert into checkout(hname,cname,expy,name,phone,address,mode,tcost,uname) value(?,?,?,?,?,?,?,?,?)";
                PreparedStatement myst=myconnection.prepareStatement(qu);
                myst.setString(1, request.getParameter("hname"));
                myst.setString(2, request.getParameter("cname"));
                myst.setString(3, request.getParameter("expname"));
                myst.setString(4, request.getParameter("nm"));
                myst.setString(5, request.getParameter("phno"));
                myst.setString(6, request.getParameter("Delivery Address"));
                myst.setString(7, request.getParameter("mode"));
                myst.setString(8, session.getAttribute("tcost").toString());
                myst.setString(9, session.getAttribute("email").toString());
                int i=myst.executeUpdate();
                if(i==1)
                {
                    response.sendRedirect("thanks.jsp");
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
                </div>
	</div>
                                
          <%@include file="footer.jsp" %>
          <script>
              $(document).ready(function(){
                  $("#cheque").hide()
                  $("#ch").change(function(){
                      $("#cheque").show(1000)
                      //window.location="pagename"
                  })
              })
              
          </script>
          <link href="js/jquery-ui.css" rel="stylesheet"/>
          <script src="js/jquery-ui.js"></script>
          <script>
            $( function() {
              $("#datepicker").datepicker();
            } );
            </script>
            
          
    </body>
</html>
