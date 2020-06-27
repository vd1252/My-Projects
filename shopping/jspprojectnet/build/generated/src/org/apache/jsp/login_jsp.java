package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
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
      out.write("<!DOCTYPE html>\n");
      out.write("\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("\t\t<!----to include css and strips------------>\n");
      out.write("        ");
      out.write("<title>Super Market an Ecommerce Online Shopping Category Flat Bootstrap Responsive Website Template | Home :: w3layouts</title>\n");
      out.write("<!-- for-mobile-apps -->\n");
      out.write("<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\n");
      out.write("<meta name=\"keywords\" content=\"Super Market Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, \n");
      out.write("Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design\" />\n");
      out.write("<script type=\"application/x-javascript\"> addEventListener(\"load\", function() { setTimeout(hideURLbar, 0); }, false);\n");
      out.write("\t\tfunction hideURLbar(){ window.scrollTo(0,1); } </script>\n");
      out.write("<!-- //for-mobile-apps -->\n");
      out.write("<link href=\"css/bootstrap.css\" rel=\"stylesheet\" type=\"text/css\" media=\"all\" />\n");
      out.write("<link href=\"css/style.css\" rel=\"stylesheet\" type=\"text/css\" media=\"all\" />\n");
      out.write("<!-- font-awesome icons -->\n");
      out.write("<link href=\"css/font-awesome.css\" rel=\"stylesheet\"> \n");
      out.write("<!-- //font-awesome icons -->\n");
      out.write("<!-- js -->\n");
      out.write("<script src=\"js/jquery-1.11.1.min.js\"></script>\n");
      out.write("<!-- //js -->\n");
      out.write("<link href='//fonts.googleapis.com/css?family=Raleway:400,100,100italic,200,200italic,300,400italic,500,500italic,600,600italic,700,700italic,800,800italic,900,900italic' rel='stylesheet' type='text/css'>\n");
      out.write("<link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>\n");
      out.write("<!-- start-smoth-scrolling -->\n");
      out.write("<script type=\"text/javascript\" src=\"js/move-top.js\"></script>\n");
      out.write("<script type=\"text/javascript\" src=\"js/easing.js\"></script>\n");
      out.write("<script type=\"text/javascript\">\n");
      out.write("\tjQuery(document).ready(function($) {\n");
      out.write("\t\t$(\".scroll\").click(function(event){\t\t\n");
      out.write("\t\t\tevent.preventDefault();\n");
      out.write("\t\t\t$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);\n");
      out.write("\t\t});\n");
      out.write("\t});\n");
      out.write("</script>\n");
      out.write("<!-- start-smoth-scrolling -->\n");
      out.write("<script src=\"js/bootstrap.min.js\"></script>\n");
      out.write("\n");
      out.write("<!-- top-header and slider -->\n");
      out.write("<!-- here stars scrolling icon -->\n");
      out.write("\t<script type=\"text/javascript\">\n");
      out.write("\t\t$(document).ready(function() {\n");
      out.write("\t\t\t/*\n");
      out.write("\t\t\t\tvar defaults = {\n");
      out.write("\t\t\t\tcontainerID: 'toTop', // fading element id\n");
      out.write("\t\t\t\tcontainerHoverID: 'toTopHover', // fading element hover id\n");
      out.write("\t\t\t\tscrollSpeed: 1200,\n");
      out.write("\t\t\t\teasingType: 'linear' \n");
      out.write("\t\t\t\t};\n");
      out.write("\t\t\t*/\n");
      out.write("\t\t\t\t\t\t\t\t\n");
      out.write("\t\t\t$().UItoTop({ easingType: 'easeOutQuart' });\n");
      out.write("\t\t\t\t\t\t\t\t\n");
      out.write("\t\t\t});\n");
      out.write("\t</script>\n");
      out.write("<!-- //here ends scrolling icon -->\n");
      out.write("<script src=\"js/minicart.min.js\"></script>\n");
      out.write("<script>\n");
      out.write("\t// Mini Cart\n");
      out.write("\tpaypal.minicart.render({\n");
      out.write("\t\taction: '#'\n");
      out.write("\t});\n");
      out.write("\n");
      out.write("\tif (~window.location.search.indexOf('reset=true')) {\n");
      out.write("\t\tpaypal.minicart.reset();\n");
      out.write("\t}\n");
      out.write("</script>\n");
      out.write("<!-- main slider-banner -->\n");
      out.write("<script src=\"js/skdslider.min.js\"></script>\n");
      out.write("<link href=\"css/skdslider.css\" rel=\"stylesheet\">\n");
      out.write("<script type=\"text/javascript\">\n");
      out.write("\t\tjQuery(document).ready(function(){\n");
      out.write("\t\t\tjQuery('#demo1').skdslider({'delay':5000, 'animationSpeed': 2000,'showNextPrev':true,'showPlayButton':true,'autoSlide':true,'animationType':'fading'});\n");
      out.write("\t\t\t\t\t\t\n");
      out.write("\t\t\tjQuery('#responsive').change(function(){\n");
      out.write("\t\t\t  $('#responsive_wrapper').width(jQuery(this).val());\n");
      out.write("\t\t\t});\n");
      out.write("\t\t\t\n");
      out.write("\t\t});\n");
      out.write("</script>\t\n");
      out.write("<!-- //main slider-banner --> ");
      out.write("\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("\t<!----to include header portion------------> \n");
      out.write("         ");
      out.write('\n');
      out.write('\n');

String cookieName="uname";
Cookie cookies[]=request.getCookies();
if(cookies!=null)
{
    for(int i=0;i<=cookies.length-1;i++)
    {
        if(cookies[i].getName().equals(cookieName))
        {
            String email=cookies[i].getValue();
            try
                {
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection myconnection=DriverManager.getConnection("jdbc:mysql://localhost/evedb", "root", "");
                    try
                    {
                        String qu="select * from signup where email=?";
                        PreparedStatement myst=myconnection.prepareStatement(qu);
                        myst.setString(1, email);
                        ResultSet myres=myst.executeQuery();
                        if(myres.next())
                        {
                            String nm=myres.getString("name");
                            session.setAttribute("uname", nm);
                            session.setAttribute("email", myres.getString("email"));//unique
                            session.setAttribute("utype", myres.getString("utype"));
                        }
                        else
                        {
                            out.print("Wrong Username and password");
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
        }
    }


      out.write("\n");
      out.write("<div class=\"agileits_header\">\n");
      out.write("\t\t<div class=\"container\">\n");
      out.write("\t\t\t<div class=\"w3l_offers\">\n");
      out.write("\t\t\t\t<p>SALE UP TO 70% OFF. USE CODE \"SALE70%\" . <a href=\"products.html\">SHOP NOW</a></p>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t\t<div class=\"agile-login\">\n");
      out.write("\t\t\t\t<ul>\n");
      out.write("                                    ");

                                        if(session.getAttribute("uname")!=null)
                                        {
                                            out.print("<li><a href='#'> Welcome "+session.getAttribute("uname")+"</a></li>");
                                           out.print("<li><a href='changepass.jsp'> Change Password</a></li>");
                                           out.print("<li><a href='signout.jsp'>Signout</a></li>");
                                        }
                                        else
                                        {
                                            out.print("<li><a href='signup.jsp'> Create Account </a></li>");
                                            out.print("<li><a href='login.jsp'>Login</a></li>");
                                            out.print("<li><a href='contactus.jsp'>Help</a></li>");
                                        }
                                    
      out.write("\n");
      out.write("\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\n");
      out.write("\t\t\t\t</ul>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t\t<div class=\"product_list_header\">  \n");
      out.write("\t\t\t\t\t<form action=\"#\" method=\"post\" class=\"last\"> \n");
      out.write("\t\t\t\t\t\t<input type=\"hidden\" name=\"cmd\" value=\"_cart\">\n");
      out.write("\t\t\t\t\t\t<input type=\"hidden\" name=\"display\" value=\"1\">\n");
      out.write("\t\t\t\t\t\t<button class=\"w3view-cart\" type=\"submit\" name=\"submit\" value=\"\"><i class=\"fa fa-cart-arrow-down\" aria-hidden=\"true\"></i></button>\n");
      out.write("\t\t\t\t\t</form>  \n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t\t<div class=\"clearfix\"> </div>\n");
      out.write("\t\t</div>\n");
      out.write("\t</div> \n");
      out.write("<div class=\"logo_products\">\n");
      out.write("\t\t<div class=\"container\">\n");
      out.write("\t\t<div class=\"w3ls_logo_products_left1\">\n");
      out.write("\t\t\t\t<ul class=\"phone_email\">\n");
      out.write("\t\t\t\t\t<li><i class=\"fa fa-phone\" aria-hidden=\"true\"></i>Order online or call us : (+0123) 234 567</li>\n");
      out.write("\t\t\t\t\t\n");
      out.write("\t\t\t\t</ul>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t\t<div class=\"w3ls_logo_products_left\">\n");
      out.write("\t\t\t\t<h1><a href=\"index.html\">super Market</a></h1>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t<div class=\"w3l_search\">\n");
      out.write("\t\t\t<form action=\"#\" method=\"post\">\n");
      out.write("\t\t\t\t<input type=\"search\" name=\"Search\" placeholder=\"Search for a Product...\" required=\"\">\n");
      out.write("\t\t\t\t<button type=\"submit\" class=\"btn btn-default search\" aria-label=\"Left Align\">\n");
      out.write("\t\t\t\t\t<i class=\"fa fa-search\" aria-hidden=\"true\"> </i>\n");
      out.write("\t\t\t\t</button>\n");
      out.write("\t\t\t\t<div class=\"clearfix\"></div>\n");
      out.write("\t\t\t</form>\n");
      out.write("\t\t</div>\n");
      out.write("\t\t\t\n");
      out.write("\t\t\t<div class=\"clearfix\"> </div>\n");
      out.write("\t\t</div>\n");
      out.write("\t</div>\n");
      out.write("<div class=\"navigation-agileits\">\n");
      out.write("\t\t<div class=\"container\">\n");
      out.write("\t\t\t<nav class=\"navbar navbar-default\">\n");
      out.write("\t\t\t\t\t\t\t<!-- Brand and toggle get grouped for better mobile display -->\n");
      out.write("\t\t\t\t\t\t\t<div class=\"navbar-header nav_2\">\n");
      out.write("\t\t\t\t\t\t\t\t<button type=\"button\" class=\"navbar-toggle collapsed navbar-toggle1\" data-toggle=\"collapse\" data-target=\"#bs-megadropdown-tabs\">\n");
      out.write("\t\t\t\t\t\t\t\t\t<span class=\"sr-only\">Toggle navigation</span>\n");
      out.write("\t\t\t\t\t\t\t\t\t<span class=\"icon-bar\"></span>\n");
      out.write("\t\t\t\t\t\t\t\t\t<span class=\"icon-bar\"></span>\n");
      out.write("\t\t\t\t\t\t\t\t\t<span class=\"icon-bar\"></span>\n");
      out.write("\t\t\t\t\t\t\t\t</button>\n");
      out.write("\t\t\t\t\t\t\t</div> \n");
      out.write("\t\t\t\t\t\t\t<div class=\"collapse navbar-collapse\" id=\"bs-megadropdown-tabs\">\n");
      out.write("\t\t\t\t\t\t\t\t<ul class=\"nav navbar-nav\">\n");
      out.write("\t\t\t\t\t\t\t\t\t<li class=\"active\"><a href=\"index.jsp\" class=\"act\">Home</a></li>\t\n");
      out.write("\t\t\t\t\t\t\t\t\t<!-- Mega Menu -->\n");
      out.write("                                                                        ");

try
{
    Class.forName("com.mysql.jdbc.Driver");
    Connection myconnection=DriverManager.getConnection("jdbc:mysql://localhost/evedb", "root", "");
    try
    {
        String qu="select * from category";
        PreparedStatement myst=myconnection.prepareStatement(qu);
        ResultSet myres=myst.executeQuery();
        if(myres.next())
        {
            do
            {
            
      out.write("\n");
      out.write("                <li class=\"dropdown\">\n");
      out.write("                    <a href=\"#\" class=\"dropdown-toggle\" data-toggle=\"dropdown\">");
 out.print(myres.getString("name"));
      out.write("<b class=\"caret\"></b></a>\n");
      out.write("                <ul class=\"dropdown-menu multi-column columns-3\">\n");
      out.write("                        <div class=\"row\">\n");
      out.write("                                <div class=\"multi-gd-img\">\n");
      out.write("                                        <ul class=\"multi-column-dropdown\">\n");
      out.write("                                                <h6>");
 out.print(myres.getString("name"));
      out.write("</h6>\n");
      out.write("                                                ");

     try
    {
        String qu1="select * from subcategory where catid=?";
        PreparedStatement myst1=myconnection.prepareStatement(qu1);
        myst1.setString(1, myres.getString("catid"));
        ResultSet myres1=myst1.executeQuery();
        if(myres1.next())
        {
            do
            {
                                                    
            
      out.write("\n");
      out.write("            <li><a href=\"showuserproduct.jsp?subcatid=");
 out.print(myres1.getString("subcatid"));
      out.write('"');
      out.write('>');

                    out.print(myres1.getString("name"));
                    
      out.write("</a></li>\n");
      out.write("           ");

           }while(myres1.next());
        }
        else
        {
            out.print("<li>Categories not available</li>");
        }

    }
    catch(Exception e)
    {
        out.print("Error in query"+e.getMessage());
    }

          
           
      out.write("                                     \n");
      out.write("                                        </ul>\n");
      out.write("                                </div>\t\n");
      out.write("\n");
      out.write("                        </div>\n");
      out.write("                </ul>\n");
      out.write("        </li>\n");
      out.write("            ");

            }while(myres.next());
        }
        else
        {
            out.print("Categories not available");
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

      out.write("\n");
      out.write("\t\t\t\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t\t\t\t\n");
      out.write("        <li><a href=\"gourmet.html\">Gourmet</a></li>\n");
      out.write("        \n");
      out.write("</ul>\n");
      out.write("\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t</nav>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t</div>\n");
      out.write("\t\t");
      out.write("\n");
      out.write("        <div class=\"breadcrumbs\">\n");
      out.write("\t\t<div class=\"container\">\n");
      out.write("\t\t\t<ol class=\"breadcrumb breadcrumb1 animated wow slideInLeft\" data-wow-delay=\".5s\">\n");
      out.write("\t\t\t\t<li><a href=\"index.html\"><span class=\"glyphicon glyphicon-home\" aria-hidden=\"true\"></span>Home</a></li>\n");
      out.write("\t\t\t\t<li class=\"active\">Login Page</li>\n");
      out.write("\t\t\t</ol>\n");
      out.write("\t\t</div>\n");
      out.write("\t</div>s\n");
      out.write("        <div class=\"login\">\n");
      out.write("\t\t<div class=\"container\">\n");
      out.write("\t\t\t<h2>Login Form</h2>\n");
      out.write("\t\t\n");
      out.write("\t\t\t<div class=\"login-form-grids animated wow slideInUp\" data-wow-delay=\".5s\">\n");
      out.write("\t\t\t\t<form method=\"post\">\n");
      out.write("\t\t\t\t\t<input type=\"email\" placeholder=\"Email Address\" required=\" \" name=\"em\">\n");
      out.write("\t\t\t\t\t<input type=\"password\" placeholder=\"Password\" required=\" \" name=\"pass\">\n");
      out.write("                                        <div class=\"forgot\">\n");
      out.write("                                            <label><input type=\"checkbox\" name=\"ch1\">Keep Me Login</label>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t<div class=\"forgot\">\n");
      out.write("\t\t\t\t\t\t<a href=\"forgotpwd.jsp\">Forgot Password?</a>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t<input type=\"submit\" value=\"Login\" name=\"s1\">\n");

    if(request.getParameter("s1")!=null)
    {
        String uname=request.getParameter("em");
        String pass=request.getParameter("pass");
        String SALT = "#$%#$%%$%^t$%#";
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            Connection myconnection=DriverManager.getConnection("jdbc:mysql://localhost/evedb", "root", "");
            try
            {
                String qu="select * from signup where email=? and pass=MD5(?)";
                PreparedStatement myst=myconnection.prepareStatement(qu);
                myst.setString(1, uname);
                myst.setString(2, pass + SALT);
                ResultSet myres=myst.executeQuery();
                if(myres.next())
                {
                    String nm=myres.getString("name");
                    session.setAttribute("uname", nm);
                    session.setAttribute("email", myres.getString("email"));//unique
                    session.setAttribute("utype", myres.getString("utype"));
                    if(myres.getString("utype").equals("admin"))
                    {
                        response.sendRedirect("admin.jsp");
                    }
                    else
                    {
                        if(request.getParameter("ch1")!=null)
                        {
                            Cookie myCookie=new Cookie("uname",myres.getString("email"));
                            myCookie.setMaxAge(7*24*60*60);
                            response.addCookie(myCookie);
                        }
                        if(request.getParameter("pid")!=null)
                        {
                            response.sendRedirect("productdetails.jsp?pid="+request.getParameter("pid"));
                        }
                        else
                        {
                            
                            response.sendRedirect("index.jsp");
                        }
                    }
                }
                else
                {
                    out.print("Wrong Username and password");
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
      out.write("\t\t\t\t</form>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t\t<h4>For New People</h4>\n");
      out.write("\t\t\t<p><a href=\"signup.jsp\">Register Here</a> (Or) go back to <a href=\"index.jsp\">Home<span class=\"glyphicon glyphicon-menu-right\" aria-hidden=\"true\"></span></a></p>\n");
      out.write("\t\t</div>\n");
      out.write("\t</div>\n");
      out.write("\t\t\n");
      out.write("          ");
      out.write("<div class=\"footer\">\n");
      out.write("\t\t<div class=\"container\">\n");
      out.write("\t\t\t<div class=\"w3_footer_grids\">\n");
      out.write("\t\t\t\t<div class=\"col-md-3 w3_footer_grid\">\n");
      out.write("\t\t\t\t\t<h3>Contact</h3>\n");
      out.write("\t\t\t\t\t\n");
      out.write("\t\t\t\t\t<ul class=\"address\">\n");
      out.write("\t\t\t\t\t\t<li><i class=\"glyphicon glyphicon-map-marker\" aria-hidden=\"true\"></i>1234k Avenue, 4th block, <span>New York City.</span></li>\n");
      out.write("\t\t\t\t\t\t<li><i class=\"glyphicon glyphicon-envelope\" aria-hidden=\"true\"></i><a href=\"mailto:info@example.com\">info@example.com</a></li>\n");
      out.write("\t\t\t\t\t\t<li><i class=\"glyphicon glyphicon-earphone\" aria-hidden=\"true\"></i>+1234 567 567</li>\n");
      out.write("\t\t\t\t\t</ul>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t\t<div class=\"col-md-3 w3_footer_grid\">\n");
      out.write("\t\t\t\t\t<h3>Information</h3>\n");
      out.write("\t\t\t\t\t<ul class=\"info\"> \n");
      out.write("\t\t\t\t\t\t<li><i class=\"fa fa-arrow-right\" aria-hidden=\"true\"></i><a href=\"about.html\">About Us</a></li>\n");
      out.write("\t\t\t\t\t\t<li><i class=\"fa fa-arrow-right\" aria-hidden=\"true\"></i><a href=\"contact.html\">Contact Us</a></li>\n");
      out.write("\t\t\t\t\t\t<li><i class=\"fa fa-arrow-right\" aria-hidden=\"true\"></i><a href=\"short-codes.html\">Short Codes</a></li>\n");
      out.write("\t\t\t\t\t\t<li><i class=\"fa fa-arrow-right\" aria-hidden=\"true\"></i><a href=\"faq.html\">FAQ's</a></li>\n");
      out.write("\t\t\t\t\t\t<li><i class=\"fa fa-arrow-right\" aria-hidden=\"true\"></i><a href=\"products.html\">Special Products</a></li>\n");
      out.write("\t\t\t\t\t</ul>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t\t<div class=\"col-md-3 w3_footer_grid\">\n");
      out.write("\t\t\t\t\t<h3>Category</h3>\n");
      out.write("\t\t\t\t\t<ul class=\"info\"> \n");
      out.write("\t\t\t\t\t\t<li><i class=\"fa fa-arrow-right\" aria-hidden=\"true\"></i><a href=\"groceries.html\">Groceries</a></li>\n");
      out.write("\t\t\t\t\t\t<li><i class=\"fa fa-arrow-right\" aria-hidden=\"true\"></i><a href=\"household.html\">Household</a></li>\n");
      out.write("\t\t\t\t\t\t<li><i class=\"fa fa-arrow-right\" aria-hidden=\"true\"></i><a href=\"personalcare.html\">Personal Care</a></li>\n");
      out.write("\t\t\t\t\t\t<li><i class=\"fa fa-arrow-right\" aria-hidden=\"true\"></i><a href=\"packagedfoods.html\">Packaged Foods</a></li>\n");
      out.write("\t\t\t\t\t\t<li><i class=\"fa fa-arrow-right\" aria-hidden=\"true\"></i><a href=\"beverages.html\">Beverages</a></li>\n");
      out.write("\t\t\t\t\t</ul>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t\t<div class=\"col-md-3 w3_footer_grid\">\n");
      out.write("\t\t\t\t\t<h3>Profile</h3>\n");
      out.write("\t\t\t\t\t<ul class=\"info\"> \n");
      out.write("\t\t\t\t\t\t<li><i class=\"fa fa-arrow-right\" aria-hidden=\"true\"></i><a href=\"products.html\">Store</a></li>\n");
      out.write("\t\t\t\t\t\t<li><i class=\"fa fa-arrow-right\" aria-hidden=\"true\"></i><a href=\"checkout.html\">My Cart</a></li>\n");
      out.write("\t\t\t\t\t\t<li><i class=\"fa fa-arrow-right\" aria-hidden=\"true\"></i><a href=\"login.html\">Login</a></li>\n");
      out.write("\t\t\t\t\t\t<li><i class=\"fa fa-arrow-right\" aria-hidden=\"true\"></i><a href=\"registered.html\">Create Account</a></li>\n");
      out.write("\t\t\t\t\t</ul>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t\t<div class=\"clearfix\"> </div>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t</div>\n");
      out.write("\t\t\n");
      out.write("\t\t<div class=\"footer-copy\">\n");
      out.write("\t\t\t\n");
      out.write("\t\t\t<div class=\"container\">\n");
      out.write("\t\t\t\t<p>© 2017 Super Market. All rights reserved | Design by <a href=\"http://w3layouts.com/\">W3layouts</a></p>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t</div>\n");
      out.write("\t\t\n");
      out.write("\t</div>\t\n");
      out.write("\t<div class=\"footer-botm\">\n");
      out.write("\t\t\t<div class=\"container\">\n");
      out.write("\t\t\t\t<div class=\"w3layouts-foot\">\n");
      out.write("\t\t\t\t\t<ul>\n");
      out.write("\t\t\t\t\t\t<li><a href=\"#\" class=\"w3_agile_facebook\"><i class=\"fa fa-facebook\" aria-hidden=\"true\"></i></a></li>\n");
      out.write("\t\t\t\t\t\t<li><a href=\"#\" class=\"agile_twitter\"><i class=\"fa fa-twitter\" aria-hidden=\"true\"></i></a></li>\n");
      out.write("\t\t\t\t\t\t<li><a href=\"#\" class=\"w3_agile_dribble\"><i class=\"fa fa-dribbble\" aria-hidden=\"true\"></i></a></li>\n");
      out.write("\t\t\t\t\t\t<li><a href=\"#\" class=\"w3_agile_vimeo\"><i class=\"fa fa-vimeo\" aria-hidden=\"true\"></i></a></li>\n");
      out.write("\t\t\t\t\t</ul>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t\t<div class=\"payment-w3ls\">\t\n");
      out.write("\t\t\t\t\t<img src=\"images/card.png\" alt=\" \" class=\"img-responsive\">\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t\t<div class=\"clearfix\"> </div>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t</div>");
      out.write("\n");
      out.write("    </body>\n");
      out.write("</html>\n");
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
