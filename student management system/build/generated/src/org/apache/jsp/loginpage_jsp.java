package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import org.json.JSONObject;
import java.nio.charset.Charset;
import java.io.InputStreamReader;
import java.io.InputStreamReader;
import java.io.BufferedReader;
import java.net.URL;
import java.io.InputStream;

public final class loginpage_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(3);
    _jspx_dependants.add("/disp.jsp");
    _jspx_dependants.add("/commonheader.jsp");
    _jspx_dependants.add("/databaseinfo.jsp");
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

      out.write("<link href=\"css/bootstrap.css\" rel=\"stylesheet\" type=\"text/css\" media=\"all\" />\n");
      out.write("<link href=\"css/style.css\" rel=\"stylesheet\" type=\"text/css\" media=\"all\" />\n");
      out.write("<link href=\"css/font-awesome.css\" rel=\"stylesheet\"> \n");
      out.write("<script src=\"js/jquery-1.11.1.min.js\"></script>\n");
      out.write("<link href='https://fonts.googleapis.com/css?family=Raleway:400,100,100italic,200,200italic,300,400italic,500,500italic,600,600italic,700,700italic,800,800italic,900,900italic' rel='stylesheet' type='text/css'>\n");
      out.write("<link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>\n");
      out.write('\n');
      out.write("<div class=\"agileits_header\">\n");
      out.write("\t\t<div class=\"container\">\n");
      out.write("\t\t\t<div class=\"w3l_offers\">\n");
      out.write("\t\t\t\t<!--<p>SALE UP TO 70% OFF. USE CODE \"SALE70%\" . <a href=\"products.html\">SHOP NOW</a></p>-->\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t\t<div class=\"agile-login\">\n");
      out.write("\t\t\t\t<ul>\n");
      out.write("<!--\t\t\t\t\t<li><a href=\"registerpage.jsp\"> Create Account as Restaurant </a></li>-->\n");
      out.write("\t\t\t\t\t<li><a href=\"registerpage.jsp\">Register Here</a></li>\n");
      out.write("                                        <li><a href=\"loginpage.jsp\">Login</a></li>\n");
      out.write("\t\t\t\t\t<li><a href=\"contact.html\">Help</a></li>\n");
      out.write("\t\t\t\t\t\n");
      out.write("\t\t\t\t</ul>\n");
      out.write("\t\t\t</div>\n");
      out.write("<!--\t\t\t<div class=\"product_list_header\">  \n");
      out.write("\t\t\t\t\t<form action=\"#\" method=\"post\" class=\"last\"> \n");
      out.write("\t\t\t\t\t\t<input type=\"hidden\" name=\"cmd\" value=\"_cart\">\n");
      out.write("\t\t\t\t\t\t<input type=\"hidden\" name=\"display\" value=\"1\">\n");
      out.write("\t\t\t\t\t\t<button class=\"w3view-cart\" type=\"submit\" name=\"submit\" value=\"\"><i class=\"fa fa-cart-arrow-down\" aria-hidden=\"true\"></i></button>\n");
      out.write("\t\t\t\t\t</form>  \n");
      out.write("\t\t\t</div>-->\n");
      out.write("\t\t\t<div class=\"clearfix\"> </div>\n");
      out.write("\t\t</div>\n");
      out.write("\t</div>\n");
      out.write("\n");
      out.write("\t<div class=\"logo_products\">\n");
      out.write("\t\t<div class=\"container\">\n");
      out.write("\t\t<div class=\"w3ls_logo_products_left1\">\n");
      out.write("\t\t\t\t\n");
      out.write("\t\t\t\t\t<img src=\"logo/hunger.png\"/>\n");
      out.write("                                       \n");
      out.write("\t\t\t\t\n");
      out.write("\t\t\t</div>\n");
      out.write("<!--\t\t\t<div class=\"w3ls_logo_products_left\">\n");
      out.write("\t\t\t\t<h1><a href=\"index.html\">super Market</a></h1>\n");
      out.write("\t\t\t</div>-->\n");
      out.write("<!--\t\t<div class=\"w3l_search\">\n");
      out.write("\t\t\t<form action=\"#\" method=\"post\">\n");
      out.write("\t\t\t\t<input type=\"search\" name=\"Search\" placeholder=\"Search for a Product...\" required=\"\">\n");
      out.write("\t\t\t\t<button type=\"submit\" class=\"btn btn-default search\" aria-label=\"Left Align\">\n");
      out.write("\t\t\t\t\t<i class=\"fa fa-search\" aria-hidden=\"true\"> </i>\n");
      out.write("\t\t\t\t</button>\n");
      out.write("\t\t\t\t<div class=\"clearfix\"></div>\n");
      out.write("\t\t\t</form>\n");
      out.write("\t\t</div>-->\n");
      out.write("\t\t\t\n");
      out.write("\t\t\t<div class=\"clearfix\"> </div>\n");
      out.write("\t\t</div>\n");
      out.write("\t</div>\n");
      out.write("<!-- //header -->\n");
      out.write("<!-- navigation -->\n");
      out.write("\t<div class=\"navigation-agileits\"><!--\n");
      out.write("-->\t\t<div class=\"container\"><!--\n");
      out.write("-->\t\t\t<nav class=\"navbar navbar-default\"><!--\n");
      out.write("\t\t\t\t\t\t\t Brand and toggle get grouped for better mobile display \n");
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
      out.write("\t\t\t\t\t\t\t\t\t<li class=\"active\"><a href=\"index.html\" class=\"act\">Home</a></li>\t\n");
      out.write("\t\t\t\t\t\t\t\t\t Mega Menu \n");
      out.write("\t\t\t\t\t\t\t\t\t<li class=\"dropdown\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<a href=\"#\" class=\"dropdown-toggle\" data-toggle=\"dropdown\">Groceries<b class=\"caret\"></b></a>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<ul class=\"dropdown-menu multi-column columns-3\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<div class=\"row\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"multi-gd-img\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t<ul class=\"multi-column-dropdown\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t<h6>All Groceries</h6>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t<li><a href=\"groceries.html\">Dals & Pulses</a></li>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t<li><a href=\"groceries.html\">Almonds</a></li>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t<li><a href=\"groceries.html\">Cashews</a></li>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t<li><a href=\"groceries.html\">Dry Fruit</a></li>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t<li><a href=\"groceries.html\"> Mukhwas </a></li>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t<li><a href=\"groceries.html\">Rice & Rice Products</a></li>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t</ul>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t</div>\t\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</ul>\n");
      out.write("\t\t\t\t\t\t\t\t\t</li>\n");
      out.write("\t\t\t\t\t\t\t\t\t<li class=\"dropdown\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<a href=\"#\" class=\"dropdown-toggle\" data-toggle=\"dropdown\">Household<b class=\"caret\"></b></a>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<ul class=\"dropdown-menu multi-column columns-3\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<div class=\"row\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"multi-gd-img\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t<ul class=\"multi-column-dropdown\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t<h6>All Household</h6>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t<li><a href=\"household.html\">Cookware</a></li>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t<li><a href=\"household.html\">Dust Pans</a></li>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t<li><a href=\"household.html\">Scrubbers</a></li>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t<li><a href=\"household.html\">Dust Cloth</a></li>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t<li><a href=\"household.html\"> Mops </a></li>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t<li><a href=\"household.html\">Kitchenware</a></li>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t</ul>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</ul>\n");
      out.write("\t\t\t\t\t\t\t\t\t</li>\n");
      out.write("\t\t\t\t\t\t\t\t\t<li class=\"dropdown\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<a href=\"#\" class=\"dropdown-toggle\" data-toggle=\"dropdown\">Personal Care<b class=\"caret\"></b></a>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<ul class=\"dropdown-menu multi-column columns-3\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<div class=\"row\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"multi-gd-img\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t<ul class=\"multi-column-dropdown\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t<h6>Baby Care</h6>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t<li><a href=\"personalcare.html\">Baby Soap</a></li>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t<li><a href=\"personalcare.html\">Baby Care Accessories</a></li>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t<li><a href=\"personalcare.html\">Baby Oil & Shampoos</a></li>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t<li><a href=\"personalcare.html\">Baby Creams & Lotion</a></li>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t<li><a href=\"personalcare.html\"> Baby Powder</a></li>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t<li><a href=\"personalcare.html\">Diapers & Wipes</a></li>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t</ul>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</ul>\n");
      out.write("\t\t\t\t\t\t\t\t\t</li>\n");
      out.write("\t\t\t\t\t\t\t\t\t<li class=\"dropdown\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<a href=\"#\" class=\"dropdown-toggle\" data-toggle=\"dropdown\">Packaged Foods<b class=\"caret\"></b></a>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<ul class=\"dropdown-menu multi-column columns-3\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<div class=\"row\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"multi-gd-img\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t<ul class=\"multi-column-dropdown\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t<h6>All Accessories</h6>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t<li><a href=\"packagedfoods.html\">Baby Food</a></li>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t<li><a href=\"packagedfoods.html\">Dessert Items</a></li>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t<li><a href=\"packagedfoods.html\">Biscuits</a></li>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t<li><a href=\"packagedfoods.html\">Breakfast Cereals</a></li>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t<li><a href=\"packagedfoods.html\"> Canned Food </a></li>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t<li><a href=\"packagedfoods.html\">Chocolates & Sweets</a></li>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t</ul>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</ul>\n");
      out.write("\t\t\t\t\t\t\t\t\t</li>\n");
      out.write("\t\t\t\t\t\t\t\t\t<li class=\"dropdown\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<a href=\"#\" class=\"dropdown-toggle\" data-toggle=\"dropdown\">Beverages<b class=\"caret\"></b></a>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<ul class=\"dropdown-menu multi-column columns-3\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<div class=\"row\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t<div class=\"multi-gd-img\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t<ul class=\"multi-column-dropdown\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t<h6>Tea & Coeffe</h6>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t<li><a href=\"beverages.html\">Green Tea</a></li>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t<li><a href=\"beverages.html\">Ground Coffee</a></li>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t<li><a href=\"beverages.html\">Herbal Tea</a></li>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t<li><a href=\"beverages.html\">Instant Coffee</a></li>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t<li><a href=\"beverages.html\"> Tea </a></li>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t\t<li><a href=\"beverages.html\">Tea Bags</a></li>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t</ul>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</ul>\n");
      out.write("\t\t\t\t\t\t\t\t\t</li>\n");
      out.write("\t\t\t\t\t\t\t\t\t<li><a href=\"gourmet.html\">Gourmet</a></li>\n");
      out.write("\t\t\t\t\t\t\t\t\t<li><a href=\"offers.html\">Offers</a></li>\n");
      out.write("\t\t\t\t\t\t\t\t\t<li><a href=\"contact.html\">Contact</a></li>\n");
      out.write("\t\t\t\t\t\t\t\t</ul>\n");
      out.write("\t\t\t\t\t\t\t</div>\n");
      out.write("-->\t\t\t\t\t\t\t</nav><!--\n");
      out.write("-->\t\t\t</div><!--\n");
      out.write("-->\t\t</div>");
      out.write("\n");
      out.write("\n");
      out.write("\n");

