<%@include file="disp.jsp"%>
<%@include file="commonheader.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@include file="databaseinfo.jsp" %>

<%@page import="org.json.JSONObject"%>
<%@page import="java.nio.charset.Charset"%>
<%@page import="java.io.InputStreamReader"%>
<%@page import="java.io.InputStreamReader"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.net.URL"%>
<%@page import="java.io.InputStream"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>LOGIN PAGE</title>
         <script src='https://www.google.com/recaptcha/api.js'></script>
     </head>
        <%
        Cookie mycookies[]=request.getCookies();
          boolean flag1=false;
                boolean flag2=false;
                boolean flag3=false;
        if(mycookies!=null)
        {
            
            for(Cookie mycookie:mycookies)
            {
              
                if(mycookie.getName().equals("teacherusername"))
                {
                String uname=mycookie.getValue();
                session.setAttribute("useremailid",uname);
                flag1=true;
                }
                else if(mycookie.getName().equals("teacherfname"))
                {
                String firstname=mycookie.getValue();
                session.setAttribute("usernamepart1", firstname);
                flag2=true;
                }
                 else if(mycookie.getName().equals("teacherlname"))
                {
                String lastname=mycookie.getValue();
                session.setAttribute("usernamepart2",lastname);
                flag3=true;
                
                }
            }
            if(flag1&&flag2&&flag3)
            {
                response.sendRedirect("teacherpanel.jsp");
            }
        }


%>
    
    <body>
	<div class="breadcrumbs">
		<div class="container">
			<ol class="breadcrumb breadcrumb1 animated wow slideInLeft" data-wow-delay=".5s">
				<li><a href="homepage.jsp"><span class="glyphicon glyphicon-home" aria-hidden="true"></span>Home</a></li>
				<li class="active">Login Page</li>
			</ol>
		</div>
	</div>
	<div class="login">
		<div class="container">
                    <div id="showfirst">
			<h2>Login Form</h2>
		
			<div class="login-form-grids animated wow slideInUp" data-wow-delay=".5s">
				<form>
					<input type="email" name="email" id="emailid" placeholder="Email Address" required=" " >
                                               
                                        <input type="password" name="pass" placeholder="Password" required=" " ><br>
                                        <div class="g-recaptcha" data-sitekey="6LdT_mgUAAAAAPJ8bHn0C2OAbAkKerJ-ONZYNB9T"></div>
					<br>
                                        <input type="checkbox" name="checkbox1"><i> </i><font color='black' size='4'><b>Keep me signed in</b></font>
						
                                           
                                        <div class="forgot" id="forgot">
						<a href="#">Forgot Password?</a>
					</div>
                                       
					<input type="submit" value="Login" name="submit" id="">
				</form>
			</div>
			</div>
                        	</div>
