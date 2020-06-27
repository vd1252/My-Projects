package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class login_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<title>Zomato</title>\r\n");
      out.write("<!----to include css and strips------------>\r\n");
      out.write("        ");
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
      out.write("\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("    <!----to include header portion------------>\r\n");
      out.write("    <div class=\"banner1\">\r\n");
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
      out.write("\r\n");
      out.write("    </div>\r\n");
      out.write("\t\r\n");
      out.write("<!-- registration -->\r\n");
      out.write("\t<div class=\"breadcrumbs\">\r\n");
      out.write("\t\t<div class=\"container-fluid\">\r\n");
      out.write("\t\t\t<ol class=\"breadcrumb breadcrumb1 animated wow slideInLeft\" data-wow-delay=\".5s\">\r\n");
      out.write("\t\t\t\t<li><a href=\"index.jsp\"><span class=\"glyphicon glyphicon-home\" aria-hidden=\"true\"></span>Home</a></li>\r\n");
      out.write("\t\t\t\t<li class=\"active\">Login Page</li>\r\n");
      out.write("\t\t\t</ol>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("            \r\n");
      out.write("\t</div>\r\n");
      out.write("<div class=\"login-page\">\r\n");
      out.write("\t\t<div class=\"container\">\r\n");
      out.write("\t\t\t<div class=\"account_grid\">\r\n");
      out.write("\t\t\t\t<div class=\"col-md-6 login-left wow fadeInLeft\" data-wow-delay=\"0.4s\">\r\n");
      out.write("\t\t\t\t\t<h3><font color=\"purple\">NEW CUSTOMERS</font></h3>\r\n");
      out.write("\t\t\t\t\t<p>By creating an account with our store, you will be able to move through the checkout process faster, store multiple shipping addresses, view and track your orders in your account and more.</p>\r\n");
      out.write("\t\t\t\t\t<a class=\"acount-btn\" href=\"signup.jsp\">Create an Account</a>\r\n");
      out.write("\t\t\t   </div>\r\n");
      out.write("\t\t\t   <div class=\"col-md-6 login-right wow fadeInRight\" data-wow-delay=\"0.4s\">\r\n");
      out.write("\t\t\t\t\t<h3><font color=\"purple\">REGISTERED CUSTOMERS</font></h3>\r\n");
      out.write("\t\t\t\t\t<p>If you have an account with us, please log in.</p>\r\n");
      out.write("\t\t\t\t\t<form method=\"post\">\r\n");
      out.write("\t\t\t\t\t\t<div>\r\n");
      out.write("\t\t\t\t\t\t\t<span>Email Address<label>*</label></span>\r\n");
      out.write("\t\t\t\t\t\t\t<input type=\"email\" placeholder=\"Email Address\" required=\" \" name=\"em\"> \r\n");
      out.write("\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t<div>\r\n");
      out.write("\t\t\t\t\t\t\t<span>Password<label>*</label></span>\r\n");
      out.write("\t\t\t\t\t\t\t<input type=\"password\" placeholder=\"Password\" required=\" \" name=\"pass\"> \r\n");
      out.write("\t\t\t\t\t\t</div>\r\n");
      out.write("                                        <div class =\"forgot\">\r\n");
      out.write("                                            <input type=\"checkbox\" name=\"ch1\">Keep me logged in\r\n");
      out.write("                                           \r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t<a class=\"forgot\" href=\"forgotpassword.jsp\">Forgot Your Password?</a>\r\n");
      out.write("\t\t\t\t\t\t<input type=\"submit\" value=\"Login\" name=\"s1\">\r\n");
      out.write("                                                  ");

                                            if(request.getParameter("s1")!=null)
                                            {         
                                                        String myURL="", myUNAME="", myPASS="";
                                                        myURL = getServletContext().getInitParameter("URL");
                                                        myUNAME = getServletContext().getInitParameter("UNAME");
                                                        myPASS = getServletContext().getInitParameter("PASS");
                                                        String uname=request.getParameter("em");
                                                        String pass=request.getParameter("pass");
                                                        String SALT="%%%,**,%$^^";
                                            try
                                                {   
                                                    Class.forName("com.mysql.jdbc.Driver");
                                                    Connection myconnection=DriverManager.getConnection(myURL, myUNAME, myPASS);
                                                    try
                                                    {  String q="Select * from signup where email=? and pass=MD5(?)";
                                                       PreparedStatement myst=myconnection.prepareStatement(q);
                                                       myst.setString(1,uname);
                                                       myst.setString(2,pass+SALT);
                                                       ResultSet myres = myst.executeQuery();    
                                                        if(myres.next())
                                                        {
                                                            String nm=myres.getString("name");
                                                            session.setAttribute("uname",nm);
                                                            session.setAttribute("email", myres.getString("email"));
                                                            session.setAttribute("utype", myres.getString("utype"));
                                                            
                                                            if(myres.getString("utype").equals("admin"))
                                                            {
                                                            response.sendRedirect("admin.jsp");
                                                            }
                                                            else
                                                            {
                                                                
                                                                //if(request.getParameter("pid")!= null)
                                                                //  {
                                                                 //     response.sendRedirect("productdetails.jsp?pid="+request.getParameter("pid"));
                                                                 // }
                                                               // else
                                                                //{
                                                                    if(request.getParameter("ch1")!=null)
                                                                    {
                            
                                                               Cookie myCookie=new Cookie("uname",myres.getString("email"));
                                                                        myCookie.setMaxAge(7*24*60*60);
                                                                        response.addCookie(myCookie);
                                                                    }
                                                            response.sendRedirect("index.jsp");    
                                                                   // }
                                                            }
                                                        }
                                                        else
                                                        {
                                                    try
                                                    {  
                                                        String q1="Select * from resturant where shopemail=? and shoppass=MD5(?)";
                                                    
                                                       PreparedStatement myst1=myconnection.prepareStatement(q1);
                                                       myst1.setString(1,uname);
                                                       myst1.setString(2,pass+SALT);
                                                       ResultSet myres1 = myst1.executeQuery();    
                                                        if(myres1.next())
                                                        {
                                                            String nm=myres1.getString("rname");
                                                            session.setAttribute("rid",myres1.getString("rid"));
                                                            session.setAttribute("uname",nm);
                                                            session.setAttribute("email", myres1.getString("shopemail"));
                                                            session.setAttribute("utype", myres1.getString("usertype"));
                                                            session.setAttribute("usertype", myres1.getString("usertype"));
                                                            if(myres1.getString("usertype").equals("shopkeeper"))
                                                            {
                                                                if(request.getParameter("ch1")!=null)
                                                                    {
                            
                                                                       Cookie myCookie=new Cookie("uname",myres1.getString("shopemail"));
                                                                        myCookie.setMaxAge(7*24*60*60);
                                                                        response.addCookie(myCookie);
                                                                    }
                                                             
                                                            response.sendRedirect("shopkeeper.jsp");
                                                            
                                                            }
                                                            
                                                            
                                                        }
                                                        else{
                                                            
                                                           out.print("wrong username and password");     
                                                        }
                                                    }

                                                               
                                                catch(Exception e)
                                                {
                                                    out.print("Error in query"+e.getMessage());
                                                }
                                            }}
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
                                        
      out.write("\r\n");
      out.write("\t\t\t\t\t</form>\r\n");
      out.write("\t\t\t   </div>\t\r\n");
      out.write("\t\t\t\t<div class=\"clearfix\"> </div>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t</div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("            ");
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
      out.write("\r\n");
      out.write("            \r\n");
      out.write("</body>\r\n");
      out.write("</html>\r\n");
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
