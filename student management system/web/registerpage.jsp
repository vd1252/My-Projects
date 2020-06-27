<%-- 
    Document   : registerpage
    Created on : 27 Jun, 2018, 10:55:48 AM
    Author     : HP
--%>

<%@page import="java.util.Properties"%>
<%@page import="java.sql.*"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //for-mobile-apps -->
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<!-- font-awesome icons -->
<link href="css/font-awesome.css" rel="stylesheet"> 
<!-- //font-awesome icons -->
<!-- js -->
<script src="js/jquery-1.11.1.min.js"></script>
<!-- //js -->
<link href='https://fonts.googleapis.com/css?family=Raleway:400,100,100italic,200,200italic,300,400italic,500,500italic,600,600italic,700,700italic,800,800italic,900,900italic' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
<!-- start-smoth-scrolling -->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
        <!-- main slider-banner -->
<script src="js/skdslider.min.js"></script>
<link href="css/skdslider.css" rel="stylesheet">
<script type="text/javascript">
		jQuery(document).ready(function(){
			jQuery('#demo1').skdslider({'delay':5000, 'animationSpeed': 2000,'showNextPrev':true,'showPlayButton':true,'autoSlide':true,'animationType':'fading'});
						
			jQuery('#responsive').change(function(){
			  $('#responsive_wrapper').width(jQuery(this).val());
			});
			
		});
</script>

        <title>JSP Page</title>
        
       <%@include file="disp.jsp"%>
<%@include file="commonheader.jsp" %>
        <%@include file="databaseinfo.jsp" %>
    </head>
    <body>
    
    <!-- breadcrumbs -->
	<div class="breadcrumbs">
		<div class="container">
			<ol class="breadcrumb breadcrumb1 animated wow slideInLeft" data-wow-delay=".5s">
				<li><a href="index.jsp"><span class="glyphicon glyphicon-home" aria-hidden="true"></span>Home</a></li>
				<li class="active">Register Page</li>
			</ol>
		</div>
	</div>
<!-- //breadcrumbs -->
<!-- register -->

	<div class="register">
		<div class="container">
			<h2>Register Here</h2>
			<div class="login-form-grids">
                            <form  method="post">
                            <div id="firstone">
				<h5>profile information</h5>
                                        <select name="catname" class="form-control" id="aa">
                                            <option>Choose Usertype</option>
                                            <option value="Restaurant">Register as Restaurant</option>
                                            <option value="Organisation">Register as Organisation</option>
                                        </select><br>
                                <input type="text" name="rname" placeholder="Your Name ..." required=" " id="bb"><br>
                                <input type="text" name="address" placeholder="Address ..." required=" " id="cc"><br>
                              
                 <select name="state" class="form-control" id="dd">
                                            <option>Choose State</option>
<%
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            Connection myconn=DriverManager.getConnection(PATH+PLACE,USERNAME,PASSWORD);
            try
            {
                String q="select * from statetable";
                PreparedStatement myst=myconn.prepareStatement(q);
                ResultSet myresult=myst.executeQuery();
                if(myresult.next())
                {

                    do
                    {

                        out.print("<option value="+myresult.getString("stateid") +">" +myresult.getString("sname") + "</option>");
                    }
                    while(myresult.next());
                }
                else
                {
                    out.print("<option>No State added</option>");
                }
            }
            catch(Exception e)
            {
                out.print("<script type='text/javascript'>");
                            out.print("alert('Error in state query')"+e.getMessage());
                            out.print("</script>");
            }
            finally
            {
              myconn.close();  
            }
        }
        catch(Exception e)
        {
            out.print("<script type='text/javascript'>");
                            out.print("alert('Error in connection')"+e.getMessage());
                            out.print("</script>");
        }
   %>
                                               </select><br>
  <input type="text" name="cityname" placeholder="City..." required=" "id="ee"><br>
  <input type="tel" name="phone" placeholder="Phone number..." required=" " maxlength="10" id="ee"  pattern="^[0-9]+$">
				
				
				<h6>Login information</h6>
					
					<input type="email" name="email" placeholder="Email Address" required=" " id="ff">
					<input type="password" name="pass1" placeholder="Password" required=" " id="gg">
                                        <input type="password" name="pass2" placeholder="Password Confirmation" required=" " id="hh"><br>
                             
                                <input type="submit" class="button" value="Register" name="submit1" id="submit1" ><br>
					</div>
                            
                                        <div id="secondone">
                                            
                                            <select id="question" class="form-control" name="securityquestion" id="ii">
                                                <option>Choose Security Question</option>
                                                <option>Who is your favourite singer ?</option>
                                                <option>What is your favourite place ?</option>
                                                <option>What is your best friend's name ?</option>
                                                <option>What is the place you wish to visit</option>
                                            </select><br>
                                            <input type="text" name="securityanswer" placeholder="Your security answer" required=" " id="jj"><br>
                                            
                                           
                                            <input type="submit" value="Click to finish registration" name="submit2" id="submit2" class="button">
				
                                        </div>
                                <div id="thirdone">
                                    <h4>Registered successfully</h4>
                                </div>
					
                                </form>      
			</div>