String PATH="jdbc:mysql://localhost/";
String PLACE="hungerfree";
String USERNAME="root";
String PASSWORD="";

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>LOGIN PAGE</title>\n");
      out.write("         <script src='https://www.google.com/recaptcha/api.js'></script>\n");
      out.write("     </head>\n");
      out.write("        ");

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



      out.write("\n");
      out.write("    \n");
      out.write("    <body>\n");
      out.write("\t<div class=\"breadcrumbs\">\n");
      out.write("\t\t<div class=\"container\">\n");
      out.write("\t\t\t<ol class=\"breadcrumb breadcrumb1 animated wow slideInLeft\" data-wow-delay=\".5s\">\n");
      out.write("\t\t\t\t<li><a href=\"homepage.jsp\"><span class=\"glyphicon glyphicon-home\" aria-hidden=\"true\"></span>Home</a></li>\n");
      out.write("\t\t\t\t<li class=\"active\">Login Page</li>\n");
      out.write("\t\t\t</ol>\n");
      out.write("\t\t</div>\n");
      out.write("\t</div>\n");
      out.write("\t<div class=\"login\">\n");
      out.write("\t\t<div class=\"container\">\n");
      out.write("                    <div id=\"showfirst\">\n");
      out.write("\t\t\t<h2>Login Form</h2>\n");
      out.write("\t\t\n");
      out.write("\t\t\t<div class=\"login-form-grids animated wow slideInUp\" data-wow-delay=\".5s\">\n");
      out.write("\t\t\t\t<form>\n");
      out.write("\t\t\t\t\t<input type=\"email\" name=\"email\" id=\"emailid\" placeholder=\"Email Address\" required=\" \" >\n");
      out.write("                                               \n");
      out.write("                                        <input type=\"password\" name=\"pass\" placeholder=\"Password\" required=\" \" ><br>\n");
      out.write("                                        <div class=\"g-recaptcha\" data-sitekey=\"6LdT_mgUAAAAAPJ8bHn0C2OAbAkKerJ-ONZYNB9T\"></div>\n");
      out.write("\t\t\t\t\t<br>\n");
      out.write("                                        <input type=\"checkbox\" name=\"checkbox1\"><i> </i><font color='black' size='4'><b>Keep me signed in</b></font>\n");
      out.write("\t\t\t\t\t\t\n");
      out.write("                                           \n");
      out.write("                                        <div class=\"forgot\" id=\"forgot\">\n");
      out.write("\t\t\t\t\t\t<a href=\"#\">Forgot Password?</a>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("                                       \n");
      out.write("\t\t\t\t\t<input type=\"submit\" value=\"Login\" name=\"submit\" id=\"\">\n");
      out.write("\t\t\t\t</form>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t\t</div>\n");
      out.write("                        \t</div>\n");
      out.write("</div>\n");
      out.write(" ");

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
    
      out.write("       \n");

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
 
      out.write("\n");
      out.write("<!-- //login -->\n");
      out.write("\n");
      out.write("    <div class=\"login\">\n");
      out.write("\t\t<div class=\"container\">\n");
      out.write("                    \n");
      out.write("    <div id=\"showsecond\">\n");
      out.write("            <h2>Recover Password</h2>\n");
      out.write("                <div class=\"login-form-grids animated wow slideInUp\" data-wow-delay=\".5s\">\n");
      out.write("                                <form  method=\"post\">\n");
      out.write("                                    <input type=\"text\" name=\"emailg\" id=\"email\" placeholder=\"Enter your emailid\"><br>\n");
      out.write("                                    <input type=\"radio\" name=\"recovery\" id=\"quesans\" value=\"quesans\">I want to recover password by answering security question<br>\n");
      out.write("                                </form>\n");
      out.write("                   \n");
      out.write("                    <input type=\"submit\" value=\"Recover Password\" name=\"recoverpassword\" id=\"recoverpassword\">\n");
      out.write("                   \n");
      out.write("                </div>\n");
      out.write("    </div>\n");
      out.write("                   \n");
      out.write("                    <div id=\"thirdone\">\n");
      out.write("                         <h2>Recover Password</h2>\n");
      out.write("                        <div class=\"login-form-grids animated wow slideInUp\" data-wow-delay=\".5s\">\n");
      out.write("                        <form  method=\"post\">\n");
      out.write("                            <!--session.setAttribute(\"useremailid\",email);-->\n");
      out.write("                                <select id=\"securityquestion\" class=\"form-control\" name=\"securityquestion\">\n");
      out.write("                                    <option>Choose Security Question</option>\n");
      out.write("                                    <option>Who is your favourite singer ?</option>\n");
      out.write("                                    <option>What is your favourite place ?</option>\n");
      out.write("                                    <option>What is your best friend's name ?</option>\n");
      out.write("                                    <option>What is the place you wish to visit</option>\n");
      out.write("                                </select><br>\n");
      out.write("                                \n");
      out.write("                                <input type=\"text\" id=\"secanswer\" name=\"securityanswer\" placeholder=\"Your security answer\" required=\" \" ><br>\n");
      out.write("                                            \n");
      out.write("                            </form>\n");
      out.write("                             <input type=\"submit\" id=\"submit2\" name=\"submit2\" value=\"Submit\">\n");
      out.write("                        </div>\n");
      out.write("                        \n");
      out.write("                    </div>\n");
      out.write("                    <div id=\"fourthone\">\n");
      out.write("                        <div class=\"login-form-grids animated wow slideInUp\" data-wow-delay=\".5s\">\n");
      out.write("                        Your security answer  is incorrect\n");
      out.write("                        <input type=\"submit\" id=\"submit3\" name=\"submit3\" value=\"Try Again\">\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("    </div>\n");
      out.write("      ");

                        
                        if(request.getParameter("recoverpassword")!=null)
                        {
                           String em=request.getParameter("emailg");
                            out.print(em);
                        }
                    
      out.write("\n");
      out.write("    <script type=\"text/javascript\">\n");
      out.write("        $(document).ready(function(){\n");
      out.write("                $(\"#showfirst\").show();//email,password,keep me ,recaptcha,forgot\n");
      out.write("                $(\"#showsecond\").hide();//email,recoverpassword button\n");
      out.write("                $(\"#thirdone\").hide();\n");
      out.write("                $(\"#fourthone\").hide();\n");
      out.write("                $(\"#forgot\").click(function(e){//forgot password link click\n");
      out.write("                    e.preventDefault()\n");
      out.write("                    $(\"#showfirst\").hide();\n");
      out.write("                    $(\"#showsecond\").show();//get email from user\n");
      out.write("                    $(\"#thirdone\").hide();\n");
      out.write("                $(\"#fourthone\").hide();\n");
      out.write("                \n");
      out.write("                 })\n");
      out.write("                 $(\"#recoverpassword\").click(function(){\n");
      out.write("                 var email=$(\"#email\").val()\n");
      out.write("                   $.ajax({\n");
      out.write("                        dataType:\"json\",\n");
      out.write("                            type:\"POST\",\n");
      out.write("                            url:\"recoverpassword.jsp\",\n");
      out.write("                            data:{email:email}\n");
      out.write("                   })\n");
      out.write("//                        \n");
      out.write("                                .done(function(msg1){\n");
      out.write("                             var res=$.trim(msg1);\n");
      out.write("                             if(res==\"wrong\")\n");
      out.write("                             {\n");
      out.write("                                 $(\"#thirdone\").hide();\n");
      out.write("                                 alert(\"Invalid email id\");\n");
      out.write("                             }\n");
      out.write("                             else\n");
      out.write("                             {\n");
      out.write("                                 alert(\"I am coming here\");\n");
      out.write("                                 var ques=$.trim(msg1.squestion)\n");
      out.write("                                \n");
      out.write("                                 $(\"#showsecond\").hide()\n");
      out.write("                                 $(\"#fourthone\").hide();\n");
      out.write("                                 $(\"#thirdone\").show()\n");
      out.write("                                 $(\"#securityquestion\").val(ques)\n");
      out.write("                                 $(\"#submit2\").click(function(){\n");
      out.write("                                     var secans=$(\"#secanswer\").val();\n");
      out.write("                                     $.ajax({\n");
      out.write("                                         method:\"POST\",\n");
      out.write("                                         url:\"recoverpassword.jsp\",\n");
      out.write("                                         data:{securityanswer:secans}\n");
      out.write("\n");
      out.write("                                     })\n");
      out.write("                                             .done(function(msg2){\n");
      out.write("                                                 var ans=$.trim(msg2)\n");
      out.write("                                                 if(ans==\"unsuccessfull\")\n");
      out.write("                                                 {\n");
      out.write("                                                     //security answer is incorrect\n");
      out.write("                                                     $(\"#thirdone\").hide()\n");
      out.write("                                                     $(\"#fourthone\").show()\n");
      out.write("                                                     $(\"#submit3\").click(function(){\n");
      out.write("                                                        $(\"#thirdone\").show()\n");
      out.write("                                                        $(\"#fourthone\").hide()\n");
      out.write("                                                     })\n");
      out.write("                                                 }\n");
      out.write("                                                 else\n");
      out.write("                                                 {\n");
      out.write("                                                     //correct\n");
      out.write("                                                     window.location=\"changepassword.jsp\";\n");
      out.write("                                                 }\n");
      out.write("                                             })\n");
      out.write("                                 })\n");
      out.write("                             }\n");
      out.write("                         })\n");
      out.write("//                   var selValue = $('input[name=recovery]:checked').val();\n");
      out.write("//                   if(selValue==\"quesans\")\n");
      out.write("//                   {\n");
      out.write("//                     \n");
      out.write("//                   }\n");
      out.write("//                    else if(selValue==\"otp\")\n");
      out.write("//                    {\n");
      out.write("//                       $.ajax({\n");
      out.write("//                           method:\"POST\",\n");
      out.write("//                           url:\"ajaxpage.jsp\",\n");
      out.write("//                           data:{selectedvalue:selValue,emailid:email}\n");
      out.write("//                       })\n");
      out.write("//                               .done(function(msg3){\n");
      out.write("//                                   if($.trim(msg3)==\"wrong\")\n");
      out.write("//                                    {\n");
      out.write("//                                        alert(\"Your emailid is invalid\")\n");
      out.write("//                                        $(\"showsecond\").show();\n");
      out.write("//                                        \n");
      out.write("//                                    }\n");
      out.write("//                                    else\n");
      out.write("//                                    {\n");
      out.write("//                                      window.location=\"changepassword.jsp\";   \n");
      out.write("//                                    }\n");
      out.write("//                               })\n");
      out.write("//                    }\n");
      out.write("//          \n");
      out.write("            \n");
      out.write("              \n");
      out.write("          })\n");
      out.write("           \n");
      out.write("        });\n");
      out.write("        </script>\n");
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
