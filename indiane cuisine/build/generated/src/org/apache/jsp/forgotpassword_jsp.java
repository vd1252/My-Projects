package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import javax.mail.*;
import javax.mail.internet.*;
import java.util.Properties;

public final class forgotpassword_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(3);
    _jspx_dependants.add("/exefiles.jsp");
    _jspx_dependants.add("/header.jsp");
    _jspx_dependants.add("/footer.jsp");
  }

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("\n");
      out.write("\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("\t\t<!----to include css and strips------------>\n");
      out.write("         ");
      out.write("<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n");
      out.write("<meta name=\"keywords\" content=\"Motel Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, \r\n");
      out.write("Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design\" />\r\n");
      out.write("<script type=\"applijewelleryion/x-javascript\"> addEventListener(\"load\", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>\r\n");
      out.write("<link href=\"css/bootstrap.css\" rel='stylesheet' type='text/css' />\r\n");
      out.write("<link href=\"css/bootstrap.min.css\" rel='stylesheet' type='text/css' />\r\n");
      out.write("<link href=\"//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap-glyphicons.css\" rel=\"stylesheet\">\r\n");
      out.write("\r\n");
      out.write("<!-- Custom Theme files -->\r\n");
      out.write("<link href=\"css/style.css\" rel='stylesheet' type='text/css' />\t\r\n");
      out.write("<link href=\"css/default.css\" rel='stylesheet' type='text/css' />\r\n");
      out.write("\r\n");
      out.write("<script src=\"js/jquery-1.11.1.min.js\"></script>\r\n");
      out.write("<!--webfonts-->\r\n");
      out.write("<link href='https//fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>\r\n");
      out.write("<link href='https//fonts.googleapis.com/css?family=Open+Sans:400,300italic,300,600' rel='stylesheet' type='text/css'>\r\n");
      out.write("<link rel=\"stylesheet\" href=\"https://use.fontawesome.com/releases/v5.6.3/css/all.css\" integrity=\"sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/\" crossorigin=\"anonymous\">\r\n");
      out.write("\r\n");
      out.write("   <!--//webfonts-->\r\n");
      out.write("<script type=\"text/javascript\" src=\"js/bootstrap.js\"></script>\r\n");
      out.write("<script type=\"text/javascript\" src=\"js/bootstrap.min.js\"></script>");
      out.write("\n");
      out.write("         \n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("\t<!----to include header portion------------>\n");
      out.write("         ");
      out.write("<!-- banner -->\r\n");
      out.write("\r\n");
      out.write("\t\t<div class=\"header\">\r\n");
      out.write("\t\t\t<div class=\"container\">\r\n");
      out.write("\t\t\t\t<div class=\"logo\">\r\n");
      out.write("\t\t\t\t\t<h1><a href=\"index.jsp\">Cuisine Indienne</a></h1>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t<nav class=\"navbar navbar-default\" role=\"navigation\">\r\n");
      out.write("\t\t\t\t\t\t<div class=\"navbar-header\">\r\n");
      out.write("\t\t\t\t\t\t\t<button type=\"button\" class=\"navbar-toggle\" data-toggle=\"collapse\" data-target=\"#bs-example-navbar-collapse-1\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<span class=\"sr-only\">Toggle navigation</span>\r\n");
      out.write("\t\t\t\t\t\t\t\t<span class=\"icon-bar\"></span>\r\n");
      out.write("\t\t\t\t\t\t\t\t<span class=\"icon-bar\"></span>\r\n");
      out.write("\t\t\t\t\t\t\t\t<span class=\"icon-bar\"></span>\r\n");
      out.write("\t\t\t\t\t\t\t</button>\r\n");
      out.write("\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t<!--/.navbar-header-->\r\n");
      out.write("\t\t\t\t\t\t<div class=\"collapse navbar-collapse\" id=\"bs-example-navbar-collapse-1\">\r\n");
      out.write("\t\t\t\t\t\t\t<ul class=\"nav navbar-nav\">\r\n");
      out.write("                                                               ");

                                    if(session.getAttribute("uname")!=null)
                                    {
                                        out.print("<li><a href='#'>Welcome "+session.getAttribute("uname")+"</a></li>");
					out.print("<li><a href='changepass.jsp'>Change Password</a></li>");
					out.print("<li><a href='contactus.jsp'>Help</a></li>");
                                        out.print("<li><a href='signout.jsp'>Sign out</a></li>");
                                        out.print("<li><a href='orderhistory.jsp'>View orders</a></li>");
                                        out.print("<li><a href='onlyorderfoodpage.jsp'>Order Food </a></li>");
                                    }
                                    else
                                    {
                                        out.print("<li class='active'><a href='index.jsp'>Home</a></li>");
					out.print("<li><a href='onlyorderfoodpage.jsp'>Order Food </a></li>");
					out.print("<li><a href='offers.html'>Offers</a></li>");
                                        out.print("<li><a href='signup.jsp'> Register </a></li>");
					out.print("<li><a href='login.jsp'>Login</a></li>");
					out.print("<li><a href='contact.jsp'>Contactus</a></li>");
                                        out.print("<li></li>");
                                        
                                    }
                                    
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t\t</ul>\r\n");
      out.write("\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t<!--/.navbar-collapse-->\r\n");
      out.write("\t\t\t\t\t</nav>\r\n");
      out.write("\t\t\t\t<div class=\"search-box\">\r\n");
      out.write("\t\t\t\t\t<div id=\"sb-search\" class=\"sb-search\">\r\n");
      out.write("\t\t\t\t\t\t<form>\r\n");
      out.write("\t\t\t\t\t\t\t<input class=\"sb-search-input\" placeholder=\"Enter your search term...\" type=\"search\" name=\"search\" id=\"search\">\r\n");
      out.write("\t\t\t\t\t\t\t<input class=\"sb-search-submit\" type=\"submit\" value=\"\">\r\n");
      out.write("\t\t\t\t\t\t\t<span class=\"sb-icon-search\"> </span>\r\n");
      out.write("\t\t\t\t\t\t\t</form>\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t<div class=\"clearfix\"> </div>\r\n");
      out.write("\r\n");
      out.write("                                <!-- search-scripts -->\r\n");
      out.write("                                        <script src=\"js/classie.js\"></script>\r\n");
      out.write("                                        <script src=\"js/uisearch.js\"></script>\r\n");
      out.write("                                        <script>\r\n");
      out.write("                                                new UISearch( document.getElementById( 'sb-search' ) );\r\n");
      out.write("                                        </script>\r\n");
      out.write("                                <!-- //search-scripts -->\r\n");
      out.write("\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t\r\n");
      out.write("\t<!-- //banner -->");
      out.write("\n");
      out.write("        <div class=\"breadcrumbs\">\n");
      out.write("\t\t<div class=\"container\">\n");
      out.write("\t\t\t<ol class=\"breadcrumb breadcrumb1 animated wow slideInLeft\" data-wow-delay=\".5s\">\n");
      out.write("\t\t\t\t<li><a href=\"admin.jsp\"><span class=\"glyphicon glyphicon-home\" aria-hidden=\"true\"></span>Home</a></li>\n");
      out.write("\t\t\t\t<li class=\"active\">forgot password</li>\n");
      out.write("\t\t\t</ol>\n");
      out.write("\t\t</div>\n");
      out.write("\t</div>\n");
      out.write("        \n");
      out.write("        <!----Add Resturant----------->\n");
      out.write("        <div class=\"login-page\">\n");
      out.write("\t\t<div class=\"container\">\n");
      out.write("                    \n");
      out.write("\t\t\t<div class=\"col-md-3\"></div>\n");
      out.write("\t\t\t   <div class=\"col-md-6 login-right wow fadeInRight\" data-wow-delay=\"0.4s\" >\n");
      out.write("                               <center><h3><font color=\"purple\">forgot Password reset</font></h3></center>\n");
      out.write("                               <center>\n");
      out.write("                                   <form method=\"post\" >\n");
      out.write("                                           \n");
      out.write("                                               <div class=\"key\">\n");
      out.write("\t\t\t\t\t\t\t\t<i class=\"fa fa-envelope\" aria-hidden=\"true\"></i>\n");
      out.write("\t\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t\t<input type=\"text\" value=\"Email\" id=\"email\" name=\"Email\" onfocus=\"this.value = '';\" onblur=\"if (this.value == '') {this.value = 'Email';}\" required=\"\">\n");
      out.write("\t\t\t\t\t\t</div>\n");
      out.write("                                                 <input type=\"submit\" name=\"submit\" value=\"Recover Password\" id=\"rpassword\"><br>\n");
      out.write(" \n");
      out.write(" <div id=\"message\"></div>\n");
      out.write("                                               \n");
      out.write("                                                                                      \n");
      out.write("                             </form>\n");
      out.write("                                 ");

            if(request.getParameter("submit")!=null)
            {
                int secretkey=(int)(Math.random()*10000000);
                
                String em=request.getParameter("Email");
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
                        return new PasswordAuthentication("developerhav2018@gmail.com","HAV@2018");
                        }
                        });
                        try {
                        Message message = new MimeMessage(session2);
                        message.addHeader("Content-type", "text/html; charset=UTF-8");
                        message.setFrom(new InternetAddress("developerhav2018@gmail.com"));
                        message.setRecipients(Message.RecipientType.TO,	InternetAddress.parse(em));
                        message.setSubject("Link to recover password");
                       
                        message.setReplyTo(new javax.mail.Address[]{new javax.mail.internet.InternetAddress("developerhav2018@gmail.com")});
                        message.setText("You have requested password reset. Please use the following link to reset your password \n"
                        + "http://localhost:8080/Zomato/changepassword2.jsp?username=" + em + "&key=" + secretkey);

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
        
        
      out.write("\n");
      out.write("                               </center>\n");
      out.write("\t\t\t   </div>\t\n");
      out.write("                             <div class=\"col-sm-3\"></div>\n");
      out.write("                             \n");
      out.write("\t\t\t\t<div class=\"clearfix\"> </div>\n");
      out.write("                    </div>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t\n");
      out.write("\t\n");
      out.write("  ");
      out.write("<!-- footer -->\r\n");
      out.write("\t<div class=\"footer\">\r\n");
      out.write("\t\t<div class=\"container\">\r\n");
      out.write("\t\t\t<div class=\"col-md-2 deco\">\r\n");
      out.write("\t\t\t\t<h4>Navigation</h4>\r\n");
      out.write("\t\t\t\t<li><a href=\"index.jsp\">Home</a></li>\r\n");
      out.write("\t\t\t\t<li><a href=\"#\">About Us</a></li>\r\n");
      out.write("\t\t\t\t<li><a href=\"onlyorderfoodpage.jsp\">Order Food</a></li> \r\n");
      out.write("\t\t\t\t<li><a href=\"contact.jsp\">Contact</a></li>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t\t<div class=\"col-md-2 deco\">\r\n");
      out.write("\t\t\t\t<h4>Links</h4> \r\n");
      out.write("\t\t\t\t<li><a href=\"login.jsp\">Sign-in</a></li>\r\n");
      out.write("\t\t\t\t<li><a href=\"signup.jsp\">Register</a></li>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t\t<div class=\"col-md-2 deco\">\r\n");
      out.write("\t\t\t\t<h4>Social</h4>\r\n");
      out.write("\t\t\t\t<div class=\"soci\">\r\n");
      out.write("\t\t\t\t\t<li><a href=\"#\"><i class=\"t-1\"> </i></a></li>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t\t<div class=\"col-md-3 cardss\">\r\n");
      out.write("\t\t\t\t<h4>Easy Payment</h4>\r\n");
      out.write("                                <li style=\"color:white;\">Cash On Delivery</li>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t\t<div class=\"col-md-3 pos\">\r\n");
      out.write("\t\t\t<h4>Feedback Form</h4>\r\n");
      out.write("\t\t\t\t\t   <form method=\"post\">\r\n");
      out.write("\t\t\t\t\t\t <input type=\"text\" class=\"textbox\" value=\"Email\" onfocus=\"this.value = '';\" onblur=\"if (this.value == '') {this.value = 'Email';}\">\r\n");
      out.write("\t\t\t\t\t\t<textarea  class=\"textbox\" onfocus=\"this.value='';\" onblur=\"if (this.value == '') {this.value = 'Message';}\">Message</textarea>\r\n");
      out.write("                                                 <div class=\"smt\">\r\n");
      out.write("\t\t\t\t\t\t\t<input type=\"submit\" value=\"Subscribe\">\r\n");
      out.write("\t\t\t\t\t\t </div>\r\n");
      out.write("\t\t\t\t\t   </form>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t\t<div class=\"clearfix\"> </div>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t</div>\r\n");
      out.write("\t<div class=\"footer-bottom\">\r\n");
      out.write("\t\t\t<div class=\"container\">\r\n");
      out.write("\t\t\t\t<p>© 2018 CUISINE INDIENNE . All Rights Reserved | Design and Development by HAV Developers</p>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t<!-- footer -->\r\n");
      out.write("\n");
      out.write("         \n");
      out.write("    </body>\n");
      out.write("</html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
