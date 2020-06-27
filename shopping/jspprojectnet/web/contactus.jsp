<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="javax.mail.*"%>
<%@page import="javax.mail.internet.*"%>
<%@page import="java.util.Properties"%>
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
				<li class="active">Contact</li>
			</ol>
		</div>
	</div>
<!-- //breadcrumbs -->
<!-- contact -->
	<div class="about">
		<div class="w3_agileits_contact_grids">
			<div class="col-md-6 w3_agileits_contact_grid_left">
				<div class="agile_map">
					<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3950.3905851087434!2d-34.90500565012194!3d-8.061582082752993!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x7ab18d90992e4ab%3A0x8e83c4afabe39a3a!2sSport+Club+Do+Recife!5e0!3m2!1sen!2sin!4v1478684415917" style="border:0"></iframe>
				</div>
				<div class="agileits_w3layouts_map_pos">
					<div class="agileits_w3layouts_map_pos1">
						<h3>Contact Info</h3>
						<p>1234k Avenue, 4th block, New York City.</p>
						<ul class="wthree_contact_info_address">
							<li><i class="fa fa-envelope" aria-hidden="true"></i><a href="mailto:info@example.com">info@example.com</a></li>
							<li><i class="fa fa-phone" aria-hidden="true"></i>+(0123) 232 232</li>
						</ul>
						<div class="w3_agile_social_icons w3_agile_social_icons_contact">
							<ul>
								<li><a href="#" class="icon icon-cube agile_facebook"></a></li>
								<li><a href="#" class="icon icon-cube agile_rss"></a></li>
								<li><a href="#" class="icon icon-cube agile_t"></a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
			<div class="col-md-6 w3_agileits_contact_grid_right">
				<h2 class="w3_agile_header">Leave a<span> Message</span></h2>

<form action="#" method="post">
        <span class="input input--ichiro">
                <input class="input__field input__field--ichiro" type="text" id="input-25" name="Name" placeholder=" " required="" />
                <label class="input__label input__label--ichiro" for="input-25">
                        <span class="input__label-content input__label-content--ichiro">Your Name</span>
                </label>
        </span>
        <span class="input input--ichiro">
                <input class="input__field input__field--ichiro" type="email" id="input-26" name="Email" placeholder=" " required="" />
                <label class="input__label input__label--ichiro" for="input-26">
                        <span class="input__label-content input__label-content--ichiro">Your Email</span>
                </label>
        </span>
        <textarea name="Message" placeholder="Your message here..." required=""></textarea>
        <input type="submit" value="Submit" name="s1">
        <%
            if(request.getParameter("s1")!=null)
            {
                String nm=request.getParameter("Name");
                String em=request.getParameter("Email");
                String ms=request.getParameter("Message");
                try
                {
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection myconnection=DriverManager.getConnection("jdbc:mysql://localhost/evedb", "evebatch", "123");
                    try
                    {
                       String q1="insert into contact(name,email,msg) values(?,?,?)";
                       PreparedStatement mystatement=myconnection.prepareStatement(q1);
                       mystatement.setString(1, nm);
                       mystatement.setString(2, em);
                       mystatement.setString(3, ms);
                       int row=mystatement.executeUpdate();
                       if(row==1)
                       {
                           out.println("Thanks for contactus");
                       }
                       else
                       {
                           out.println("some problem occur");
                       }
                        Properties props = new Properties();
                        props.put("mail.smtp.host", "smtp.gmail.com");
                        props.put("mail.smtp.socketFactory.port", "465");
                        props.put("mail.smtp.socketFactory.class","javax.net.ssl.SSLSocketFactory");
                        props.put("mail.smtp.auth", "true");
                        props.put("mail.smtp.port", "465");

                        Session session2 = Session.getInstance(props,
                        new javax.mail.Authenticator() {
                        protected PasswordAuthentication getPasswordAuthentication() {
                        return new PasswordAuthentication("gtbtrial@gmail.com","gtbinstitute13#");
                        }
                        });
                        try {
                        Message message = new MimeMessage(session2);
                        message.addHeader("Content-type", "text/html; charset=UTF-8");
                        message.setFrom(new InternetAddress("gtbtrial@gmail.com"));
                        message.setRecipients(Message.RecipientType.TO,	InternetAddress.parse("gtbinstitute@yahoo.com"));
                        message.setSubject("Feedback from website");
                       
                        message.setReplyTo(new javax.mail.Address[]{new javax.mail.internet.InternetAddress(em)});
                        message.setText("Name : " + nm + "\nEmailid : "+ em + "\nMessage : " + ms);

                        Transport.send(message);
                        out.print("Mail has been sent");

                        }
                        catch(Exception e) 
                        {
                        out.println("Mail does not works");
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
</form>
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
          <%@include file="footer.jsp" %>
    </body>
</html>
