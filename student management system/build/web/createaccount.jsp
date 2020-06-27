<%@include file="disp.jsp"%>
<%@include file="commonheader.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>LOGIN PAGE</title>
<!--       <script src='https://www.google.com/recaptcha/api.js'></script>-->
     </head>
    <body>
	<div class="breadcrumbs">
		<div class="container">
			<ol class="breadcrumb breadcrumb1 animated wow slideInLeft" data-wow-delay=".5s">
				<li><a href="homepage.jsp"><span class="glyphicon glyphicon-home" aria-hidden="true"></span>Home</a></li>
				<li class="active">Create Account</li>
			</ol>
		</div>
	</div>
<div class="register">
		<div class="container">
			<h2>Register Here</h2>
			<div class="login-form-grids">
                            <form  method="post">
                            <div id="firstone">
				<h5>profile information</h5>
				
					<input type="text" name="fname" placeholder="First Name..." required=" " >
                                        <input type="text" name="lname" placeholder="Last Name..." required=" " ><br>
                                        <input type="text" name="phone" placeholder="Phone number..." required=" " maxlength="10">
				
				
				<h6>Login information</h6>
					
					<input type="email" name="email" placeholder="Email Address" required=" " >
					<input type="password" name="pass1" placeholder="Password" required=" " >
                                        <input type="password" name="pass2" placeholder="Password Confirmation" required=" " ><br>
                             
                                <input type="submit" class="button" value="Register" name="submit1" id="submit1" ><br>
					</div>
                            
                                        <div id="secondone">
                                            
                                            <select id="question" class="form-control" name="securityquestion">
                                                <option>Choose Security Question</option>
                                                <option>Who is your favourite singer ?</option>
                                                <option>What is your favourite place ?</option>
                                                <option>What is your best friend's name ?</option>
                                                <option>What is the place you wish to visit</option>
                                            </select><br>
                                            <input type="text" name="securityanswer" placeholder="Your security answer" required=" " ><br>
                                            <div class="register-check-box">
						<div class="check">
                                                    <label class="checkbox"><input type="checkbox" name="checkbox"><i> </i><font color='orange' size='4'><b>I accept the terms and conditions</b></font></label><br>
						</div> 
					</div>
                                           
                                            <input type="submit" value="Click to finish registration" name="submit2" id="submit2" class="button">
				
                                        </div>
                                <div id="thirdone">
                                    <h4>Click on the link sent to your email for authentication</h4>
                                </div>
					
                                 </form>       
			</div>
                </div>
</div>
    </body>
</html>