</div>
 <%
    if(request.getParameter("submit")!=null)
    {
         String url = "https://www.google.com/recaptcha/api/siteverify?"
                        + "secret=6LdT_mgUAAAAAO__oDNTGrzLY0vdOK9u0mnYul3a"
                        + "&response=" + request.getParameter("g-recaptcha-response");
         InputStream res = new URL(url).openStream();
         BufferedReader rd = new BufferedReader(new InputStreamReader(res, Charset.forName("UTF-8")));
         StringBuilder sb = new StringBuilder();
         int cp;
            while ((cp = rd.read()) != -1)
            {
            sb.append((char) cp);
            }
        String jsonText = sb.toString();
        res.close();
        JSONObject json = new JSONObject(jsonText);
         
         if(json.getBoolean("success")==true)
         {
                String email=request.getParameter("email");
                String pass=request.getParameter("pass");
                    try
                    {
                        Class.forName("com.mysql.jdbc.Driver");
                        Connection myconn=DriverManager.getConnection(PATH+PLACE,USERNAME,PASSWORD);
                        try
                        {
                            email=request.getParameter("email");
                            pass=request.getParameter("pass");
                          
                            String q1="select * from registertable where useremailid=? and password=?";
                            String q2="select * from admintable where emailid=? and password=?";
                          
                            PreparedStatement myst1=myconn.prepareStatement(q1);
                            PreparedStatement myst2=myconn.prepareStatement(q2);
                            myst1.setString(1,email);
                            myst1.setString(2,pass);
                            myst2.setString(1,email);
                            myst2.setString(2,pass);
                            ResultSet myresult1=myst1.executeQuery();
                             ResultSet myresult2=myst2.executeQuery();
                            if(myresult2.next())
                           {
                               if(request.getParameter("checkbox1")!=null)
                               {
                                   Cookie mycookie1=new Cookie("username",myresult1.getString("emailid"));
                                   mycookie1.setMaxAge(60*60*24*7);
                                   response.addCookie(mycookie1);

                               session.setAttribute("aname",myresult1.getString("emailid"));
                               session.setAttribute("aemailid",email);
                               session.setAttribute("usertype","administrator");
                               response.sendRedirect("adminpanel.jsp");
                               }
                               else
                               {
                                   session.setAttribute("aname",myresult1.getString("emailid"));
                               session.setAttribute("aemailid",email);
                               session.setAttribute("usertype","administrator");
                               response.sendRedirect("adminpanel.jsp");
                               }
                               
                               
                           }
                            else if(myresult1.next())
                            {
                                if(request.getParameter("checkbox1")!=null)
                               {
                                   Cookie mycookie1=new Cookie("username",myresult1.getString("useremailid"));
                                   mycookie1.setMaxAge(60*60*24*7);
                                   response.addCookie(mycookie1);
                                   
//                                    Cookie mycookie2=new Cookie("teacherfname",myresult2.getString("password"));
//                                   mycookie2.setMaxAge(60*60*24*7);
//                                   response.addCookie(mycookie2);

//                                   Cookie mycookie3=new Cookie("teacherlname",myresult2.getString("nameofrestaurant"));
//                                   mycookie3.setMaxAge(60*60*24*7);
//                                   response.addCookie(mycookie3);
                              String ut=myresult1.getString("usertype");
                              if(ut.equalsIgnoreCase("restaurant"))
                              {
                                  session.setAttribute("sid",myresult1.getString("sid"));
                                session.setAttribute("restname",myresult1.getString("name"));
                              session.setAttribute("useremail",myresult1.getString("useremailid"));
                               session.setAttribute("usertype","restaurant"); 
                               response.sendRedirect("restaurantpanel.jsp");
                              }
                              else if(ut.equalsIgnoreCase("organisation"))
                              {
                                  session.setAttribute("sid",myresult1.getString("sid"));
                                session.setAttribute("restname",myresult1.getString("name"));
                              session.setAttribute("useremail",myresult1.getString("useremailid"));
                               session.setAttribute("usertype","organisation"); 
                               response.sendRedirect("orgpanel.jsp");
                              }
                               
                               
                               }
                                else
                                {
                                   String ut=myresult1.getString("usertype");
                              if(ut.equalsIgnoreCase("restaurant"))
                              {
                                  session.setAttribute("sid",myresult1.getString("sid"));
                                session.setAttribute("restname",myresult1.getString("name"));
                              session.setAttribute("useremail",myresult1.getString("useremailid"));
                               session.setAttribute("usertype","restaurant"); 
                               response.sendRedirect("restaurantpanel.jsp");
                              }
                              else if(ut.equalsIgnoreCase("organisation"))
                              {
                                  session.setAttribute("sid",myresult1.getString("sid"));
                                session.setAttribute("restname",myresult1.getString("name"));
                              session.setAttribute("useremail",myresult1.getString("useremailid"));
                               session.setAttribute("usertype","organisation"); 
                               response.sendRedirect("orgpanel.jsp");
                              }
                               
                                }
                            }
                         
                           else
                           {
                               out.print("<script type='text/javascript'>"
                                       + "alert('Wrong Username/password')</script>");
                           }
                         

                        }
                        catch(Exception e)
                        {
                            out.print("Error occured in me" +e.getMessage());
                        }
                        finally
                        {
                            myconn.close();
                        }
                    }
                    catch(Exception e)
                    {
                      out.print("Error occured in connection " + e.getMessage());
                    }

            }
         else
         {
             out.print("<script type='text/javascript'>");
             out.print("alert('Confirm you are a human')");
             out.print("</script>");
         }
    }
    %>       
<%
    if(request.getParameter("submit")!=null)
    {
        String email=request.getParameter("email");
        String pass=request.getParameter("pass");
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn=DriverManager.getConnection(PATH+PLACE,USERNAME,PASSWORD);
            try
            {
                String q="select * from admintable where emailid=? and password=?";
                PreparedStatement myst=conn.prepareStatement(q);
                myst.setString(1,email);
                myst.setString(2,pass);
                ResultSet myresult=myst.executeQuery();
                if(myresult.next())
                {
                    session.setAttribute("adminname","myadmin");
                    response.sendRedirect("adminpanel.jsp");
                }
                else
                {
                    out.print("<script type='text/javascript'>Wrong id/password</script>");
                }
            }
            catch(Exception e)
            {
             out.print("error in query "+e.getMessage());   
            }
        }
        catch(Exception e)
        {
            out.print("Connection error"+e.getMessage());
        }
        
    }
 %>
