package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.Properties;
import java.sql.*;

public final class registerpage_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <script type=\"application/x-javascript\"> addEventListener(\"load\", function() { setTimeout(hideURLbar, 0); }, false);\n");
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
      out.write("<link href='https://fonts.googleapis.com/css?family=Raleway:400,100,100italic,200,200italic,300,400italic,500,500italic,600,600italic,700,700italic,800,800italic,900,900italic' rel='stylesheet' type='text/css'>\n");
      out.write("<link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>\n");
      out.write("<!-- start-smoth-scrolling -->\n");
      out.write("<script type=\"text/javascript\" src=\"js/move-top.js\"></script>\n");
      out.write("<script type=\"text/javascript\" src=\"js/easing.js\"></script>\n");
      out.write("        <!-- main slider-banner -->\n");
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
      out.write("</script>\n");
      out.write("\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("        \n");
      out.write("       ");
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
      out.write("\t\t\t\t\t<img src=\"images/logo.png\"/>\n");
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
      out.write("        ");

String PATH="jdbc:mysql://localhost/";
String PLACE="hungerfree";
String USERNAME="root";
String PASSWORD="";

      out.write("\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("    \n");
      out.write("    <!-- breadcrumbs -->\n");
      out.write("\t<div class=\"breadcrumbs\">\n");
      out.write("\t\t<div class=\"container\">\n");
      out.write("\t\t\t<ol class=\"breadcrumb breadcrumb1 animated wow slideInLeft\" data-wow-delay=\".5s\">\n");
      out.write("\t\t\t\t<li><a href=\"index.jsp\"><span class=\"glyphicon glyphicon-home\" aria-hidden=\"true\"></span>Home</a></li>\n");
      out.write("\t\t\t\t<li class=\"active\">Register Page</li>\n");
      out.write("\t\t\t</ol>\n");
      out.write("\t\t</div>\n");
      out.write("\t</div>\n");
      out.write("<!-- //breadcrumbs -->\n");
      out.write("<!-- register -->\n");
      out.write("\n");
      out.write("\t<div class=\"register\">\n");
      out.write("\t\t<div class=\"container\">\n");
      out.write("\t\t\t<h2>Register Here</h2>\n");
      out.write("\t\t\t<div class=\"login-form-grids\">\n");
      out.write("                            <form  method=\"post\">\n");
      out.write("                            <div id=\"firstone\">\n");
      out.write("\t\t\t\t<h5>profile information</h5>\n");
      out.write("                                        <select name=\"catname\" class=\"form-control\" id=\"aa\">\n");
      out.write("                                            <option>Choose Usertype</option>\n");
      out.write("                                            <option value=\"Restaurant\">Register as Restaurant</option>\n");
      out.write("                                            <option value=\"Organisation\">Register as Organisation</option>\n");
      out.write("                                        </select><br>\n");
      out.write("                                <input type=\"text\" name=\"rname\" placeholder=\"Your Name ...\" required=\" \" id=\"bb\"><br>\n");
      out.write("                                <input type=\"text\" name=\"address\" placeholder=\"Address ...\" required=\" \" id=\"cc\"><br>\n");
      out.write("                              \n");
      out.write("                 <select name=\"state\" class=\"form-control\" id=\"dd\">\n");
      out.write("                                            <option>Choose State</option>\n");

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
   
      out.write("\n");
      out.write("                                               </select><br>\n");
      out.write("  <input type=\"text\" name=\"cityname\" placeholder=\"City...\" required=\" \"id=\"ee\"><br>\n");
      out.write("  <input type=\"tel\" name=\"phone\" placeholder=\"Phone number...\" required=\" \" maxlength=\"10\" id=\"ee\"  pattern=\"^[0-9]+$\">\n");
      out.write("\t\t\t\t\n");
      out.write("\t\t\t\t\n");
      out.write("\t\t\t\t<h6>Login information</h6>\n");
      out.write("\t\t\t\t\t\n");
      out.write("\t\t\t\t\t<input type=\"email\" name=\"email\" placeholder=\"Email Address\" required=\" \" id=\"ff\">\n");
      out.write("\t\t\t\t\t<input type=\"password\" name=\"pass1\" placeholder=\"Password\" required=\" \" id=\"gg\">\n");
      out.write("                                        <input type=\"password\" name=\"pass2\" placeholder=\"Password Confirmation\" required=\" \" id=\"hh\"><br>\n");
      out.write("                             \n");
      out.write("                                <input type=\"submit\" class=\"button\" value=\"Register\" name=\"submit1\" id=\"submit1\" ><br>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("                            \n");
      out.write("                                        <div id=\"secondone\">\n");
      out.write("                                            \n");
      out.write("                                            <select id=\"question\" class=\"form-control\" name=\"securityquestion\" id=\"ii\">\n");
      out.write("                                                <option>Choose Security Question</option>\n");
      out.write("                                                <option>Who is your favourite singer ?</option>\n");
      out.write("                                                <option>What is your favourite place ?</option>\n");
      out.write("                                                <option>What is your best friend's name ?</option>\n");
      out.write("                                                <option>What is the place you wish to visit</option>\n");
      out.write("                                            </select><br>\n");
      out.write("                                            <input type=\"text\" name=\"securityanswer\" placeholder=\"Your security answer\" required=\" \" id=\"jj\"><br>\n");
      out.write("                                            \n");
      out.write("                                           \n");
      out.write("                                            <input type=\"submit\" value=\"Click to finish registration\" name=\"submit2\" id=\"submit2\" class=\"button\">\n");
      out.write("\t\t\t\t\n");
      out.write("                                        </div>\n");
      out.write("                                <div id=\"thirdone\">\n");
      out.write("                                    <h4>Registered successfully</h4>\n");
      out.write("                                </div>\n");
      out.write("\t\t\t\t\t\n");
      out.write("                                </form>      \n");
      out.write("\t\t\t</div>\n");

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




                   
      out.write("\n");
      out.write("\t\t\t \n");
      out.write("\t\t</div>\n");
      out.write("\t</div><!--\n");
      out.write("\n");
      out.write("                        \n");
      out.write("                          \n");
      out.write("                        \n");
      out.write("<!-- //register -->\n");
      out.write("<script type=\"text/javascript\">\n");
      out.write("    $(document).ready(function(){\n");
      out.write("        \n");
      out.write("        $(\"#secondone\").hide();\n");
      out.write("        $(\"#thirdone\").hide();\n");
      out.write("       $(\"#submit1\").click(function(){\n");
      out.write("           var aa=$(\"#aa\").val();\n");
      out.write("           var bb=$(\"#bb\").val();\n");
      out.write("           var cc=$(\"#cc\").val();\n");
      out.write("           var dd=$(\"#dd\").val();\n");
      out.write("           var ee=$(\"#ee\").val();\n");
      out.write("           var ff=$(\"#ff\").val();\n");
      out.write("            var ff=$(\"#gg\").val();\n");
      out.write("             var ff=$(\"#hh\").val();\n");
      out.write("           if((aa!=\"\")&&(bb!=\"\")&&(cc!=\"\")&&(dd!=\"\")&&(ee!=\"\")&&(ff!=\"\")&&(gg!=\"\")&&(hh!=\"\"))\n");
      out.write("           {\n");
      out.write("               $(\"#firstone\").hide();\n");
      out.write("               $(\"#thirdone\").hide();\n");
      out.write("               $(\"#secondone\").show();\n");
      out.write("               $(\"#submit2\").click(function(){\n");
      out.write("//                   $(\"#thirdone\").show();\n");
      out.write("                   $(\"#firstone\").hide();\n");
      out.write("                   $(\"#secondone\").hide();\n");
      out.write("               })\n");
      out.write("//               $(\"#submit2\").click(function(){\n");
      out.write("//                   if(\"#question\").change(function(){\n");
      out.write("//                       var x=$(\"#question option:selected\").index();\n");
      out.write("//                       var sa=$(\"#securityanswer\").val();\n");
      out.write("//                       if(x==0||sa==\"\")\n");
      out.write("//                       {\n");
      out.write("//                           $(\"#secondone\").show();\n");
      out.write("//                           $(\"#firstone\").hide();\n");
      out.write("//                           $(\"#thirdone\").hide();\n");
      out.write("//                       }\n");
      out.write("//                       else\n");
      out.write("//                       {\n");
      out.write("//                           $(\"#secondone\").hide();\n");
      out.write("//                           $(\"#firstone\").hide();\n");
      out.write("//                           $(\"#thirdone\").show();\n");
      out.write("//                       }\n");
      out.write("//                   })\n");
      out.write("//               })\n");
      out.write("               \n");
      out.write("               \n");
      out.write("           }\n");
      out.write("           else\n");
      out.write("           {\n");
      out.write("               $(\"#firstone\").show();\n");
      out.write("               $(\"#secondone\").hide();\n");
      out.write("               $(\"#thirdone\").hide();\n");
      out.write("           }\n");
      out.write("         }) \n");
      out.write("//           $(\"#submit2\").click(function(){\n");
      out.write("//               $(\"#firstone\").hide();\n");
      out.write("//               $(\"#thirdone\").hide();\n");
      out.write("//               if(\"#question\").change(function(){\n");
      out.write("//                        var ques=$(this).val()\n");
      out.write("//                        var x=$(\"#question option:selected\").index();\n");
      out.write("//                        var sa=$(\"#securityanswer\").val(); \n");
      out.write("//                        if(x!=0&&(sa!=\"\"))\n");
      out.write("//                        {\n");
      out.write("//                            $(\"#secondone\").hide();\n");
      out.write("//                            $(\"#firstone\").hide();\n");
      out.write("//                            $(\"#thirdone\").show();\n");
      out.write("//                            \n");
      out.write("//                        }\n");
      out.write("//                        else\n");
      out.write("//                        {\n");
      out.write("//                            $(\"secondone\").show();\n");
      out.write("//                        }\n");
      out.write("//                 })\n");
      out.write("//              \n");
      out.write("//           })\n");
      out.write("           \n");
      out.write("       \n");
      out.write("    });\n");
      out.write("    </script>\n");
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
