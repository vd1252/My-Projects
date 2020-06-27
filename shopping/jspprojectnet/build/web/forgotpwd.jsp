<%@page import="java.sql.*"%>
<%@page import="javax.mail.*"%>
<%@page import="javax.mail.internet.*"%>
<%@page import="java.util.Properties"%>
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
				<li class="active">forgot password</li>
			</ol>
		</div>
	</div>
        <div class="login">
		<div class="container">
			<h2>Password Recovery Form</h2>
		
			<div class="login-form-grids animated wow slideInUp" data-wow-delay=".5s">
				<form method="post">
					<div class="key">
								<i class="fa fa-envelope" aria-hidden="true"></i>
							
							<input type="text" value="Email" id="email" name="Email" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Email';}" required="">
						</div>
                                                 <input type="submit" name="submit" value="Recover Password" id="rpassword"><br>
 
 <div id="message"></div>
				</form>
                            <%
            if(request.getParameter("submit")!=null)
            {
                int secretkey=(int)(Math.random()*10000000);
                
                String em=request.getParameter("Email");
               
                
                try
                {
                       Class.forName("com.mysql.jdbc.Driver");
                Connection myconnection=DriverManager.getConnection("jdbc:mysql://localhost/evedb", "root", "");
                    try
                    {
                       String q1="update signup set secretkey=? where email=?";
                       PreparedStatement mystatement=myconnection.prepareStatement(q1);
                       mystatement.setInt(1, secretkey);
                       mystatement.setString(2, em);
                     
                       int row=mystatement.executeUpdate();
                       if(row==1)
                       {
                           Properties props = new Properties();
                        props.put("mail.smtp.host", "smtp.gmail.com");
                        props.put("mail.smtp.socketFactory.port", "465");
                        props.put("mail.smtp.socketFactory.class","javax.net.ssl.SSLSocketFactory");
                        props.put("mail.smtp.auth", "true");
                        props.put("mail.smtp.port", "465");

                        Session session2 = Session.getInstance(props,
                        new javax.mail.Authenticator() {
                        protected PasswordAuthentication getPasswordAuthentication() {
                        return new PasswordAuthentication("hungerfreeindia19@gmail.com","Hungerfreeindia2019");
                        }
                        });
                        try {
                        Message message = new MimeMessage(session2);
                        message.addHeader("Content-type", "text/html; charset=UTF-8");
                        message.setFrom(new InternetAddress("hungerfreeindia19@gmail.com"));
                        message.setRecipients(Message.RecipientType.TO,	InternetAddress.parse(em));
                        message.setSubject("Link to recover password");
                       
                        message.setReplyTo(new javax.mail.Address[]{new javax.mail.internet.InternetAddress("hungerfreeindia19@gmail.com")});
                        message.setText("You have requested password reset. Please use the following link to reset your password \n"
                        + "http://localhost:8080/jspprojectnet/changepassrecovery.jsp?username=" + em + "&key=" + secretkey);

                        Transport.send(message);
                        out.print("Mail has been sent");

                        }
                        catch(Exception e) 
                        {
                        out.println("Mail does not works");
                        }
                       }
                       else
                       {
                           out.println("some problem occur");
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
	</div>
		
          <%@include file="footer.jsp" %>
    </body>
</html>