<!-- //login -->

    <div class="login">
		<div class="container">
                    
    <div id="showsecond">
            <h2>Recover Password</h2>
                <div class="login-form-grids animated wow slideInUp" data-wow-delay=".5s">
                                <form  method="post">
                                    <input type="text" name="emailg" id="email" placeholder="Enter your emailid"><br>
                                    <input type="radio" name="recovery" id="quesans" value="quesans">I want to recover password by answering security question<br>
                                </form>
                   
                    <input type="submit" value="Recover Password" name="recoverpassword" id="recoverpassword">
                   
                </div>
    </div>
                   
                    <div id="thirdone">
                         <h2>Recover Password</h2>
                        <div class="login-form-grids animated wow slideInUp" data-wow-delay=".5s">
                        <form  method="post">
                            <!--session.setAttribute("useremailid",email);-->
                                <select id="securityquestion" class="form-control" name="securityquestion">
                                    <option>Choose Security Question</option>
                                    <option>Who is your favourite singer ?</option>
                                    <option>What is your favourite place ?</option>
                                    <option>What is your best friend's name ?</option>
                                    <option>What is the place you wish to visit</option>
                                </select><br>
                                
                                <input type="text" id="secanswer" name="securityanswer" placeholder="Your security answer" required=" " ><br>
                                            
                            </form>
                             <input type="submit" id="submit2" name="submit2" value="Submit">
                        </div>
                        
                    </div>
                    <div id="fourthone">
                        <div class="login-form-grids animated wow slideInUp" data-wow-delay=".5s">
                        Your security answer  is incorrect
                        <input type="submit" id="submit3" name="submit3" value="Try Again">
                        </div>
                    </div>
                </div>
    </div>
      <%
                        
                        if(request.getParameter("recoverpassword")!=null)
                        {
                           String em=request.getParameter("emailg");
                            out.print(em);
                        }
                    %>
    <script type="text/javascript">
        $(document).ready(function(){
                $("#showfirst").show();//email,password,keep me ,recaptcha,forgot
                $("#showsecond").hide();//email,recoverpassword button
                $("#thirdone").hide();
                $("#fourthone").hide();
                $("#forgot").click(function(e){//forgot password link click
                    e.preventDefault()
                    $("#showfirst").hide();
                    $("#showsecond").show();//get email from user
                    $("#thirdone").hide();
                $("#fourthone").hide();
                
                 })
                 $("#recoverpassword").click(function(){
                 var email=$("#email").val()
                   $.ajax({
                        dataType:"json",
                            type:"POST",
                            url:"recoverpassword.jsp",
                            data:{email:email}
                   })
//                        
                                .done(function(msg1){
                             var res=$.trim(msg1);
                             if(res=="wrong")
                             {
                                 $("#thirdone").hide();
                                 alert("Invalid email id");
                             }
                             else
                             {
                                 alert("I am coming here");
                                 var ques=$.trim(msg1.squestion)
                                
                                 $("#showsecond").hide()
                                 $("#fourthone").hide();
                                 $("#thirdone").show()
                                 $("#securityquestion").val(ques)
                                 $("#submit2").click(function(){
                                     var secans=$("#secanswer").val();
                                     $.ajax({
                                         method:"POST",
                                         url:"recoverpassword.jsp",
                                         data:{securityanswer:secans}

                                     })
                                             .done(function(msg2){
                                                 var ans=$.trim(msg2)
                                                 if(ans=="unsuccessfull")
                                                 {
                                                     //security answer is incorrect
                                                     $("#thirdone").hide()
                                                     $("#fourthone").show()
                                                     $("#submit3").click(function(){
                                                        $("#thirdone").show()
                                                        $("#fourthone").hide()
                                                     })
                                                 }
                                                 else
                                                 {
                                                     //correct
                                                     window.location="changepassword.jsp";
                                                 }
                                             })
                                 })
                             }
                         })
//                   var selValue = $('input[name=recovery]:checked').val();
//                   if(selValue=="quesans")
//                   {
//                     
//                   }
//                    else if(selValue=="otp")
//                    {
//                       $.ajax({
//                           method:"POST",
//                           url:"ajaxpage.jsp",
//                           data:{selectedvalue:selValue,emailid:email}
//                       })
//                               .done(function(msg3){
//                                   if($.trim(msg3)=="wrong")
//                                    {
//                                        alert("Your emailid is invalid")
//                                        $("showsecond").show();
//                                        
//                                    }
//                                    else
//                                    {
//                                      window.location="changepassword.jsp";   
//                                    }
//                               })
//                    }
//          
            
              
          })
           
        });
        </script>
    </body>
</html>
