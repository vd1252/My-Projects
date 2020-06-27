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
         <%@include file="header.jsp" %>
	
<!--start-contact-->
	<div class="contact">
		<div class="container">
			<div class="contact-top heading">
				<h3>CONTACT US</h3>
			</div>
			<div class="contact-bottom">
                            <form>
				<input type="text" value="Name" name="name" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Name';}" />
				<input type="text" value="Email" name="email" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Email';}" />				
				<textarea value="Message:" name="msg" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Message';}">Message..</textarea>
				<div class="submit-btn">
					
						<input type="submit"  name="s1" value="SUBMIT">
                                                 <%
                                                        if(request.getParameter("s1")!=null)
                                                        {
                                                            String nm,em,msg;
                                                            nm=request.getParameter("name");
                                                            em=request.getParameter("email");
                                                            msg=request.getParameter("msg");

                                                            try
                                                            {
                                                                Class.forName("com.mysql.jdbc.Driver");
                                                                Connection myconn=DriverManager.getConnection("jdbc:mysql://localhost/zomato","root","");

                                                            try
                                                            {
                                                                    String q2="insert into contactus(name,email,msg) values (?,?,?)";
                                                                    PreparedStatement myst=myconn.prepareStatement(q2);
                                                                        myst.setString(1, nm);
                                                                        myst.setString(2, em);
                                                                        myst.setString(3, msg);

                                                                        int res=myst.executeUpdate();
                                                                        if(res==1)//check whether the result found or not
                                                                        {
                                                                             out.print("Thanks for contacting us :) We'll reach back to you soon.");
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
                            </form>
			</div>
		<!--end-contact-->
		<!--start-map-->
			<div class="co-bt">
				<div class="col-md-3 add">
					<h4>Address</h4>
					<address>
						HAV DEVELOPER<br>
						JALANDHAR,INDIA<br>
						<abbr title="Phone">P :</abbr> 97806-50815
					</address>
				</div>
				<div class="col-md-9 map">
					<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d93302.7690632939!2d75.50337851910588!3d31.32252538701129!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x391a5a5747a9eb91%3A0xc74b34c05aa5b4b8!2sJalandhar%2C+Punjab!5e1!3m2!1sen!2sin!4v1543124208221" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>	
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!--end-map-->

<!-- footer -->
<%@include file="footer.jsp" %>    
            <script>
              $(document).ready(function(){
                  $("#uname").blur(function(){
                      var a=$(this).val();
                      $.ajax({
                          url:"welcomeajax.jsp",
                          
                          type:"post",
                          data:{"name":a},
                          beforeSend:function()
                          {
                              $("#msg").html("<img src='images/preloader.gif' height='30px' width='30px'> ");
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
                                type:"post",
                                data:{"email":a},
                                beforeSend:function()
                                {
                                     $("#msg1").html("<img src='images/preloader.gif' height='30px' width='30px'> ");
                                },
                                success:function(res)
                                {
                                    $("#msg1").html(res)
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
