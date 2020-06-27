<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
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
				<li class="active">Register Page</li>
			</ol>
		</div>
	</div>
         <div class="register">
		<div class="container">
			<h2>Register Here</h2>
			<div class="login-form-grids">
				<h5>profile information</h5>
				<form method="post" id="form1">
					<input type="text" placeholder="First Name..." required=" " name="fname" id="uname"><br/>
                                        <div id="msg"></div>
                                        <input type="text" placeholder="Last Name..." required=" " name="lname" >
                                        <h6>Login information</h6>
					<input type="email" placeholder="Email Address" required=" " name="em" id="em">
					<div id="msg1"></div>
                                        <input type="password" placeholder="Password" required=" " name="pass" id="pass">
					<input type="password" placeholder="Password Confirmation" required=" " id="cpass" name="cpass" >
					<input type="submit" value="Register" name="s1">
                                        <div id="msg2"></div>
				</form>
			</div>
			<div class="register-home">
				<a href="index.jsp">Home</a>
			</div>
		</div>
	</div>
		
          <%@include file="footer.jsp" %>
          <script>
              $(document).ready(function(){
                  $("#uname").blur(function(){
                      var a=$(this).val();
                      $.ajax({
                          url:"welcomeajax.jsp",
                          data:{"name":a},
                          type:"post",
                          beforeSend:function()
                          {
                              $("#msg").html("<img src='images/preloader.gif' width='30px' height='30px'>");
                          },
                          success:function(res)
                          {
                              $("#msg").html(res);
                          },
                          error:function()
                          {
                               $("#msg").html("Error in ajax");
                          }
                          
                      })
                      
                  })
                  $("#em").blur(function(){
                      var a=$(this).val();
                      $.ajax({
                          url:"welcomeajax.jsp",
                          data:{"email":a},
                          type:"post",
                          beforeSend:function()
                          {
                              $("#msg1").html("<img src='images/preloader.gif' width='30px' height='30px'>");
                          },
                          success:function(res)
                          {
                              $("#msg1").html(res);
                          },
                          error:function()
                          {
                               $("#msg1").html("Error in ajax");
                          }
                          
                      })
                      
                  })
                  $("#form1").submit(function(e){
                      e.preventDefault();
                        $.ajax({
                          url:"signupajax.jsp",
                          data:$("#form1").serialize(),
                          type:"post",
                          beforeSend:function()
                          {
                              $("#msg2").html("<img src='images/preloader.gif' width='30px' height='30px'>");
                          },
                          success:function(res)
                          {
                              if(res==1)
                              {
                                  $("#form1")[0].reset();
                                  $("#msg2").html("Thanks for signup");
                              }
                              else if(res==0)
                              {
                                   $("#msg2").html("error in coding");
                                   $("#cpass").val("");
                                
                              }
                              else if(res==2)
                              {
                                  $("#msg2").html("Password mismatch");
                                   $("#cpass").val("");
                                 
                              }
                              else if(res==3)
                              {
                                  $("#pass").val("");
                                  $("#cpass").val("");
                                  $("#msg2").html("user already exist");
                              }
                              else
                              {
                                  $("#msg2").html(res);
                              }
                          },
                          error:function()
                          {
                               $("#msg2").html("Error in ajax");
                          }
                          
                      })
                  })
                  
              })
          
          </script>
    </body>
</html>