<%
boolean flag=false;
if(request.getParameter("submit2")!=null)
{

       String pass1,pass2;
        pass1=request.getParameter("pass1");
        pass2=request.getParameter("pass2");
        if(!pass1.equals(pass2))
        {
            out.print("Password donot match");
        }
        else
        {
            try
            {
                 Class.forName("com.mysql.jdbc.Driver");
                 Connection myconn=DriverManager.getConnection(PATH+PLACE,USERNAME,PASSWORD);
                        try
                        {

                             String usert="",cityname,phonenumber,email,state,rname,secquestion,secanswer,address;
                                usert=request.getParameter("catname");
                                rname=request.getParameter("rname");
                                address=request.getParameter("address");
                                state=request.getParameter("state");
                                cityname=request.getParameter("cityname");
                                phonenumber=request.getParameter("phone");
                                email=request.getParameter("email");
                                secquestion=request.getParameter("securityquestion");
                                secanswer=request.getParameter("securityanswer");

                            String q="insert into registertable(useremailid,password,phno,city,name,secques,secans,state,address,usertype) values(?,?,?,?,?,?,?,?,?,?)";
                            PreparedStatement myst=myconn.prepareStatement(q);
                            myst.setString(1,email);
                            myst.setString(2,pass1);
                            myst.setString(3,phonenumber);
                            myst.setString(4,cityname);
                            myst.setString(5,rname);
                             myst.setString(6,secquestion);
                             myst.setString(7,secanswer);
                             myst.setString(8,state);
                             myst.setString(9,address);
                             myst.setString(10,usert);
//                                                                        myst.setString(8,"false");

//                                               Properties props = new Properties();
//                                               props.put("mail.smtp.host", "smtp.gmail.com");
//                                               props.put("mail.smtp.socketFactory.port", "465");
//                                               props.put("mail.smtp.socketFactory.class",
//                                               "javax.net.ssl.SSLSocketFactory");
//                                               props.put("mail.smtp.auth", "true");
//                                               props.put("mail.smtp.port", "465");
//
//                                               Session session2 = Session.getInstance(props,
//                                               new javax.mail.Authenticator() {
//                                               protected PasswordAuthentication getPasswordAuthentication() {
//                                               return new PasswordAuthentication("shoppersvillaofficial@gmail.com","shoppersvilla99");
//                                               }
//                                               });
//                                               try 
//                                               {
//                                               Message message = new MimeMessage(session2);
//                                               message.addHeader("Content-type", "text/html; charset=UTF-8");
//                                               message.setFrom(new InternetAddress("gtbtrial@gmail.com"));
//                                               message.setRecipients(Message.RecipientType.TO,	InternetAddress.parse(email));
//                                               message.setSubject("Welcome to Shoppers Villa ");
//                                               String link="<a href=http://localhost:8080/Project/authenticate.jsp?name=" + rname + "&email=" + email + ">Click here to authenticate</a>";
//                                               message.setText("You have signed up at our website. Please authenticate your "
//                                               + "emailid by clicking the link below \n" + link);
//                                               Transport.send(message);
//                                               }
//                                               catch (MessagingException e)
//                                               {
//                                               throw new RuntimeException(e);
//                                               }
                                              int res= myst.executeUpdate();
                                              if(res>0)
                                              {
                                                  out.print("<script type='text/javascript'>"
                                               + "alert('Sign up successful')</script>");
                                               //myst.close();
                                              }
                                              else
                                              {
                                                  out.print("<script type='text/javascript'>"
                                               + "alert('Sign up unsuccessful')</script>");
                                              }
                                               
//                                               flag=true;
                                           }

                                           catch(Exception e)
                                           {
                                              out.print("<script type='text/javascript'>"
                                                           + "alert('Error occured')"+e.getMessage()
                                                           + "</script>");
                                             out.print(e.getMessage());
                                           }

                                           finally
                                           {
                                                  myconn.close();
                                           }

                                       }
                                       catch(Exception e)
                                       {
                                           out.print("<script type='text/javascript'>"
                                                           + "alert('Error in connection')"
                                                           + "</script>");
                                             out.print(e.getMessage());
                                       }
                           }


                   }




                   %>
			 
		</div>
	</div><!--

                        
                          
                        
<!-- //register -->
<script type="text/javascript">
    $(document).ready(function(){
        
        $("#secondone").hide();
        $("#thirdone").hide();
       $("#submit1").click(function(){
           var aa=$("#aa").val();
           var bb=$("#bb").val();
           var cc=$("#cc").val();
           var dd=$("#dd").val();
           var ee=$("#ee").val();
           var ff=$("#ff").val();
            var ff=$("#gg").val();
             var ff=$("#hh").val();
           if((aa!="")&&(bb!="")&&(cc!="")&&(dd!="")&&(ee!="")&&(ff!="")&&(gg!="")&&(hh!=""))
           {
               $("#firstone").hide();
               $("#thirdone").hide();
               $("#secondone").show();
               $("#submit2").click(function(){
//                   $("#thirdone").show();
                   $("#firstone").hide();
                   $("#secondone").hide();
               })
//               $("#submit2").click(function(){
//                   if("#question").change(function(){
//                       var x=$("#question option:selected").index();
//                       var sa=$("#securityanswer").val();
//                       if(x==0||sa=="")
//                       {
//                           $("#secondone").show();
//                           $("#firstone").hide();
//                           $("#thirdone").hide();
//                       }
//                       else
//                       {
//                           $("#secondone").hide();
//                           $("#firstone").hide();
//                           $("#thirdone").show();
//                       }
//                   })
//               })
               
               
           }
           else
           {
               $("#firstone").show();
               $("#secondone").hide();
               $("#thirdone").hide();
           }
         }) 
//           $("#submit2").click(function(){
//               $("#firstone").hide();
//               $("#thirdone").hide();
//               if("#question").change(function(){
//                        var ques=$(this).val()
//                        var x=$("#question option:selected").index();
//                        var sa=$("#securityanswer").val(); 
//                        if(x!=0&&(sa!=""))
//                        {
//                            $("#secondone").hide();
//                            $("#firstone").hide();
//                            $("#thirdone").show();
//                            
//                        }
//                        else
//                        {
//                            $("secondone").show();
//                        }
//                 })
//              
//           })
           
       
    });
    </script>
<%--<%@ include file="footer.jsp"%>--%>
    </body>
</html>
