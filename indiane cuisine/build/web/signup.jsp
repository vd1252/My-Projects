<%@page import="java.sql.*"%>
<!DOCTYPE html>

<html>
<head>
<title>Zomato</title>
<!----to include css and strips------------>
        <%@include file="exefiles.jsp" %>
</head>
<body>
    <!----to include header portion------------>
    <div class="banner1">
         <%@include file="header.jsp" %>
    </div>
	
<!-- registration -->
	<div class="breadcrumbs">
		<div class="container-fluid">
			<ol class="breadcrumb breadcrumb1 animated wow slideInLeft" data-wow-delay=".5s">
				<li><a href="index.jsp"><span class="glyphicon glyphicon-home" aria-hidden="true"></span>Home</a></li>
				<li class="active">Register Page</li>
			</ol>
		</div>
	</div>
<div class="main-1">
		<div class="container">
			<div class="register">
		  	  <form method="post" id="form1"> 
				 <div class="register-top-grid">
					<h3><font color="purple">PERSONAL INFORMATION</font></h3>
					 <div class="wow fadeInLeft" data-wow-delay="0.4s">
						<span>First Name<label>*</label></span>
						<input type="text" placeholder="First Name..." required=" " name="fname" id="uname">
                                                <div id="msg"></div>
					 </div>
					 <div class="wow fadeInRight" data-wow-delay="0.4s">
						<span>Last Name<label>*</label></span>
						<input type="text" placeholder="Last Name..." required=" " name="lname" > 
					 </div>
					 <div class="wow fadeInRight" data-wow-delay="0.4s">
						 <span>Email Address<label>*</label></span>
						 <input type="email" placeholder="Email Address" required=" " name="em" id="em"><br><br>
                                                 <div id="msg1"></div>
					 </div>
					 <div class="clearfix"> </div>
					   <a class="news-letter" href="#">
						 <label class="checkbox"><input type="checkbox" name="checkbox" checked=""><i> </i>Sign Up for Newsletter</label>
					   </a>
					 </div>
				     <div class="register-bottom-grid">
						    <h3><font color="purple">LOGIN INFORMATION</font></h3>
							 <div class="wow fadeInLeft" data-wow-delay="0.4s">
								<span>Password<label>*</label></span>
								<input type="password" placeholder="Password" required=" " name="pass" id="pass">
							 </div>
							 <div class="wow fadeInRight" data-wow-delay="0.4s">
								<span>Confirm Password<label>*</label></span>
								<input type="password" placeholder="Password Confirmation" required=" " name="cpass" id="cpass">
							 </div>
					 </div>
				
				<div class="clearfix"> </div>
				<div class="register-but">
				  
					   <input class="acount-btn" type="submit" value="Register" name="s1">
                                           <div class="clearfix"> </div>
                                           <div id="msg2"></div>
					   <div class="clearfix"> </div>
				   
				</div>
                                </form>
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
                              $("#form1")[0].reset();
                              $("#msg2").html("<img src='images/preloader.gif' width='30px' height='30px'>");
                          },
                          success:function(res)
                          {
                              if(res==1)
                              {
                                    
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
